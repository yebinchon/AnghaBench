
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct padata_instance {int dummy; } ;


 int padata_free (struct padata_instance*) ;
 int padata_stop (struct padata_instance*) ;

__attribute__((used)) static void pcrypt_fini_padata(struct padata_instance *pinst)
{
 padata_stop(pinst);
 padata_free(pinst);
}
