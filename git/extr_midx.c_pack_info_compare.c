
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pack_info {int pack_name; } ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int pack_info_compare(const void *_a, const void *_b)
{
 struct pack_info *a = (struct pack_info *)_a;
 struct pack_info *b = (struct pack_info *)_b;
 return strcmp(a->pack_name, b->pack_name);
}
