
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_instance {int dummy; } ;


 int aead_geniv_free (int ) ;
 int aead_instance (struct crypto_instance*) ;

__attribute__((used)) static void seqiv_free(struct crypto_instance *inst)
{
 aead_geniv_free(aead_instance(inst));
}
