
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int of_machine_is_compatible (char*) ;

__attribute__((used)) static inline int clk_on_imx6dl(void)
{
 return of_machine_is_compatible("fsl,imx6dl");
}
