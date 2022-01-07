
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct loop_device {scalar_t__ lo_state; int use_dio; } ;


 int EINVAL ;
 int ENXIO ;
 scalar_t__ Lo_bound ;
 int __loop_update_dio (struct loop_device*,int) ;

__attribute__((used)) static int loop_set_dio(struct loop_device *lo, unsigned long arg)
{
 int error = -ENXIO;
 if (lo->lo_state != Lo_bound)
  goto out;

 __loop_update_dio(lo, !!arg);
 if (lo->use_dio == !!arg)
  return 0;
 error = -EINVAL;
 out:
 return error;
}
