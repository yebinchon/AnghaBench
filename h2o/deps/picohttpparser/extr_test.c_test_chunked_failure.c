
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phr_chunked_decoder {int member_0; } ;
typedef int ssize_t ;
typedef int dec ;


 int free (char*) ;
 int memset (struct phr_chunked_decoder*,int ,int) ;
 int note (char*,int) ;
 int ok (int) ;
 int phr_decode_chunked (struct phr_chunked_decoder*,char*,size_t*) ;
 char* strdup (char const*) ;
 size_t strlen (char*) ;

__attribute__((used)) static void test_chunked_failure(int line, const char *encoded, ssize_t expected)
{
    struct phr_chunked_decoder dec = {0};
    char *buf = strdup(encoded);
    size_t bufsz, i;
    ssize_t ret;

    note("testing failure at-once, source at line %d", line);
    bufsz = strlen(buf);
    ret = phr_decode_chunked(&dec, buf, &bufsz);
    ok(ret == expected);

    note("testing failure per-byte, source at line %d", line);
    memset(&dec, 0, sizeof(dec));
    for (i = 0; encoded[i] != '\0'; ++i) {
        buf[0] = encoded[i];
        bufsz = 1;
        ret = phr_decode_chunked(&dec, buf, &bufsz);
        if (ret == -1) {
            ok(ret == expected);
            goto cleanup;
        } else if (ret == -2) {

        } else {
            ok(0);
            goto cleanup;
        }
    }
    ok(ret == expected);

cleanup:
    free(buf);
}
