
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int ndelay (int) ;

__attribute__((used)) static void isp116x_delay(struct device *dev, int delay)
{
 ndelay(delay);
}
