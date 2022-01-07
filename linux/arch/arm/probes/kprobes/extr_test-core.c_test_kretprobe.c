
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int kprobe_opcode_t ;
struct TYPE_5__ {scalar_t__ flags; int * addr; } ;
struct TYPE_6__ {TYPE_1__ kp; } ;


 int EINVAL ;
 int call_test_func (long (*) (long,long),int) ;
 scalar_t__ kretprobe_handler_called ;
 int pr_err (char*,...) ;
 int register_kretprobe (TYPE_2__*) ;
 scalar_t__ test_func_instance ;
 TYPE_2__ the_kretprobe ;
 int unregister_kretprobe (TYPE_2__*) ;

__attribute__((used)) static int test_kretprobe(long (*func)(long, long))
{
 int ret;

 the_kretprobe.kp.addr = (kprobe_opcode_t *)func;
 ret = register_kretprobe(&the_kretprobe);
 if (ret < 0) {
  pr_err("FAIL: register_kretprobe failed with %d\n", ret);
  return ret;
 }

 ret = call_test_func(func, 1);

 unregister_kretprobe(&the_kretprobe);
 the_kretprobe.kp.flags = 0;

 if (!ret)
  return -EINVAL;
 if (kretprobe_handler_called != test_func_instance) {
  pr_err("FAIL: kretprobe handler not called\n");
  return -EINVAL;
 }
 if (!call_test_func(func, 0))
  return -EINVAL;
 if (kretprobe_handler_called == test_func_instance) {
  pr_err("FAIL: kretprobe called after unregistering\n");
  return -EINVAL;
 }

 return 0;
}
