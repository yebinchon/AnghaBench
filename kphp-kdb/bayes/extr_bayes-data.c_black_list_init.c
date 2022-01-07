
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int text_len; int * next; int * text; } ;
typedef TYPE_1__ black_list ;



void black_list_init (black_list *bl) {
  bl->text_len = -1;
  bl->text = ((void*)0);
  bl->next = ((void*)0);
}
