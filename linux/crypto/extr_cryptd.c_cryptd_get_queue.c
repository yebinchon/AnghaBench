
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_tfm {int dummy; } ;
struct crypto_instance {int dummy; } ;
struct cryptd_queue {int dummy; } ;
struct cryptd_instance_ctx {struct cryptd_queue* queue; } ;


 struct cryptd_instance_ctx* crypto_instance_ctx (struct crypto_instance*) ;
 struct crypto_instance* crypto_tfm_alg_instance (struct crypto_tfm*) ;

__attribute__((used)) static inline struct cryptd_queue *cryptd_get_queue(struct crypto_tfm *tfm)
{
 struct crypto_instance *inst = crypto_tfm_alg_instance(tfm);
 struct cryptd_instance_ctx *ictx = crypto_instance_ctx(inst);
 return ictx->queue;
}
