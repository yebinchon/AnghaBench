
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* wi_private_t ;
struct wi_private {int dummy; } ;
struct TYPE_5__ {void* partial; void* in; } ;


 void* cb_new () ;
 int malloc (int) ;
 int memset (TYPE_1__*,int ,int) ;
 int wi_private_free (TYPE_1__*) ;

wi_private_t wi_private_new() {
  wi_private_t my = (wi_private_t)malloc(sizeof(
        struct wi_private));
  if (my) {
    memset(my, 0, sizeof(struct wi_private));
    my->in = cb_new();
    my->partial = cb_new();
    if (!my->in || !my->partial) {
      wi_private_free(my);
      return ((void*)0);
    }
  }
  return my;
}
