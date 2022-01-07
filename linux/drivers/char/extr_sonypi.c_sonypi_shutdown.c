
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int sonypi_disable () ;

__attribute__((used)) static void sonypi_shutdown(struct platform_device *dev)
{
 sonypi_disable();
}
