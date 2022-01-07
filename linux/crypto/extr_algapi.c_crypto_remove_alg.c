
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct crypto_alg {int cra_list; int cra_flags; } ;


 int CRYPTO_ALG_DEAD ;
 int ENOENT ;
 int crypto_remove_spawns (struct crypto_alg*,struct list_head*,int *) ;
 int list_del_init (int *) ;
 int list_empty (int *) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int crypto_remove_alg(struct crypto_alg *alg, struct list_head *list)
{
 if (unlikely(list_empty(&alg->cra_list)))
  return -ENOENT;

 alg->cra_flags |= CRYPTO_ALG_DEAD;

 list_del_init(&alg->cra_list);
 crypto_remove_spawns(alg, list, ((void*)0));

 return 0;
}
