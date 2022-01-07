
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t vci_t ;
struct lanai_vcc {size_t vci; int * vbase; } ;
struct lanai_dev {struct lanai_vcc** vccs; int conf1; int nbound; } ;


 int CONFIG1_POWERDOWN ;
 int DPRINTK (char*,...) ;
 int * cardvcc_addr (struct lanai_dev*,size_t) ;
 int conf1_write (struct lanai_dev*) ;
 int conf2_write (struct lanai_dev*) ;

__attribute__((used)) static inline void host_vcc_bind(struct lanai_dev *lanai,
 struct lanai_vcc *lvcc, vci_t vci)
{
 if (lvcc->vbase != ((void*)0))
  return;
 DPRINTK("Binding vci %d\n", vci);
 lvcc->vbase = cardvcc_addr(lanai, vci);
 lanai->vccs[lvcc->vci = vci] = lvcc;
}
