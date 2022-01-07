
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int h2o_iovec_t ;
typedef int h2o_cache_digests_t ;


 int H2O_STRLIT (char*) ;
 int h2o_cache_digests_destroy (int *) ;
 int h2o_iovec_init (char const*,size_t) ;
 scalar_t__ h2o_lcstris (char const*,size_t,int ) ;
 int h2o_memis (char const*,size_t,int ) ;
 char* h2o_next_token (int *,char,size_t*,int *) ;
 int load_digest (int **,char const*,size_t,int,int) ;

void h2o_cache_digests_load_header(h2o_cache_digests_t **digests, const char *value, size_t len)
{
    h2o_iovec_t iter = h2o_iovec_init(value, len);
    const char *token;
    size_t token_len;

    do {
        const char *gcs_base64;
        size_t gcs_base64_len;
        int reset = 0, validators = 0, complete = 0, skip = 0;
        h2o_iovec_t token_value;

        if ((gcs_base64 = h2o_next_token(&iter, ';', &gcs_base64_len, ((void*)0))) == ((void*)0))
            return;
        while ((token = h2o_next_token(&iter, ';', &token_len, &token_value)) != ((void*)0) &&
               !h2o_memis(token, token_len, H2O_STRLIT(","))) {
            if (h2o_lcstris(token, token_len, H2O_STRLIT("reset"))) {
                reset = 1;
            } else if (h2o_lcstris(token, token_len, H2O_STRLIT("validators"))) {
                validators = 1;
            } else if (h2o_lcstris(token, token_len, H2O_STRLIT("complete"))) {
                complete = 1;
            } else {
                skip = 1;
            }
        }

        if (reset && *digests != ((void*)0)) {
            h2o_cache_digests_destroy(*digests);
            *digests = ((void*)0);
        }

        if (skip) {

        } else {
            load_digest(digests, gcs_base64, gcs_base64_len, validators, complete);
        }
    } while (token != ((void*)0));
}
