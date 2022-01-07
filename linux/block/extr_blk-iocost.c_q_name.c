
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int parent; } ;
struct request_queue {TYPE_1__ kobj; int queue_flags; } ;


 int QUEUE_FLAG_REGISTERED ;
 char const* kobject_name (int ) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static const char *q_name(struct request_queue *q)
{
 if (test_bit(QUEUE_FLAG_REGISTERED, &q->queue_flags))
  return kobject_name(q->kobj.parent);
 else
  return "<unknown>";
}
