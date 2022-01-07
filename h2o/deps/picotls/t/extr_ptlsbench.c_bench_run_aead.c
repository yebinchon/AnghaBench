
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
typedef int secret ;
typedef int ptls_hash_algorithm_t ;
typedef int ptls_aead_context_t ;
typedef int ptls_aead_algorithm_t ;
typedef int p_version ;


 char* BENCH_MODE ;
 int OPENSSL_VERSION_NUMBER ;
 int PTLS_ERROR_NO_MEMORY ;
 int PTLS_MAX_SECRET_SIZE ;
 double bench_mbps (scalar_t__,size_t,size_t) ;
 int bench_run_one (int *,int *,size_t,size_t,scalar_t__*,scalar_t__*,scalar_t__*) ;
 int memset (int *,char,int) ;
 int printf (char*,char*,char*,int,char*,int,char const*,char*,char const*,int,int,int,int,double,double) ;
 int ptls_aead_free (int *) ;
 int * ptls_aead_new (int *,int *,int,int *,int *) ;
 int sprintf (char*,char*,int,int,int,char) ;
 int sprintf_s (char*,int,char*,int,int,int,char) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int bench_run_aead(char * OS, char * HW, int basic_ref, uint64_t s0, const char *provider, const char *algo_name, ptls_aead_algorithm_t *aead, ptls_hash_algorithm_t *hash, size_t n, size_t l, uint64_t *s)
{
    int ret = 0;

    uint8_t secret[PTLS_MAX_SECRET_SIZE];
    ptls_aead_context_t *e;
    ptls_aead_context_t *d;
    uint64_t t_e = 0;
    uint64_t t_d = 0;
    char p_version[128];


    p_version[0] = 0;

    if (strcmp(provider, "openssl") == 0) {




        uint32_t combined = OPENSSL_VERSION_NUMBER;
        int M = combined >> 28;
        int NN = (combined >> 20) & 0xFF;
        int FF = (combined >> 12) & 0xFF;
        int PP = (combined >> 4) & 0xFF;
        char letter = 'a' - 1 + PP;




        (void)sprintf(p_version, "%d.%d.%d%c", M, NN, FF, letter);

    }

    *s += s0;

    memset(secret, 'z', sizeof(secret));
    e = ptls_aead_new(aead, hash, 1, secret, ((void*)0));
    d = ptls_aead_new(aead, hash, 0, secret, ((void*)0));

    if (e == ((void*)0) || d == ((void*)0)) {
        ret = PTLS_ERROR_NO_MEMORY;
    } else {
        ret = bench_run_one(e, d, n, l, &t_e, &t_d, s);
        if (ret == 0) {
            printf("%s, %s, %d, %s, %d, %s, %s, %s, %d, %d, %d, %d, %.2f, %.2f\n", OS, HW, (int)(8 * sizeof(size_t)), BENCH_MODE, basic_ref,
                   provider, p_version, algo_name, (int)n, (int)l, (int)t_e, (int)t_d, bench_mbps(t_e, l, n),
                   bench_mbps(t_d, l, n));
        }
    }

    if (e) {
        ptls_aead_free(e);
    }

    if (d) {
        ptls_aead_free(d);
    }

    return ret;
}
