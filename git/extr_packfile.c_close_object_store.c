
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct raw_object_store {int * multi_pack_index; struct packed_git* packed_git; } ;
struct packed_git {scalar_t__ do_not_close; struct packed_git* next; } ;


 int BUG (char*) ;
 int close_commit_graph (struct raw_object_store*) ;
 int close_midx (int *) ;
 int close_pack (struct packed_git*) ;

void close_object_store(struct raw_object_store *o)
{
 struct packed_git *p;

 for (p = o->packed_git; p; p = p->next)
  if (p->do_not_close)
   BUG("want to close pack marked 'do-not-close'");
  else
   close_pack(p);

 if (o->multi_pack_index) {
  close_midx(o->multi_pack_index);
  o->multi_pack_index = ((void*)0);
 }

 close_commit_graph(o);
}
