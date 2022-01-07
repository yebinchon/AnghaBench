
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ flags; } ;
struct test_probe {int registered; TYPE_1__ kprobe; } ;


 int unregister_kprobe (TYPE_1__*) ;

__attribute__((used)) static void unregister_test_probe(struct test_probe *probe)
{
 if (probe->registered) {
  unregister_kprobe(&probe->kprobe);
  probe->kprobe.flags = 0;
 }
 probe->registered = 0;
}
