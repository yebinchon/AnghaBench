
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_instance {int dummy; } ;
struct akcipher_instance {int (* free ) (struct akcipher_instance*) ;} ;


 struct akcipher_instance* akcipher_instance (struct crypto_instance*) ;
 int stub1 (struct akcipher_instance*) ;

__attribute__((used)) static void crypto_akcipher_free_instance(struct crypto_instance *inst)
{
 struct akcipher_instance *akcipher = akcipher_instance(inst);

 akcipher->free(akcipher);
}
