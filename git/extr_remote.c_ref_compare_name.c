
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref {int name; } ;


 int strcmp (int ,int ) ;

int ref_compare_name(const void *va, const void *vb)
{
 const struct ref *a = va, *b = vb;
 return strcmp(a->name, b->name);
}
