
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int GPIO_AF ;
 int GPIO_AOUT_SHIFT ;
 int GPIO_BOUT_SHIFT ;
 int GPIO_OCR_MASK ;
 int GPIO_OCR_SHIFT ;
 int GPIO_OUT ;
 int GPIO_PF ;
 int GPIO_PIN_MASK ;
 int GPIO_PORT_MASK ;
 int GPIO_PORT_SHIFT ;
 int GPIO_PUEN ;
 unsigned int imx_iomuxv1_numports ;
 int imx_iomuxv1_set_ddir (unsigned int,unsigned int,int) ;
 int imx_iomuxv1_set_gius (unsigned int,unsigned int,int) ;
 int imx_iomuxv1_set_gpr (unsigned int,unsigned int,int) ;
 int imx_iomuxv1_set_iconfa (unsigned int,unsigned int,unsigned int) ;
 int imx_iomuxv1_set_iconfb (unsigned int,unsigned int,unsigned int) ;
 int imx_iomuxv1_set_ocr (unsigned int,unsigned int,unsigned int) ;
 int imx_iomuxv1_set_puen (unsigned int,unsigned int,int) ;

int mxc_gpio_mode(int gpio_mode)
{
 unsigned int pin = gpio_mode & GPIO_PIN_MASK;
 unsigned int port = (gpio_mode & GPIO_PORT_MASK) >> GPIO_PORT_SHIFT;
 unsigned int ocr = (gpio_mode & GPIO_OCR_MASK) >> GPIO_OCR_SHIFT;
 unsigned int aout = (gpio_mode >> GPIO_AOUT_SHIFT) & 3;
 unsigned int bout = (gpio_mode >> GPIO_BOUT_SHIFT) & 3;

 if (port >= imx_iomuxv1_numports)
  return -EINVAL;


 imx_iomuxv1_set_puen(port, pin, gpio_mode & GPIO_PUEN);


 imx_iomuxv1_set_ddir(port, pin, gpio_mode & GPIO_OUT);


 imx_iomuxv1_set_gpr(port, pin, gpio_mode & GPIO_AF);


 imx_iomuxv1_set_gius(port, pin, !(gpio_mode & (GPIO_PF | GPIO_AF)));

 imx_iomuxv1_set_ocr(port, pin, ocr);

 imx_iomuxv1_set_iconfa(port, pin, aout);

 imx_iomuxv1_set_iconfb(port, pin, bout);

 return 0;
}
