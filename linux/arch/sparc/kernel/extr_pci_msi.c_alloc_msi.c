
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_pbm_info {int msi_num; int msi_first; int msi_bitmap; } ;


 int ENOENT ;
 int test_and_set_bit (int,int ) ;

__attribute__((used)) static int alloc_msi(struct pci_pbm_info *pbm)
{
 int i;

 for (i = 0; i < pbm->msi_num; i++) {
  if (!test_and_set_bit(i, pbm->msi_bitmap))
   return i + pbm->msi_first;
 }

 return -ENOENT;
}
