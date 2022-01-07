
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref {int dummy; } ;


 struct ref* alloc_ref_with_prefix (char*,int ,char const*) ;

struct ref *alloc_ref(const char *name)
{
 return alloc_ref_with_prefix("", 0, name);
}
