
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unidirectional_transfer {int dest_name; int dest; scalar_t__ dest_is_sock; int state; int bufuse; } ;


 int SHUT_WR ;
 int SSTATE_FINISHED ;
 scalar_t__ STATE_NEEDS_CLOSING (int ) ;
 int close (int ) ;
 int shutdown (int ,int ) ;
 int transfer_debug (char*,int ) ;

__attribute__((used)) static void udt_close_if_finished(struct unidirectional_transfer *t)
{
 if (STATE_NEEDS_CLOSING(t->state) && !t->bufuse) {
  t->state = SSTATE_FINISHED;
  if (t->dest_is_sock)
   shutdown(t->dest, SHUT_WR);
  else
   close(t->dest);
  transfer_debug("Closed %s.", t->dest_name);
 }
}
