
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fetch_negotiator {int data; } ;
struct TYPE_2__ {int flags; } ;
struct commit {TYPE_1__ object; } ;


 int ADVERTISED ;
 int SEEN ;
 int rev_list_push (int ,struct commit*,int ) ;

__attribute__((used)) static void known_common(struct fetch_negotiator *n, struct commit *c)
{
 if (c->object.flags & SEEN)
  return;
 rev_list_push(n->data, c, ADVERTISED);
}
