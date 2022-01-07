
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u32 ;
struct pci_pbm_info {unsigned long ino_bitmap; } ;


 unsigned long IMAP_INO ;

__attribute__((used)) static int pbm_routes_this_ino(struct pci_pbm_info *pbm, u32 ino)
{
 ino &= IMAP_INO;

 if (pbm->ino_bitmap & (1UL << ino))
  return 1;

 return 0;
}
