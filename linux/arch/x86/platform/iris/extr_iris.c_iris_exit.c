
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int iris_device ;
 int iris_driver ;
 int platform_device_unregister (int ) ;
 int platform_driver_unregister (int *) ;

__attribute__((used)) static void iris_exit(void)
{
 platform_device_unregister(iris_device);
 platform_driver_unregister(&iris_driver);
}
