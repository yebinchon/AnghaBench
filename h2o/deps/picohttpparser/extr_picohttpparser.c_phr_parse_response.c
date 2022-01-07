
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phr_header {int dummy; } ;


 int * is_complete (char const*,char const*,size_t,int*) ;
 char* parse_response (char const*,char const*,int*,int*,char const**,size_t*,struct phr_header*,size_t*,size_t,int*) ;

int phr_parse_response(const char *buf_start, size_t len, int *minor_version, int *status, const char **msg, size_t *msg_len,
                       struct phr_header *headers, size_t *num_headers, size_t last_len)
{
    const char *buf = buf_start, *buf_end = buf + len;
    size_t max_headers = *num_headers;
    int r;

    *minor_version = -1;
    *status = 0;
    *msg = ((void*)0);
    *msg_len = 0;
    *num_headers = 0;



    if (last_len != 0 && is_complete(buf, buf_end, last_len, &r) == ((void*)0)) {
        return r;
    }

    if ((buf = parse_response(buf, buf_end, minor_version, status, msg, msg_len, headers, num_headers, max_headers, &r)) == ((void*)0)) {
        return r;
    }

    return (int)(buf - buf_start);
}
