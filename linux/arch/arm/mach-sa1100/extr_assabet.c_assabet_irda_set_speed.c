
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int ASSABET_BCR_IRDA_FSEL ;
 int ASSABET_BCR_clear (int ) ;
 int ASSABET_BCR_set (int ) ;

__attribute__((used)) static void assabet_irda_set_speed(struct device *dev, unsigned int speed)
{
 if (speed < 4000000)
  ASSABET_BCR_clear(ASSABET_BCR_IRDA_FSEL);
 else
  ASSABET_BCR_set(ASSABET_BCR_IRDA_FSEL);
}
