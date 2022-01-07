
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int free; int close; int action; } ;
struct TYPE_4__ {int size; int data; } ;
struct fuzzer_subtransport {TYPE_1__ base; TYPE_2__ data; int * owner; } ;
struct fuzzer_buffer {int size; int data; } ;
typedef int git_transport ;


 int fuzzer_subtransport_action ;
 int fuzzer_subtransport_close ;
 int fuzzer_subtransport_free ;
 struct fuzzer_subtransport* malloc (int) ;

__attribute__((used)) static int fuzzer_subtransport_new(
 struct fuzzer_subtransport **out,
 git_transport *owner,
 const struct fuzzer_buffer *data)
{
 struct fuzzer_subtransport *sub = malloc(sizeof(*sub));
 if (!sub)
  return -1;

 sub->owner = owner;
 sub->data.data = data->data;
 sub->data.size = data->size;
 sub->base.action = fuzzer_subtransport_action;
 sub->base.close = fuzzer_subtransport_close;
 sub->base.free = fuzzer_subtransport_free;

 *out = sub;

 return 0;
}
