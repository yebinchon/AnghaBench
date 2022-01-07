
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u64 ;
struct fxregs_state {int cwd; int * xmm_space; int * st_space; scalar_t__ rdp; scalar_t__ rip; scalar_t__ fop; scalar_t__ twd; scalar_t__ swd; } ;
struct TYPE_5__ {int xfeatures; } ;
struct TYPE_6__ {TYPE_1__ header; } ;
struct TYPE_7__ {TYPE_2__ xsave; struct fxregs_state fxsave; } ;
struct fpu {TYPE_3__ state; } ;
struct TYPE_8__ {int xsave; } ;


 int XFEATURE_MASK_FP ;
 int XFEATURE_MASK_SSE ;
 TYPE_4__ init_fpstate ;
 int memcpy (void*,void*,int) ;
 int memset (int *,int ,int) ;
 int use_xsaveopt () ;
 int xfeatures_mask ;
 int* xstate_comp_offsets ;
 int* xstate_sizes ;

void fpstate_sanitize_xstate(struct fpu *fpu)
{
 struct fxregs_state *fx = &fpu->state.fxsave;
 int feature_bit;
 u64 xfeatures;

 if (!use_xsaveopt())
  return;

 xfeatures = fpu->state.xsave.header.xfeatures;





 if ((xfeatures & xfeatures_mask) == xfeatures_mask)
  return;




 if (!(xfeatures & XFEATURE_MASK_FP)) {
  fx->cwd = 0x37f;
  fx->swd = 0;
  fx->twd = 0;
  fx->fop = 0;
  fx->rip = 0;
  fx->rdp = 0;
  memset(&fx->st_space[0], 0, 128);
 }




 if (!(xfeatures & XFEATURE_MASK_SSE))
  memset(&fx->xmm_space[0], 0, 256);





 feature_bit = 0x2;
 xfeatures = (xfeatures_mask & ~xfeatures) >> 2;






 while (xfeatures) {
  if (xfeatures & 0x1) {
   int offset = xstate_comp_offsets[feature_bit];
   int size = xstate_sizes[feature_bit];

   memcpy((void *)fx + offset,
          (void *)&init_fpstate.xsave + offset,
          size);
  }

  xfeatures >>= 1;
  feature_bit++;
 }
}
