
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lanai_vcc {size_t vci; int * vbase; } ;
struct lanai_dev {scalar_t__ nbound; int conf1; int ** vccs; } ;


 int CONFIG1_POWERDOWN ;
 int DPRINTK (char*,...) ;
 int conf1_write (struct lanai_dev*) ;

__attribute__((used)) static inline void host_vcc_unbind(struct lanai_dev *lanai,
 struct lanai_vcc *lvcc)
{
 if (lvcc->vbase == ((void*)0))
  return;
 DPRINTK("Unbinding vci %d\n", lvcc->vci);
 lvcc->vbase = ((void*)0);
 lanai->vccs[lvcc->vci] = ((void*)0);







}
