
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct subsys_interface {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_3__ {int fclk; int hclk; int pclk; } ;
struct TYPE_4__ {char* name; TYPE_1__ max; } ;


 int s3c2410_cpufreq_add (struct device*,struct subsys_interface*) ;
 TYPE_2__ s3c2410_cpufreq_info ;

__attribute__((used)) static int s3c2410a_cpufreq_add(struct device *dev,
    struct subsys_interface *sif)
{




 s3c2410_cpufreq_info.max.fclk = 266000000;
 s3c2410_cpufreq_info.max.hclk = 133000000;
 s3c2410_cpufreq_info.max.pclk = 66500000;
 s3c2410_cpufreq_info.name = "s3c2410a";

 return s3c2410_cpufreq_add(dev, sif);
}
