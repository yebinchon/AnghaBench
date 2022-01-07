
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref {int name; } ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int cmp_ref_by_name(const void *a_, const void *b_)
{
 const struct ref *a = *((const struct ref **)a_);
 const struct ref *b = *((const struct ref **)b_);
 return strcmp(a->name, b->name);
}
