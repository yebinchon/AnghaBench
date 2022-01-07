
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 int abs (int) ;

__attribute__((used)) static uint8_t PredictPaeth(uint8_t a, uint8_t b, uint8_t c)
{






 uint8_t Pr;
 int p;
 int pa, pb, pc;

 p = ((int) a) + ((int) b) - ((int) c);
 pa = abs(p - ((int) a));
 pb = abs(p - ((int) b));
 pc = abs(p - ((int) c));

 if((pa <= pb) && (pa <= pc))
 {
  Pr = a;
 }
 else if(pb <= pc)
 {
  Pr = b;
 }
 else
 {
  Pr = c;
 }

 return(Pr);

}
