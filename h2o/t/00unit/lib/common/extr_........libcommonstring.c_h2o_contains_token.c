
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int h2o_iovec_t ;


 int h2o_iovec_init (char const*,size_t) ;
 scalar_t__ h2o_lcstris (char const*,size_t,char const*,size_t) ;
 char* h2o_next_token (int *,int,size_t*,int *) ;

int h2o_contains_token(const char *haysack, size_t haysack_len, const char *needle, size_t needle_len, int separator)
{
    h2o_iovec_t iter = h2o_iovec_init(haysack, haysack_len);
    const char *token = ((void*)0);
    size_t token_len = 0;

    while ((token = h2o_next_token(&iter, separator, &token_len, ((void*)0))) != ((void*)0)) {
        if (h2o_lcstris(token, token_len, needle, needle_len)) {
            return 1;
        }
    }
    return 0;
}
