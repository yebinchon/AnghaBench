
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kprobe {int pre_handler; int * addr; } ;
typedef int kprobe_opcode_t ;


 int benchmark (void (*) ()) ;
 int benchmark_pre_handler ;
 int pr_err (char*,int) ;
 int register_kprobe (struct kprobe*) ;
 int unregister_kprobe (struct kprobe*) ;

__attribute__((used)) static int kprobe_benchmark(void(*fn)(void), unsigned offset)
{
 struct kprobe k = {
  .addr = (kprobe_opcode_t *)((uintptr_t)fn + offset),
  .pre_handler = benchmark_pre_handler,
 };

 int ret = register_kprobe(&k);
 if (ret < 0) {
  pr_err("FAIL: register_kprobe failed with %d\n", ret);
  return ret;
 }

 ret = benchmark(fn);

 unregister_kprobe(&k);
 return ret;
}
