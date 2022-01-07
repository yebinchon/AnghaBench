
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UP2OCR ;
 int UP2OCR_DMPDE ;
 int UP2OCR_DPPDE ;
 int UP2OCR_DPPUE ;
 int UP2OCR_HXOE ;
 int UP2OCR_HXS ;
 int pr_info (char*) ;

__attribute__((used)) static void zeus_udc_command(int cmd)
{
 switch (cmd) {
 case 128:
  pr_info("zeus: disconnecting USB client\n");
  UP2OCR = UP2OCR_HXOE | UP2OCR_HXS | UP2OCR_DMPDE | UP2OCR_DPPDE;
  break;

 case 129:
  pr_info("zeus: connecting USB client\n");
  UP2OCR = UP2OCR_HXOE | UP2OCR_DPPUE;
  break;
 }
}
