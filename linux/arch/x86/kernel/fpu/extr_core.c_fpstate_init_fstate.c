
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fregs_state {int cwd; int swd; int twd; int fos; } ;



__attribute__((used)) static inline void fpstate_init_fstate(struct fregs_state *fp)
{
 fp->cwd = 0xffff037fu;
 fp->swd = 0xffff0000u;
 fp->twd = 0xffffffffu;
 fp->fos = 0xffff0000u;
}
