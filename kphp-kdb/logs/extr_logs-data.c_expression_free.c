
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int root; int token_list; } ;
typedef TYPE_1__ expression ;


 int del_node (int ) ;
 int del_token_list (int ) ;

void expression_free (expression *e) {
  del_token_list (e->token_list);
  del_node (e->root);
}
