
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* wi_private_t ;
struct wi_private {int dummy; } ;
struct TYPE_5__ {int partial; int in; } ;


 int cb_free (int ) ;
 int free (TYPE_1__*) ;
 int memset (TYPE_1__*,int ,int) ;

void wi_private_free(wi_private_t my) {
  if (my) {
    cb_free(my->in);
    cb_free(my->partial);
    memset(my, 0, sizeof(struct wi_private));
    free(my);
  }
}
