
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct list_head {int dummy; } ;
struct crypto_template {int dummy; } ;
struct TYPE_2__ {int cra_users; int cra_destroy; int cra_list; int cra_flags; } ;
struct crypto_instance {TYPE_1__ alg; int list; struct crypto_template* tmpl; } ;


 int BUG_ON (int) ;
 int CRYPTO_ALG_DEAD ;
 int crypto_destroy_instance ;
 scalar_t__ crypto_is_dead (TYPE_1__*) ;
 int crypto_tmpl_get (struct crypto_template*) ;
 int hlist_del (int *) ;
 scalar_t__ hlist_unhashed (int *) ;
 int list_empty (int *) ;
 int list_move (int *,struct list_head*) ;

__attribute__((used)) static void crypto_remove_instance(struct crypto_instance *inst,
       struct list_head *list)
{
 struct crypto_template *tmpl = inst->tmpl;

 if (crypto_is_dead(&inst->alg))
  return;

 inst->alg.cra_flags |= CRYPTO_ALG_DEAD;
 if (hlist_unhashed(&inst->list))
  return;

 if (!tmpl || !crypto_tmpl_get(tmpl))
  return;

 list_move(&inst->alg.cra_list, list);
 hlist_del(&inst->list);
 inst->alg.cra_destroy = crypto_destroy_instance;

 BUG_ON(!list_empty(&inst->alg.cra_users));
}
