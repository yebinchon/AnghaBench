
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fuzzer_subtransport {int base; } ;
struct fuzzer_buffer {int dummy; } ;
typedef int git_transport ;
typedef int git_smart_subtransport ;


 scalar_t__ fuzzer_subtransport_new (struct fuzzer_subtransport**,int *,struct fuzzer_buffer*) ;

int fuzzer_subtransport_cb(
 git_smart_subtransport **out,
 git_transport *owner,
 void *payload)
{
 struct fuzzer_buffer *buf = (struct fuzzer_buffer *) payload;
 struct fuzzer_subtransport *sub;

 if (fuzzer_subtransport_new(&sub, owner, buf) < 0)
  return -1;

 *out = &sub->base;
 return 0;
}
