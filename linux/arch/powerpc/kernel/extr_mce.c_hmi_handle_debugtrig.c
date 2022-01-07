
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pt_regs {int dummy; } ;
struct TYPE_2__ {long hmi_p9_special_emu; } ;


 int DTRIG_UNKNOWN ;

 unsigned long HMER_DEBUG_TRIG ;
 int SPRN_HMEER ;
 int SPRN_HMER ;
 int hmer_debug_trig_function ;
 TYPE_1__* local_paca ;
 unsigned long mfspr (int ) ;
 int mtspr (int ,unsigned long) ;
 int user_mode (struct pt_regs*) ;

long hmi_handle_debugtrig(struct pt_regs *regs)
{
 unsigned long hmer = mfspr(SPRN_HMER);
 long ret = 0;


 if (!((hmer & HMER_DEBUG_TRIG)
       && hmer_debug_trig_function != DTRIG_UNKNOWN))
  return -1;

 hmer &= ~HMER_DEBUG_TRIG;

 mtspr(SPRN_HMER, ~HMER_DEBUG_TRIG);

 switch (hmer_debug_trig_function) {
 case 128:





  if (regs && user_mode(regs))
   ret = local_paca->hmi_p9_special_emu = 1;

  break;

 default:
  break;
 }




 if (hmer & mfspr(SPRN_HMEER))
  return -1;

 return ret;
}
