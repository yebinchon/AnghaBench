
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct my_struct {int dummy; } ;
typedef TYPE_1__* my_t ;
struct TYPE_5__ {int ws; } ;


 int free (TYPE_1__*) ;
 int memset (TYPE_1__*,int ,int) ;
 int ws_free (int ) ;

void my_free(my_t my) {
  if (my) {
    ws_free(my->ws);
    memset(my, 0, sizeof(struct my_struct));
    free(my);
  }
}
