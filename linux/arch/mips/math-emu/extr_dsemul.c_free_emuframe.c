
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bd_emupage_lock; int bd_emupage_queue; int bd_emupage_allocmap; } ;
struct mm_struct {TYPE_1__ context; } ;
typedef TYPE_1__ mm_context_t ;
struct TYPE_4__ {int pid; } ;


 int bitmap_clear (int ,int,int) ;
 TYPE_2__* current ;
 int pr_debug (char*,int,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wake_up (int *) ;

__attribute__((used)) static void free_emuframe(int idx, struct mm_struct *mm)
{
 mm_context_t *mm_ctx = &mm->context;

 spin_lock(&mm_ctx->bd_emupage_lock);

 pr_debug("free emuframe %d from %d\n", idx, current->pid);
 bitmap_clear(mm_ctx->bd_emupage_allocmap, idx, 1);


 wake_up(&mm_ctx->bd_emupage_queue);

 spin_unlock(&mm_ctx->bd_emupage_lock);
}
