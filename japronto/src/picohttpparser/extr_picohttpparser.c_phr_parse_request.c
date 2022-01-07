
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phr_header {int dummy; } ;


 int * is_complete (char const*,char const*,size_t,int*) ;
 char* parse_request (char const*,char const*,char const**,size_t*,char const**,size_t*,int*,struct phr_header*,size_t*,size_t,int*) ;

int PHR_PARSE_REQUEST(const char *buf_start, size_t len, const char **method, size_t *method_len, const char **path,
                      size_t *path_len, int *minor_version, struct phr_header *headers, size_t *num_headers, size_t last_len)
{
    const char *buf = buf_start, *buf_end = buf_start + len;
    size_t max_headers = *num_headers;
    int r;

    *method = ((void*)0);
    *method_len = 0;
    *path = ((void*)0);
    *path_len = 0;
    *minor_version = -1;
    *num_headers = 0;



    if (last_len != 0 && is_complete(buf, buf_end, last_len, &r) == ((void*)0)) {
        return r;
    }

    if ((buf = parse_request(buf, buf_end, method, method_len, path, path_len, minor_version, headers, num_headers, max_headers,
                             &r)) == ((void*)0)) {
        return r;
    }

    return (int)(buf - buf_start);
}
