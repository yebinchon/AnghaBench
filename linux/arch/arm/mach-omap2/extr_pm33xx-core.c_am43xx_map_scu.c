
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 int SZ_256 ;
 int ioremap (int ,int ) ;
 int scu_a9_get_base () ;
 int scu_base ;

__attribute__((used)) static int am43xx_map_scu(void)
{
 scu_base = ioremap(scu_a9_get_base(), SZ_256);

 if (!scu_base)
  return -ENOMEM;

 return 0;
}
