
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 unsigned long FDT_ERR_NOTFOUND ;
 int * of_get_flat_dt_prop (unsigned long,char*,int*) ;
 unsigned long of_get_flat_dt_root () ;
 unsigned long of_get_flat_dt_subnode_by_name (unsigned long,char*) ;

__attribute__((used)) static const u8 *get_vec5_feature(unsigned int index)
{
 unsigned long root, chosen;
 int size;
 const u8 *vec5;

 root = of_get_flat_dt_root();
 chosen = of_get_flat_dt_subnode_by_name(root, "chosen");
 if (chosen == -FDT_ERR_NOTFOUND)
  return ((void*)0);

 vec5 = of_get_flat_dt_prop(chosen, "ibm,architecture-vec-5", &size);
 if (!vec5)
  return ((void*)0);

 if (size <= index)
  return ((void*)0);

 return vec5 + index;
}
