
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int xsave; } ;
struct fpu {TYPE_2__ state; } ;
struct TYPE_4__ {struct fpu fpu; } ;
struct TYPE_6__ {TYPE_1__ thread; } ;


 TYPE_3__* current ;
 int fpu__save (struct fpu*) ;
 void const* get_xsave_addr (int *,int) ;

const void *get_xsave_field_ptr(int xfeature_nr)
{
 struct fpu *fpu = &current->thread.fpu;





 fpu__save(fpu);

 return get_xsave_addr(&fpu->state.xsave, xfeature_nr);
}
