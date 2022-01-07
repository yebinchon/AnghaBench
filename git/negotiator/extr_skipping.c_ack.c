
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fetch_negotiator {int data; } ;
struct TYPE_2__ {int flags; int oid; } ;
struct commit {TYPE_1__ object; } ;


 int COMMON ;
 int SEEN ;
 int die (char*,int ) ;
 int mark_common (int ,struct commit*) ;
 int oid_to_hex (int *) ;

__attribute__((used)) static int ack(struct fetch_negotiator *n, struct commit *c)
{
 int known_to_be_common = !!(c->object.flags & COMMON);
 if (!(c->object.flags & SEEN))
  die("received ack for commit %s not sent as 'have'\n",
      oid_to_hex(&c->object.oid));
 mark_common(n->data, c);
 return known_to_be_common;
}
