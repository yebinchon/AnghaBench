
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* clock; } ;
struct timekeeper {TYPE_3__ tkr_mono; } ;
struct TYPE_4__ {int vdso_direct; } ;
struct TYPE_5__ {TYPE_1__ archdata; } ;


 int CONFIG_ARM_ARCH_TIMER ;
 int IS_ENABLED (int ) ;

__attribute__((used)) static bool tk_is_cntvct(const struct timekeeper *tk)
{
 if (!IS_ENABLED(CONFIG_ARM_ARCH_TIMER))
  return 0;

 if (!tk->tkr_mono.clock->archdata.vdso_direct)
  return 0;

 return 1;
}
