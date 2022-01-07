
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int input_unregister_device (int ) ;
 int lid_switch_idev ;

__attribute__((used)) static void free_lid_switch(void)
{
 input_unregister_device(lid_switch_idev);
}
