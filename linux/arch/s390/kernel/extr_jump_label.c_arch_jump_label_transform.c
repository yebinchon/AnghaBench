
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jump_entry {int dummy; } ;
typedef enum jump_label_type { ____Placeholder_jump_label_type } jump_label_type ;


 int __jump_label_sync ;
 int __jump_label_transform (struct jump_entry*,int,int ) ;
 int smp_call_function (int ,int *,int) ;

void arch_jump_label_transform(struct jump_entry *entry,
          enum jump_label_type type)
{
 __jump_label_transform(entry, type, 0);
 smp_call_function(__jump_label_sync, ((void*)0), 1);
}
