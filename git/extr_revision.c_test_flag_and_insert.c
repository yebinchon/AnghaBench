
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct prio_queue {int dummy; } ;
struct TYPE_2__ {int flags; } ;
struct commit {TYPE_1__ object; } ;


 int prio_queue_put (struct prio_queue*,struct commit*) ;

__attribute__((used)) static inline void test_flag_and_insert(struct prio_queue *q, struct commit *c, int flag)
{
 if (c->object.flags & flag)
  return;

 c->object.flags |= flag;
 prio_queue_put(q, c);
}
