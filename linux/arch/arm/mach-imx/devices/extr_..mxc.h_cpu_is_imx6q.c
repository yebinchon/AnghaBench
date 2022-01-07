
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ MXC_CPU_IMX6Q ;
 scalar_t__ __mxc_cpu_type ;

__attribute__((used)) static inline bool cpu_is_imx6q(void)
{
 return __mxc_cpu_type == MXC_CPU_IMX6Q;
}
