
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_lptim_cnt {int ceiling; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int snprintf (char*,int ,char*,int) ;

__attribute__((used)) static ssize_t stm32_lptim_cnt_get_ceiling(struct stm32_lptim_cnt *priv,
        char *buf)
{
 return snprintf(buf, PAGE_SIZE, "%u\n", priv->ceiling);
}
