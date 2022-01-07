
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernel_param {int dummy; } ;


 int device_for_each_child (int *,char*,int ) ;
 int strlen (char*) ;
 int vu_cmdline_get_device ;
 int vu_cmdline_parent ;
 scalar_t__ vu_cmdline_parent_registered ;

__attribute__((used)) static int vu_cmdline_get(char *buffer, const struct kernel_param *kp)
{
 buffer[0] = '\0';
 if (vu_cmdline_parent_registered)
  device_for_each_child(&vu_cmdline_parent, buffer,
          vu_cmdline_get_device);
 return strlen(buffer) + 1;
}
