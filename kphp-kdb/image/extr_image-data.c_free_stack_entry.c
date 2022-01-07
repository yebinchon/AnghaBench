
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct stack_entry {int tp; scalar_t__ a; } ;
struct TYPE_3__ {scalar_t__ reference_count; } ;
typedef TYPE_1__ Image ;


 int DestroyImage (TYPE_1__*) ;



 int vkprintf (int,char*,int) ;

__attribute__((used)) static void free_stack_entry (struct stack_entry *E) {
  switch (E->tp) {
  case 129:
  case 128:
    break;
  case 130:
    vkprintf (4, "free_stack_entry: DestroyImage (image->reference_count: %d)\n", (int) ((Image *) E->a)->reference_count);
    DestroyImage ((Image *) E->a);
  }
}
