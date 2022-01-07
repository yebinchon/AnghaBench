
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tree_entry {TYPE_1__* versions; TYPE_2__* name; } ;
struct TYPE_4__ {int str_len; int str_dat; } ;
struct TYPE_3__ {int mode; } ;


 int base_name_compare (int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static int tecmp0 (const void *_a, const void *_b)
{
 struct tree_entry *a = *((struct tree_entry**)_a);
 struct tree_entry *b = *((struct tree_entry**)_b);
 return base_name_compare(
  a->name->str_dat, a->name->str_len, a->versions[0].mode,
  b->name->str_dat, b->name->str_len, b->versions[0].mode);
}
