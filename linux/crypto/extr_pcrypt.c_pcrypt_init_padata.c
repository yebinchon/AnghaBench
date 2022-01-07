
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct padata_instance {int dummy; } ;


 int ENOMEM ;
 struct padata_instance* padata_alloc_possible (char const*) ;
 int padata_free (struct padata_instance*) ;
 int pcrypt_sysfs_add (struct padata_instance*,char const*) ;

__attribute__((used)) static int pcrypt_init_padata(struct padata_instance **pinst, const char *name)
{
 int ret = -ENOMEM;

 *pinst = padata_alloc_possible(name);
 if (!*pinst)
  return ret;

 ret = pcrypt_sysfs_add(*pinst, name);
 if (ret)
  padata_free(*pinst);

 return ret;
}
