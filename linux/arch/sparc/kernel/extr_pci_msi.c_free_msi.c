
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_pbm_info {int msi_bitmap; scalar_t__ msi_first; } ;


 int clear_bit (int,int ) ;

__attribute__((used)) static void free_msi(struct pci_pbm_info *pbm, int msi_num)
{
 msi_num -= pbm->msi_first;
 clear_bit(msi_num, pbm->msi_bitmap);
}
