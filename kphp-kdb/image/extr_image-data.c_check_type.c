
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct forth_stack {size_t top; TYPE_1__* x; int error; } ;
struct TYPE_2__ {int tp; } ;


 int snprintf (int ,int,char*,char*,...) ;
 char* type_to_string (int) ;

__attribute__((used)) static int check_type (struct forth_stack *st, int tp_bitset, char *who) {
  if (st->top < 0) {
    snprintf (st->error, sizeof (st->error), "%s (stack underflow)", who);
    return 0;
  }
  if (!(st->x[st->top].tp & tp_bitset)) {
    snprintf (st->error, sizeof (st->error), "%s (%s type found instead of 0x%x type))", who, type_to_string (st->x[st->top].tp), tp_bitset);
    return 0;
  }
  return 1;
}
