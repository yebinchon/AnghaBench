
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct ldc_version {scalar_t__ major; } ;


 int ARRAY_SIZE (struct ldc_version*) ;
 struct ldc_version* ver_arr ;

__attribute__((used)) static struct ldc_version *find_by_major(u16 major)
{
 struct ldc_version *ret = ((void*)0);
 int i;

 for (i = 0; i < ARRAY_SIZE(ver_arr); i++) {
  struct ldc_version *v = &ver_arr[i];
  if (v->major <= major) {
   ret = v;
   break;
  }
 }
 return ret;
}
