
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mxcsr; } ;
struct xstate_header {int xfeatures; } ;
struct xregs_state {TYPE_1__ i387; struct xstate_header header; } ;
union fpregs_state {int fxsave; struct xregs_state xsave; } ;
typedef int u64 ;
struct user_i387_ia32_struct {int dummy; } ;


 int XFEATURE_MASK_FPSSE ;
 int convert_to_fxsr (int *,struct user_i387_ia32_struct*) ;
 int mxcsr_feature_mask ;
 scalar_t__ use_fxsr () ;
 scalar_t__ use_xsave () ;

__attribute__((used)) static inline void
sanitize_restored_xstate(union fpregs_state *state,
    struct user_i387_ia32_struct *ia32_env,
    u64 xfeatures, int fx_only)
{
 struct xregs_state *xsave = &state->xsave;
 struct xstate_header *header = &xsave->header;

 if (use_xsave()) {
  if (fx_only)
   header->xfeatures = XFEATURE_MASK_FPSSE;
  else
   header->xfeatures &= xfeatures;
 }

 if (use_fxsr()) {




  xsave->i387.mxcsr &= mxcsr_feature_mask;

  if (ia32_env)
   convert_to_fxsr(&state->fxsave, ia32_env);
 }
}
