
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uleb128_t ;
struct unwind_state {TYPE_1__* regs; } ;
typedef enum item_location { ____Placeholder_item_location } item_location ;
struct TYPE_2__ {int where; size_t value; } ;


 size_t ARRAY_SIZE (TYPE_1__*) ;




 int unw_debug (char*,...) ;

__attribute__((used)) static void set_rule(uleb128_t reg, enum item_location where, uleb128_t value,
       struct unwind_state *state)
{
 if (reg < ARRAY_SIZE(state->regs)) {
  state->regs[reg].where = where;
  state->regs[reg].value = value;
 }
}
