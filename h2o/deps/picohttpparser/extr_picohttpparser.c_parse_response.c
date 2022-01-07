
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phr_header {int dummy; } ;


 int PARSE_INT_3 (int*) ;
 char* get_token_to_eol (char const*,char const*,char const**,size_t*,int*) ;
 char const* parse_headers (char const*,char const*,struct phr_header*,size_t*,size_t,int*) ;
 char* parse_http_version (char const*,char const*,int*,int*) ;

__attribute__((used)) static const char *parse_response(const char *buf, const char *buf_end, int *minor_version, int *status, const char **msg,
                                  size_t *msg_len, struct phr_header *headers, size_t *num_headers, size_t max_headers, int *ret)
{

    if ((buf = parse_http_version(buf, buf_end, minor_version, ret)) == ((void*)0)) {
        return ((void*)0);
    }

    if (*buf++ != ' ') {
        *ret = -1;
        return ((void*)0);
    }

    if (buf_end - buf < 4) {
        *ret = -2;
        return ((void*)0);
    }
    PARSE_INT_3(status);


    if (*buf++ != ' ') {
        *ret = -1;
        return ((void*)0);
    }

    if ((buf = get_token_to_eol(buf, buf_end, msg, msg_len, ret)) == ((void*)0)) {
        return ((void*)0);
    }

    return parse_headers(buf, buf_end, headers, num_headers, max_headers, ret);
}
