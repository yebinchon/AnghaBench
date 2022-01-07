
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int context; } ;
struct ctx_list {int ctx_number; struct mm_struct* ctx_mm; struct ctx_list* next; } ;


 int NO_CONTEXT ;
 int add_to_used_ctxlist (struct ctx_list*) ;
 struct ctx_list ctx_free ;
 struct ctx_list ctx_used ;
 int flush_cache_mm (struct mm_struct*) ;
 int flush_tlb_mm (struct mm_struct*) ;
 int panic (char*) ;
 int remove_from_ctx_list (struct ctx_list*) ;

__attribute__((used)) static inline void alloc_context(struct mm_struct *old_mm, struct mm_struct *mm)
{
 struct ctx_list *ctxp;

 ctxp = ctx_free.next;
 if (ctxp != &ctx_free) {
  remove_from_ctx_list(ctxp);
  add_to_used_ctxlist(ctxp);
  mm->context = ctxp->ctx_number;
  ctxp->ctx_mm = mm;
  return;
 }
 ctxp = ctx_used.next;
 if (ctxp->ctx_mm == old_mm)
  ctxp = ctxp->next;
 if (ctxp == &ctx_used)
  panic("out of mmu contexts");
 flush_cache_mm(ctxp->ctx_mm);
 flush_tlb_mm(ctxp->ctx_mm);
 remove_from_ctx_list(ctxp);
 add_to_used_ctxlist(ctxp);
 ctxp->ctx_mm->context = NO_CONTEXT;
 ctxp->ctx_mm = mm;
 mm->context = ctxp->ctx_number;
}
