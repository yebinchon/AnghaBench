
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int id; } ;
typedef TYPE_1__ queue ;
typedef int ll ;


 int check_qname (char*,int ) ;
 int get_qtype (char*) ;
 TYPE_1__* get_queue (char*,int) ;
 int update_news (TYPE_1__*) ;

int get_queue_alias (char *s, ll *res) {
  if (!check_qname (s, get_qtype (s))) {
    return 0;
  }
  queue *q = get_queue (s, 1);
  update_news (q);
  *res = q->id;
  return 1;
}
