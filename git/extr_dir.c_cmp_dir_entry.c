
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dir_entry {int len; int name; } ;


 int name_compare (int ,int ,int ,int ) ;

int cmp_dir_entry(const void *p1, const void *p2)
{
 const struct dir_entry *e1 = *(const struct dir_entry **)p1;
 const struct dir_entry *e2 = *(const struct dir_entry **)p2;

 return name_compare(e1->name, e1->len, e2->name, e2->len);
}
