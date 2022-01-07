
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phr_header {char const* name; int name_len; int value_len; int value; } ;
typedef int ranges1 ;


 int CHECK_EOF () ;
 int EXPECT_CHAR (char) ;
 char* findchar_fast (char const*,char const*,char const*,int,int*) ;
 char* get_token_to_eol (char const*,char const*,int *,int *,int*) ;
 int * token_char_map ;

__attribute__((used)) static const char *parse_headers(const char *buf, const char *buf_end, struct phr_header *headers, size_t *num_headers,
                                 size_t max_headers, int *ret)
{
    for (;; ++*num_headers) {
        CHECK_EOF();
        if (*buf == '\015') {
            ++buf;
            EXPECT_CHAR('\012');
            break;
        } else if (*buf == '\012') {
            ++buf;
            break;
        }
        if (*num_headers == max_headers) {
            *ret = -1;
            return ((void*)0);
        }
        if (!(*num_headers != 0 && (*buf == ' ' || *buf == '\t'))) {


            headers[*num_headers].name = buf;
            static const char ranges1[] __attribute__((aligned(16))) = "\x00 "
                                                                       "\"\""
                                                                       "()"
                                                                       ",,"
                                                                       "//"
                                                                       ":@"
                                                                       "[]"
                                                                       "{\377";
            int found;
            buf = findchar_fast(buf, buf_end, ranges1, sizeof(ranges1) - 1, &found);
            if (!found) {
                CHECK_EOF();
            }
            while (1) {
                if (*buf == ':') {
                    break;
                } else if (!token_char_map[(unsigned char)*buf]) {
                    *ret = -1;
                    return ((void*)0);
                }
                ++buf;
                CHECK_EOF();
            }
            if ((headers[*num_headers].name_len = buf - headers[*num_headers].name) == 0) {
                *ret = -1;
                return ((void*)0);
            }
            ++buf;
            for (;; ++buf) {
                CHECK_EOF();
                if (!(*buf == ' ' || *buf == '\t')) {
                    break;
                }
            }
        } else {
            headers[*num_headers].name = ((void*)0);
            headers[*num_headers].name_len = 0;
        }
        if ((buf = get_token_to_eol(buf, buf_end, &headers[*num_headers].value, &headers[*num_headers].value_len, ret)) == ((void*)0)) {
            return ((void*)0);
        }
    }
    return buf;
}
