
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_14__ {int len; int buf; } ;
struct TYPE_15__ {TYPE_1__ bytes; } ;
struct TYPE_16__ {TYPE_2__ u; } ;
typedef TYPE_3__ sl_value ;
typedef int sl_symboltab ;
typedef int sl_iter ;
typedef int cf_chash_ctx ;
struct TYPE_17__ {scalar_t__ ctxsz; int hashsz; int (* digest ) (int *,int *) ;int (* update ) (int *,int ,int ) ;int (* init ) (int *) ;} ;
typedef TYPE_4__ cf_chash ;


 scalar_t__ CF_CHASH_MAXCTX ;
 int CF_MAXHASH ;
 int assert (int) ;
 int sl_assert_bytes ;
 int sl_decref (TYPE_3__*) ;
 TYPE_3__* sl_get_nil () ;
 TYPE_3__* sl_iter_convert (int *,int ,int ,int *) ;
 int sl_iter_start (TYPE_3__*) ;
 TYPE_3__* sl_new_bytes (int *,int) ;
 int sl_preprocess_eval ;
 int stub1 (int *) ;
 int stub2 (int *,int ,int ) ;
 int stub3 (int *,int *) ;

__attribute__((used)) static sl_value * hash_fn(sl_value *self, sl_value *args, sl_symboltab *tab, const cf_chash *h)
{
  sl_iter it = sl_iter_start(args);
  sl_value *msg = sl_iter_convert(&it, sl_preprocess_eval, sl_assert_bytes, tab);

  if (!msg)
    return sl_get_nil();

  cf_chash_ctx ctx;
  assert(h->ctxsz <= CF_CHASH_MAXCTX);
  h->init(&ctx);
  h->update(&ctx, msg->u.bytes.buf, msg->u.bytes.len);
  sl_decref(msg);

  uint8_t result[CF_MAXHASH];
  assert(h->hashsz <= CF_MAXHASH);
  h->digest(&ctx, result);

  return sl_new_bytes(result, h->hashsz);
}
