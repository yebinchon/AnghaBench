
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int verify_utf8_sequence (unsigned char const*,int*) ;

__attribute__((used)) static int is_valid_utf8(const char *string, size_t string_len) {
    int len = 0;
    const char *string_end = string + string_len;
    while (string < string_end) {
        if (!verify_utf8_sequence((const unsigned char*)string, &len)) {
            return 0;
        }
        string += len;
    }
    return 1;
}
