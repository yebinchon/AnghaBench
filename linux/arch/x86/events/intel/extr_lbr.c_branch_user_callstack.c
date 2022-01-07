
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int X86_BR_CALL_STACK ;
 unsigned int X86_BR_USER ;

__attribute__((used)) static inline bool branch_user_callstack(unsigned br_sel)
{
 return (br_sel & X86_BR_USER) && (br_sel & X86_BR_CALL_STACK);
}
