
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {unsigned long int_; } ;
struct TYPE_6__ {int mti; unsigned long* mt; TYPE_1__ gen; } ;
typedef TYPE_2__ mt_state ;


 unsigned long LOWER_MASK ;
 int M ;

 int N ;
 unsigned long UPPER_MASK ;
 int mrb_random_init_genrand (TYPE_2__*,unsigned long) ;

unsigned long mrb_random_genrand_int32(mt_state *t)
{
    unsigned long y;
    static const unsigned long mag01[2]={0x0UL, 128};


    if (t->mti >= N) {
        int kk;

        if (t->mti == N+1)
            mrb_random_init_genrand(t, 5489UL);

        for (kk=0;kk<N-M;kk++) {
            y = (t->mt[kk]&UPPER_MASK)|(t->mt[kk+1]&LOWER_MASK);
            t->mt[kk] = t->mt[kk+M] ^ (y >> 1) ^ mag01[y & 0x1UL];
        }
        for (;kk<N-1;kk++) {
            y = (t->mt[kk]&UPPER_MASK)|(t->mt[kk+1]&LOWER_MASK);
            t->mt[kk] = t->mt[kk+(M-N)] ^ (y >> 1) ^ mag01[y & 0x1UL];
        }
        y = (t->mt[N-1]&UPPER_MASK)|(t->mt[0]&LOWER_MASK);
        t->mt[N-1] = t->mt[M-1] ^ (y >> 1) ^ mag01[y & 0x1UL];

        t->mti = 0;
    }

    y = t->mt[t->mti++];


    y ^= (y >> 11);
    y ^= (y << 7) & 0x9d2c5680UL;
    y ^= (y << 15) & 0xefc60000UL;
    y ^= (y >> 18);

    t->gen.int_ = y;

    return y;
}
