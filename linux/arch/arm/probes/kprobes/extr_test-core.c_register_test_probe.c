
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test_probe {int registered; int hit; int kprobe; } ;


 int BUG () ;
 int register_kprobe (int *) ;

__attribute__((used)) static int register_test_probe(struct test_probe *probe)
{
 int ret;

 if (probe->registered)
  BUG();

 ret = register_kprobe(&probe->kprobe);
 if (ret >= 0) {
  probe->registered = 1;
  probe->hit = -1;
 }
 return ret;
}
