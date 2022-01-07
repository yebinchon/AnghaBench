
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigcontext {int dummy; } ;



__attribute__((used)) static inline int restore_fpu_state(struct sigcontext *sc)
{
 return 0;
}
