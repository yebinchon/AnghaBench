
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spu_gang {int mutex; int contexts; int aff_flags; } ;
struct spu_context {int gang_list; int aff_list; struct spu_gang* gang; } ;


 int AFF_OFFSETS_SET ;
 int WARN_ON (int) ;
 int list_del_init (int *) ;
 int list_empty (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int put_spu_gang (struct spu_gang*) ;

void spu_gang_remove_ctx(struct spu_gang *gang, struct spu_context *ctx)
{
 mutex_lock(&gang->mutex);
 WARN_ON(ctx->gang != gang);
 if (!list_empty(&ctx->aff_list)) {
  list_del_init(&ctx->aff_list);
  gang->aff_flags &= ~AFF_OFFSETS_SET;
 }
 list_del_init(&ctx->gang_list);
 gang->contexts--;
 mutex_unlock(&gang->mutex);

 put_spu_gang(gang);
}
