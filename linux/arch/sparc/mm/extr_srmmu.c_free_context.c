
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ctx_list {int dummy; } ;


 int add_to_free_ctxlist (struct ctx_list*) ;
 struct ctx_list* ctx_list_pool ;
 int remove_from_ctx_list (struct ctx_list*) ;

__attribute__((used)) static inline void free_context(int context)
{
 struct ctx_list *ctx_old;

 ctx_old = ctx_list_pool + context;
 remove_from_ctx_list(ctx_old);
 add_to_free_ctxlist(ctx_old);
}
