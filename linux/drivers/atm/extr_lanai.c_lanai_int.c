
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lanai_dev {int conf1; } ;
typedef int irqreturn_t ;


 int CONFIG1_POWERDOWN ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int intr_pending (struct lanai_dev*) ;
 int lanai_int_1 (struct lanai_dev*,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static irqreturn_t lanai_int(int irq, void *devid)
{
 struct lanai_dev *lanai = devid;
 u32 reason;
 reason = intr_pending(lanai);
 if (reason == 0)
  return IRQ_NONE;

 do {
  if (unlikely(reason == 0xFFFFFFFF))
   break;
  lanai_int_1(lanai, reason);
  reason = intr_pending(lanai);
 } while (reason != 0);

 return IRQ_HANDLED;
}
