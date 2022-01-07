
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fetch_negotiator {int data; int * known_common; } ;
struct TYPE_2__ {int flags; } ;
struct commit {TYPE_1__ object; } ;


 int SEEN ;
 int rev_list_push (int ,struct commit*,int ) ;

__attribute__((used)) static void add_tip(struct fetch_negotiator *n, struct commit *c)
{
 n->known_common = ((void*)0);
 if (c->object.flags & SEEN)
  return;
 rev_list_push(n->data, c, 0);
}
