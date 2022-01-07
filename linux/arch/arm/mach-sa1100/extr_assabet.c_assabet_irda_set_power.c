
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;




 int ASSABET_BCR_frob (unsigned int const,unsigned int) ;

__attribute__((used)) static int assabet_irda_set_power(struct device *dev, unsigned int state)
{
 static unsigned int bcr_state[4] = {
  129,
  128|129,
  128,
  0
 };

 if (state < 4)
  ASSABET_BCR_frob(128 | 129,
     bcr_state[state]);
 return 0;
}
