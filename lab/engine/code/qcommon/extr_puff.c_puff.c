
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef void* uint32_t ;
struct state {void* incnt; void* outcnt; int env; scalar_t__ bitcnt; scalar_t__ bitbuf; void* inlen; int * in; void* outlen; int * out; } ;
typedef int int32_t ;


 int bits (struct state*,int) ;
 int dynamic (struct state*) ;
 int fixed (struct state*) ;
 scalar_t__ setjmp (int ) ;
 int stored (struct state*) ;

int32_t puff(uint8_t *dest,
             uint32_t *destlen,
             uint8_t *source,
             uint32_t *sourcelen)
{
    struct state s;
    int32_t last, type;
    int32_t err;


    s.out = dest;
    s.outlen = *destlen;
    s.outcnt = 0;


    s.in = source;
    s.inlen = *sourcelen;
    s.incnt = 0;
    s.bitbuf = 0;
    s.bitcnt = 0;


    if (setjmp(s.env) != 0)
        err = 2;
    else {

        do {
            last = bits(&s, 1);
            type = bits(&s, 2);
            err = type == 0 ? stored(&s) :
                  (type == 1 ? fixed(&s) :
                   (type == 2 ? dynamic(&s) :
                    -1));
            if (err != 0) break;
        } while (!last);
    }


    if (err <= 0) {
        *destlen = s.outcnt;
        *sourcelen = s.incnt;
    }
    return err;
}
