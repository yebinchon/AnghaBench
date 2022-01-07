
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref {scalar_t__ fetch_head_status; struct ref* peer_ref; int name; } ;


 int BUG (char*) ;
 scalar_t__ FETCH_HEAD_IGNORE ;
 int _ (char*) ;
 int die (int ,int ,int ,int ) ;
 int free (struct ref*) ;
 scalar_t__ strcmp (int ,int ) ;
 int warning (int ,int ,int ,int ) ;

__attribute__((used)) static void handle_duplicate(struct ref *ref1, struct ref *ref2)
{
 if (strcmp(ref1->name, ref2->name)) {
  if (ref1->fetch_head_status != FETCH_HEAD_IGNORE &&
      ref2->fetch_head_status != FETCH_HEAD_IGNORE) {
   die(_("Cannot fetch both %s and %s to %s"),
       ref1->name, ref2->name, ref2->peer_ref->name);
  } else if (ref1->fetch_head_status != FETCH_HEAD_IGNORE &&
      ref2->fetch_head_status == FETCH_HEAD_IGNORE) {
   warning(_("%s usually tracks %s, not %s"),
    ref2->peer_ref->name, ref2->name, ref1->name);
  } else if (ref1->fetch_head_status == FETCH_HEAD_IGNORE &&
      ref2->fetch_head_status == FETCH_HEAD_IGNORE) {
   die(_("%s tracks both %s and %s"),
       ref2->peer_ref->name, ref1->name, ref2->name);
  } else {





   BUG("Internal error");
  }
 }
 free(ref2->peer_ref);
 free(ref2);
}
