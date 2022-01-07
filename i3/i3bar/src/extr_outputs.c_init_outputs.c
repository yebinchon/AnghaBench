
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct outputs_head {int dummy; } ;


 int SLIST_INIT (int ) ;
 int outputs ;
 int smalloc (int) ;

void init_outputs(void) {
    outputs = smalloc(sizeof(struct outputs_head));
    SLIST_INIT(outputs);
}
