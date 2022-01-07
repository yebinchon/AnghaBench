
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_7__ {int state_count; int state; int duty_offset; TYPE_2__* states; int address; } ;
struct TYPE_5__ {int throttling; } ;
struct acpi_processor {int throttling_platform_limit; TYPE_3__ throttling; TYPE_1__ flags; } ;
struct TYPE_8__ {int duty_offset; } ;
struct TYPE_6__ {int performance; } ;


 int ACPI_DB_INFO ;
 int ACPI_DEBUG_PRINT (int ) ;
 int EINVAL ;
 int ENODEV ;
 int EPERM ;
 TYPE_4__ acpi_gbl_FADT ;
 int inl (int ) ;
 int local_irq_disable () ;
 int local_irq_enable () ;
 int outl (int,int ) ;

__attribute__((used)) static int acpi_processor_set_throttling_fadt(struct acpi_processor *pr,
           int state, bool force)
{
 u32 value = 0;
 u32 duty_mask = 0;
 u32 duty_value = 0;

 if (!pr)
  return -EINVAL;

 if ((state < 0) || (state > (pr->throttling.state_count - 1)))
  return -EINVAL;

 if (!pr->flags.throttling)
  return -ENODEV;

 if (!force && (state == pr->throttling.state))
  return 0;

 if (state < pr->throttling_platform_limit)
  return -EPERM;



 if (state) {
  duty_value = pr->throttling.state_count - state;

  duty_value <<= pr->throttling.duty_offset;


  duty_mask = pr->throttling.state_count - 1;

  duty_mask <<= acpi_gbl_FADT.duty_offset;
  duty_mask = ~duty_mask;
 }

 local_irq_disable();





 value = inl(pr->throttling.address);
 if (value & 0x10) {
  value &= 0xFFFFFFEF;
  outl(value, pr->throttling.address);
 }





 if (state) {
  value &= duty_mask;
  value |= duty_value;
  outl(value, pr->throttling.address);

  value |= 0x00000010;
  outl(value, pr->throttling.address);
 }

 pr->throttling.state = state;

 local_irq_enable();

 ACPI_DEBUG_PRINT((ACPI_DB_INFO,
     "Throttling state set to T%d (%d%%)\n", state,
     (pr->throttling.states[state].performance ? pr->
      throttling.states[state].performance / 10 : 0)));

 return 0;
}
