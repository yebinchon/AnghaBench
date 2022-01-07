
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fetch_negotiator {int data; } ;
struct TYPE_2__ {int flags; } ;
struct commit {TYPE_1__ object; } ;


 int COMMON ;
 int mark_common (int ,struct commit*,int ,int) ;

__attribute__((used)) static int ack(struct fetch_negotiator *n, struct commit *c)
{
 int known_to_be_common = !!(c->object.flags & COMMON);
 mark_common(n->data, c, 0, 1);
 return known_to_be_common;
}
