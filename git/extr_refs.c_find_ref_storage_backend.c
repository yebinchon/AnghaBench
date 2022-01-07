
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref_storage_be {int name; struct ref_storage_be* next; } ;


 struct ref_storage_be* refs_backends ;
 int strcmp (int ,char const*) ;

__attribute__((used)) static struct ref_storage_be *find_ref_storage_backend(const char *name)
{
 struct ref_storage_be *be;
 for (be = refs_backends; be; be = be->next)
  if (!strcmp(be->name, name))
   return be;
 return ((void*)0);
}
