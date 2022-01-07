
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int name_copy ;


 long nf_get_id_phys (int ) ;
 size_t strlcpy (char*,char const*,int) ;
 int virt_to_phys (char*) ;

long nf_get_id(const char *feature_name)
{

 char name_copy[32];
 size_t n;

 n = strlcpy(name_copy, feature_name, sizeof(name_copy));
 if (n >= sizeof(name_copy))
  return 0;

 return nf_get_id_phys(virt_to_phys(name_copy));
}
