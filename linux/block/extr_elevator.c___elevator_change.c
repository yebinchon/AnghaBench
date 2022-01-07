
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request_queue {TYPE_1__* elevator; } ;
struct elevator_type {int dummy; } ;
typedef int elevator_name ;
struct TYPE_2__ {int type; } ;


 int EINVAL ;
 int ELV_NAME_MAX ;
 int ENOENT ;
 int blk_queue_registered (struct request_queue*) ;
 struct elevator_type* elevator_get (struct request_queue*,int ,int) ;
 scalar_t__ elevator_match (int ,char*,int ) ;
 int elevator_put (struct elevator_type*) ;
 int elevator_switch (struct request_queue*,struct elevator_type*) ;
 int strlcpy (char*,char const*,int) ;
 int strncmp (char const*,char*,int) ;
 int strstrip (char*) ;

__attribute__((used)) static int __elevator_change(struct request_queue *q, const char *name)
{
 char elevator_name[ELV_NAME_MAX];
 struct elevator_type *e;


 if (!blk_queue_registered(q))
  return -ENOENT;




 if (!strncmp(name, "none", 4)) {
  if (!q->elevator)
   return 0;
  return elevator_switch(q, ((void*)0));
 }

 strlcpy(elevator_name, name, sizeof(elevator_name));
 e = elevator_get(q, strstrip(elevator_name), 1);
 if (!e)
  return -EINVAL;

 if (q->elevator &&
     elevator_match(q->elevator->type, elevator_name, 0)) {
  elevator_put(e);
  return 0;
 }

 return elevator_switch(q, e);
}
