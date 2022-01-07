
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phr_header {int dummy; } ;


 int ADVANCE_TOKEN (char const*,size_t) ;
 int CHECK_EOF () ;
 int EXPECT_CHAR (char) ;
 char const* parse_headers (char const*,char const*,struct phr_header*,size_t*,size_t,int*) ;
 char* parse_http_version (char const*,char const*,int*,int*) ;

__attribute__((used)) static const char *parse_request(const char *buf, const char *buf_end, const char **method, size_t *method_len, const char **path,
                                 size_t *path_len, int *minor_version, struct phr_header *headers, size_t *num_headers,
                                 size_t max_headers, int *ret)
{

    CHECK_EOF();
    if (*buf == '\015') {
        ++buf;
        EXPECT_CHAR('\012');
    } else if (*buf == '\012') {
        ++buf;
    }


    ADVANCE_TOKEN(*method, *method_len);
    ++buf;
    ADVANCE_TOKEN(*path, *path_len);
    ++buf;
    if (*method_len == 0 || *path_len == 0) {
        *ret = -1;
        return ((void*)0);
    }
    if ((buf = parse_http_version(buf, buf_end, minor_version, ret)) == ((void*)0)) {
        return ((void*)0);
    }
    if (*buf == '\015') {
        ++buf;
        EXPECT_CHAR('\012');
    } else if (*buf == '\012') {
        ++buf;
    } else {
        *ret = -1;
        return ((void*)0);
    }

    return parse_headers(buf, buf_end, headers, num_headers, max_headers, ret);
}
