
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stackframe {scalar_t__ pc; } ;
struct return_address_data {int level; void* addr; } ;



__attribute__((used)) static int save_return_addr(struct stackframe *frame, void *d)
{
 struct return_address_data *data = d;

 if (!data->level) {
  data->addr = (void *)frame->pc;
  return 1;
 } else {
  --data->level;
  return 0;
 }
}
