
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref {struct ref* symref; struct ref* remote_status; struct ref* peer_ref; } ;


 int free (struct ref*) ;

void free_one_ref(struct ref *ref)
{
 if (!ref)
  return;
 free_one_ref(ref->peer_ref);
 free(ref->remote_status);
 free(ref->symref);
 free(ref);
}
