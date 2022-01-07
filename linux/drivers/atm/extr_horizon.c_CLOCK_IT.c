
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int hrz_dev ;


 int SEEPROM_SK ;
 int WRITE_IT_WAIT (int const*,int) ;

__attribute__((used)) static void CLOCK_IT (const hrz_dev *dev, u32 ctrl)
{

 WRITE_IT_WAIT(dev, ctrl & ~SEEPROM_SK);
 WRITE_IT_WAIT(dev, ctrl | SEEPROM_SK);
}
