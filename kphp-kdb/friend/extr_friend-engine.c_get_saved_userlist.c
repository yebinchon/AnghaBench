
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct keep_mc_header {int num; int list_id; } ;
struct connection {TYPE_1__* Tmp; } ;
struct TYPE_3__ {scalar_t__ start; } ;


 int advance_read_ptr (TYPE_1__*,int) ;
 int assert (int) ;
 int read_in (TYPE_1__*,int ,int) ;
 int userlist ;

int get_saved_userlist (struct connection *c, int list_id) {
  if (!c->Tmp) {
    return -1;
  }
  struct keep_mc_header *D = (struct keep_mc_header *) c->Tmp->start;
  advance_read_ptr (c->Tmp, sizeof (struct keep_mc_header));
  int res = D->num;
  assert (read_in (c->Tmp, userlist, res * 4) == 4 * res);
  if (D->list_id != list_id) {
    return -1;
  }
  return res;
}
