
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref_entry {int name; } ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int ref_entry_cmp(const void *a, const void *b)
{
 struct ref_entry *one = *(struct ref_entry **)a;
 struct ref_entry *two = *(struct ref_entry **)b;
 return strcmp(one->name, two->name);
}
