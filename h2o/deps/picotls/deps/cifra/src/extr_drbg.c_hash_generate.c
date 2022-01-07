
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int cf_chash_ctx ;
struct TYPE_3__ {int hashsz; int (* digest ) (int *,int*) ;int (* update ) (int *,int*,size_t) ;int (* init ) (int *) ;} ;
typedef TYPE_1__ cf_chash ;


 int CF_MAXHASH ;
 size_t MIN (int ,size_t) ;
 int add (int*,size_t,int*,int) ;
 int memcpy (int*,int*,size_t) ;
 int stub1 (int *) ;
 int stub2 (int *,int*,size_t) ;
 int stub3 (int *,int*) ;

__attribute__((used)) static void hash_generate(const cf_chash *H,
                          uint8_t *data, size_t ndata,
                          void *out, size_t nout)
{
  cf_chash_ctx ctx;
  uint8_t w[CF_MAXHASH];
  uint8_t *bout = out;
  uint8_t one = 1;

  while (nout)
  {

    H->init(&ctx);
    H->update(&ctx, data, ndata);
    H->digest(&ctx, w);


    size_t take = MIN(H->hashsz, nout);
    memcpy(bout, w, take);
    bout += take;
    nout -= take;


    add(data, ndata, &one, sizeof one);
  }
}
