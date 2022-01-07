
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref {int name; } ;


 int strcmp (void const*,int ) ;

__attribute__((used)) static int cmp_name_ref(const void *name, const void *ref)
{
 return strcmp(name, (*(struct ref **)ref)->name);
}
