
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOONGSON_GPIODATA ;
 int LOONGSON_GPIOIE ;

__attribute__((used)) static void yl2f89_shutdown(void)
{

 LOONGSON_GPIODATA &= ~0x00000001;

 LOONGSON_GPIOIE &= ~0x00000001;
}
