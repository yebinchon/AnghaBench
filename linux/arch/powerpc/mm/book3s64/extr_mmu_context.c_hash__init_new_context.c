
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_8__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct subpage_prot_table {int dummy; } ;
struct TYPE_11__ {scalar_t__ id; TYPE_4__* hash_context; } ;
struct mm_struct {TYPE_3__ context; } ;
struct hash_mm_context {int dummy; } ;
struct TYPE_14__ {TYPE_2__* mm; } ;
struct TYPE_13__ {scalar_t__ spt; } ;
struct TYPE_12__ {struct TYPE_12__* spt; } ;
struct TYPE_9__ {TYPE_6__* hash_context; } ;
struct TYPE_10__ {TYPE_1__ context; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 TYPE_8__* current ;
 int kfree (TYPE_4__*) ;
 void* kmalloc (int,int ) ;
 int memcpy (TYPE_4__*,TYPE_6__*,int) ;
 int memset (TYPE_4__*,int ,int) ;
 int pkey_mm_init (struct mm_struct*) ;
 int realloc_context_ids (TYPE_3__*) ;
 int slice_init_new_context_exec (struct mm_struct*) ;

__attribute__((used)) static int hash__init_new_context(struct mm_struct *mm)
{
 int index;

 mm->context.hash_context = kmalloc(sizeof(struct hash_mm_context),
        GFP_KERNEL);
 if (!mm->context.hash_context)
  return -ENOMEM;
 if (mm->context.id == 0) {
  memset(mm->context.hash_context, 0, sizeof(struct hash_mm_context));
  slice_init_new_context_exec(mm);
 } else {

  memcpy(mm->context.hash_context, current->mm->context.hash_context, sizeof(struct hash_mm_context));
 }

 index = realloc_context_ids(&mm->context);
 if (index < 0) {



  kfree(mm->context.hash_context);
  return index;
 }

 pkey_mm_init(mm);
 return index;
}
