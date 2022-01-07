
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ptls_context_t ;


 int errno ;
 int exit (int) ;
 int fprintf (int ,char*,char const*,char*) ;
 scalar_t__ ptls_load_certificates (int *,char*) ;
 int stderr ;
 char* strerror (int ) ;

__attribute__((used)) static inline void load_certificate_chain(ptls_context_t *ctx, const char *fn)
{
    if (ptls_load_certificates(ctx, (char *)fn) != 0) {
        fprintf(stderr, "failed to load certificate:%s:%s\n", fn, strerror(errno));
        exit(1);
    }
}
