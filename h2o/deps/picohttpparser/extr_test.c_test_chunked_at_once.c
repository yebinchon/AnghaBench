
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phr_chunked_decoder {int consume_trailer; int member_0; } ;
typedef scalar_t__ ssize_t ;


 int bufis (char*,scalar_t__,char const*) ;
 int free (char*) ;
 int note (char*,int) ;
 int ok (int) ;
 scalar_t__ phr_decode_chunked (struct phr_chunked_decoder*,char*,size_t*) ;
 char* strdup (char const*) ;
 size_t strlen (char const*) ;

__attribute__((used)) static void test_chunked_at_once(int line, int consume_trailer, const char *encoded, const char *decoded, ssize_t expected)
{
    struct phr_chunked_decoder dec = {0};
    char *buf;
    size_t bufsz;
    ssize_t ret;

    dec.consume_trailer = consume_trailer;

    note("testing at-once, source at line %d", line);

    buf = strdup(encoded);
    bufsz = strlen(buf);

    ret = phr_decode_chunked(&dec, buf, &bufsz);

    ok(ret == expected);
    ok(bufsz == strlen(decoded));
    ok(bufis(buf, bufsz, decoded));
    if (expected >= 0) {
        if (ret == expected)
            ok(bufis(buf + bufsz, ret, encoded + strlen(encoded) - ret));
        else
            ok(0);
    }

    free(buf);
}
