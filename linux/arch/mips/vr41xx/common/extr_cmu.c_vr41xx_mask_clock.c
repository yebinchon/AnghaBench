
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vr41xx_clock_t ;




 int CMUCLKMSK ;
 int CMUCLKMSK2 ;
 int CPU_VR4111 ;
 int CPU_VR4121 ;







 int MSKAIU ;
 int MSKCEU ;
 int MSKCSI ;
 int MSKDSIU ;
 int MSKFFIR ;
 int MSKFIR ;
 int MSKKIU ;
 int MSKMAC0 ;
 int MSKMAC1 ;
 int MSKPCIU ;
 int MSKPIU ;
 int MSKPPCIU ;
 int MSKSCSI ;
 int MSKSHSP ;
 int MSKSIU ;
 int MSKSSIU ;




 int cmu_lock ;
 int cmu_write (int ,int) ;
 int cmuclkmsk ;
 int cmuclkmsk2 ;
 int current_cpu_type () ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

void vr41xx_mask_clock(vr41xx_clock_t clock)
{
 spin_lock_irq(&cmu_lock);

 switch (clock) {
 case 129:
  cmuclkmsk &= ~MSKPIU;
  break;
 case 128:
  if (current_cpu_type() == CPU_VR4111 ||
      current_cpu_type() == CPU_VR4121) {
   cmuclkmsk &= ~(MSKSIU | MSKSSIU);
  } else {
   if (cmuclkmsk & MSKDSIU)
    cmuclkmsk &= ~MSKSSIU;
   else
    cmuclkmsk &= ~(MSKSIU | MSKSSIU);
  }
  break;
 case 140:
  cmuclkmsk &= ~MSKAIU;
  break;
 case 132:
  cmuclkmsk &= ~MSKKIU;
  break;
 case 134:
  cmuclkmsk &= ~(MSKFIR | MSKFFIR);
  break;
 case 137:
  if (current_cpu_type() == CPU_VR4111 ||
      current_cpu_type() == CPU_VR4121) {
   cmuclkmsk &= ~MSKDSIU;
  } else {
   if (cmuclkmsk & MSKSSIU)
    cmuclkmsk &= ~MSKDSIU;
   else
    cmuclkmsk &= ~(MSKSIU | MSKDSIU);
  }
  break;
 case 138:
  cmuclkmsk &= ~(MSKCSI | MSKSCSI);
  break;
 case 131:
  cmuclkmsk &= ~MSKPCIU;
  break;
 case 133:
  cmuclkmsk &= ~MSKSHSP;
  break;
 case 130:
  cmuclkmsk &= ~MSKPPCIU;
  break;
 case 139:
  cmuclkmsk2 &= ~MSKCEU;
  break;
 case 136:
  cmuclkmsk2 &= ~MSKMAC0;
  break;
 case 135:
  cmuclkmsk2 &= ~MSKMAC1;
  break;
 default:
  break;
 }

 if (clock == 139 || clock == 136 ||
     clock == 135)
  cmu_write(CMUCLKMSK2, cmuclkmsk2);
 else
  cmu_write(CMUCLKMSK, cmuclkmsk);

 spin_unlock_irq(&cmu_lock);
}
