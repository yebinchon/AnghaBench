
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unwind_state {unsigned long loc; unsigned long codeAlign; } ;


 int unw_debug (char*,unsigned long,unsigned long) ;

__attribute__((used)) static int advance_loc(unsigned long delta, struct unwind_state *state)
{
 state->loc += delta * state->codeAlign;




 unw_debug("delta %3lu => loc 0x%lx: ", delta, state->loc);
 return 1;
}
