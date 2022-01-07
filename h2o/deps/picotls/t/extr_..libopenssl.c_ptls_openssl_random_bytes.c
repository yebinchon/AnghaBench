
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RAND_bytes (void*,int) ;
 int abort () ;
 int fprintf (int ,char*,int) ;
 int stderr ;

void ptls_openssl_random_bytes(void *buf, size_t len)
{
    int ret = RAND_bytes(buf, (int)len);
    if (ret != 1) {
        fprintf(stderr, "RAND_bytes() failed with code: %d\n", ret);
        abort();
    }
}
