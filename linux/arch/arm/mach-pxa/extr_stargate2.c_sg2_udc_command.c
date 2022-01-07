
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UP2OCR ;
 int UP2OCR_DPPUBE ;
 int UP2OCR_DPPUE ;
 int UP2OCR_HXOE ;

__attribute__((used)) static void sg2_udc_command(int cmd)
{
 switch (cmd) {
 case 129:
  UP2OCR |= UP2OCR_HXOE | UP2OCR_DPPUE | UP2OCR_DPPUBE;
  break;
 case 128:
  UP2OCR &= ~(UP2OCR_HXOE | UP2OCR_DPPUE | UP2OCR_DPPUBE);
  break;
 }
}
