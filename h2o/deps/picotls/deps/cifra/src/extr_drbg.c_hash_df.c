
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef size_t uint32_t ;
typedef int cf_chash_ctx ;
struct TYPE_3__ {int hashsz; int (* digest ) (int *,int*) ;int (* update ) (int *,void const*,size_t) ;int (* init ) (int *) ;} ;
typedef TYPE_1__ cf_chash ;


 int CF_MAXHASH ;
 size_t MIN (int ,size_t) ;
 int memcpy (int*,int*,size_t) ;
 int stub1 (int *) ;
 int stub2 (int *,int*,int) ;
 int stub3 (int *,int*,int) ;
 int stub4 (int *,void const*,size_t) ;
 int stub5 (int *,void const*,size_t) ;
 int stub6 (int *,void const*,size_t) ;
 int stub7 (int *,void const*,size_t) ;
 int stub8 (int *,int*) ;
 int write32_be (size_t,int*) ;

__attribute__((used)) static void hash_df(const cf_chash *H,
                    const void *in1, size_t nin1,
                    const void *in2, size_t nin2,
                    const void *in3, size_t nin3,
                    const void *in4, size_t nin4,
                    uint8_t *out, size_t nout)
{
  uint8_t counter = 1;
  uint32_t bits_to_return = nout * 8;
  uint8_t cbuf[4];
  uint8_t block[CF_MAXHASH];

  write32_be(bits_to_return, cbuf);

  while (nout)
  {



    cf_chash_ctx ctx;
    H->init(&ctx);
    H->update(&ctx, &counter, sizeof counter);
    H->update(&ctx, cbuf, sizeof cbuf);
    H->update(&ctx, in1, nin1);
    H->update(&ctx, in2, nin2);
    H->update(&ctx, in3, nin3);
    H->update(&ctx, in4, nin4);
    H->digest(&ctx, block);

    size_t take = MIN(H->hashsz, nout);
    memcpy(out, block, take);
    out += take;
    nout -= take;

    counter += 1;
  }
}
