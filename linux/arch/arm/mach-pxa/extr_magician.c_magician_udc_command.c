
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PXA2XX_UDC_CMD_CONNECT ;
 int PXA2XX_UDC_CMD_DISCONNECT ;
 int UP2OCR ;
 int UP2OCR_DPPUBE ;
 int UP2OCR_DPPUE ;

__attribute__((used)) static void magician_udc_command(int cmd)
{
 if (cmd == PXA2XX_UDC_CMD_CONNECT)
  UP2OCR |= UP2OCR_DPPUE | UP2OCR_DPPUBE;
 else if (cmd == PXA2XX_UDC_CMD_DISCONNECT)
  UP2OCR &= ~(UP2OCR_DPPUE | UP2OCR_DPPUBE);
}
