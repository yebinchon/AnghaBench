
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int ERANGE ;
 int errno ;
 int * strchr (char const* const,unsigned char) ;

int
sodium_hex2bin(unsigned char *const bin, const size_t bin_maxlen,
               const char *const hex, const size_t hex_len,
               const char *const ignore, size_t *const bin_len,
               const char **const hex_end)
{
    size_t bin_pos = (size_t) 0U;
    size_t hex_pos = (size_t) 0U;
    int ret = 0;
    unsigned char c;
    unsigned char c_acc = 0U;
    unsigned char c_alpha0, c_alpha;
    unsigned char c_num0, c_num;
    unsigned char c_val;
    unsigned char state = 0U;

    while (hex_pos < hex_len) {
        c = (unsigned char) hex[hex_pos];
        c_num = c ^ 48U;
        c_num0 = (c_num - 10U) >> 8;
        c_alpha = (c & ~32U) - 55U;
        c_alpha0 = ((c_alpha - 10U) ^ (c_alpha - 16U)) >> 8;
        if ((c_num0 | c_alpha0) == 0U) {
            if (ignore != ((void*)0) && state == 0U && strchr(ignore, c) != ((void*)0)) {
                hex_pos++;
                continue;
            }
            break;
        }
        c_val = (c_num0 & c_num) | (c_alpha0 & c_alpha);
        if (bin_pos >= bin_maxlen) {
            ret = -1;
            errno = ERANGE;
            break;
        }
        if (state == 0U) {
            c_acc = c_val * 16U;
        } else {
            bin[bin_pos++] = c_acc | c_val;
        }
        state = ~state;
        hex_pos++;
    }
    if (state != 0U) {
        hex_pos--;
        errno = EINVAL;
        ret = -1;
    }
    if (ret != 0) {
        bin_pos = (size_t) 0U;
    }
    if (hex_end != ((void*)0)) {
        *hex_end = &hex[hex_pos];
    } else if (hex_pos != hex_len) {
        errno = EINVAL;
        ret = -1;
    }
    if (bin_len != ((void*)0)) {
        *bin_len = bin_pos;
    }
    return ret;
}
