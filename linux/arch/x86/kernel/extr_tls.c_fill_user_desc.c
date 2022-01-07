
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_desc {int entry_number; int contents; int read_exec_only; int seg_not_present; int lm; int useable; int limit_in_pages; int seg_32bit; int limit; int base_addr; } ;
struct desc_struct {int type; int l; int avl; int p; int g; int d; } ;


 int get_desc_base (struct desc_struct const*) ;
 int get_desc_limit (struct desc_struct const*) ;
 int memset (struct user_desc*,int ,int) ;

__attribute__((used)) static void fill_user_desc(struct user_desc *info, int idx,
      const struct desc_struct *desc)

{
 memset(info, 0, sizeof(*info));
 info->entry_number = idx;
 info->base_addr = get_desc_base(desc);
 info->limit = get_desc_limit(desc);
 info->seg_32bit = desc->d;
 info->contents = desc->type >> 2;
 info->read_exec_only = !(desc->type & 2);
 info->limit_in_pages = desc->g;
 info->seg_not_present = !desc->p;
 info->useable = desc->avl;



}
