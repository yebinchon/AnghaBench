
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int macio_register_driver (int *) ;
 int swim3_driver ;

int swim3_init(void)
{
 macio_register_driver(&swim3_driver);
 return 0;
}
