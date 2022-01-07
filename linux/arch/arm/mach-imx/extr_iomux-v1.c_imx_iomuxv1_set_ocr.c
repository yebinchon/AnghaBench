
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long MXC_OCR1 (unsigned int) ;
 unsigned long MXC_OCR2 (unsigned int) ;
 int imx_iomuxv1_rmwl (unsigned long,unsigned long,unsigned long) ;

__attribute__((used)) static inline void imx_iomuxv1_set_ocr(
  unsigned int port, unsigned int pin, unsigned int ocr)
{
 unsigned long shift = (pin & 0xf) << 1;
 unsigned long mask = 3 << shift;
 unsigned long value = ocr << shift;
 unsigned long offset = pin < 16 ? MXC_OCR1(port) : MXC_OCR2(port);

 imx_iomuxv1_rmwl(offset, mask, value);
}
