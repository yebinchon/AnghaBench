
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int kprobe_opcode_t ;
struct TYPE_4__ {scalar_t__ flags; int * addr; } ;


 int EINVAL ;
 int call_test_func (long (*) (long,long),int) ;
 scalar_t__ post_handler_called ;
 int pr_err (char*,...) ;
 scalar_t__ pre_handler_called ;
 int register_kprobe (TYPE_1__*) ;
 scalar_t__ test_func_instance ;
 TYPE_1__ the_kprobe ;
 int unregister_kprobe (TYPE_1__*) ;

__attribute__((used)) static int test_kprobe(long (*func)(long, long))
{
 int ret;

 the_kprobe.addr = (kprobe_opcode_t *)func;
 ret = register_kprobe(&the_kprobe);
 if (ret < 0) {
  pr_err("FAIL: register_kprobe failed with %d\n", ret);
  return ret;
 }

 ret = call_test_func(func, 1);

 unregister_kprobe(&the_kprobe);
 the_kprobe.flags = 0;

 if (!ret)
  return -EINVAL;
 if (pre_handler_called != test_func_instance) {
  pr_err("FAIL: kprobe pre_handler not called\n");
  return -EINVAL;
 }
 if (post_handler_called != test_func_instance) {
  pr_err("FAIL: kprobe post_handler not called\n");
  return -EINVAL;
 }
 if (!call_test_func(func, 0))
  return -EINVAL;
 if (pre_handler_called == test_func_instance ||
    post_handler_called == test_func_instance) {
  pr_err("FAIL: probe called after unregistering\n");
  return -EINVAL;
 }

 return 0;
}
