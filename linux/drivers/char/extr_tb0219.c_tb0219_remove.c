
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int TB0219_SIZE ;
 int TB0219_START ;
 int _machine_restart ;
 int iounmap (int *) ;
 int old_machine_restart ;
 int release_mem_region (int ,int ) ;
 int * tb0219_base ;

__attribute__((used)) static int tb0219_remove(struct platform_device *dev)
{
 _machine_restart = old_machine_restart;

 iounmap(tb0219_base);
 tb0219_base = ((void*)0);

 release_mem_region(TB0219_START, TB0219_SIZE);

 return 0;
}
