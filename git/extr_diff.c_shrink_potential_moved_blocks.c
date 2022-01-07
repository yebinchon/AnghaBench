
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct moved_block {scalar_t__ match; } ;
typedef int pmb ;


 int memset (struct moved_block*,int ,int) ;

__attribute__((used)) static int shrink_potential_moved_blocks(struct moved_block *pmb,
      int pmb_nr)
{
 int lp, rp;


 for (lp = 0, rp = pmb_nr - 1; lp <= rp;) {
  while (lp < pmb_nr && pmb[lp].match)
   lp++;


  while (rp > -1 && !pmb[rp].match)
   rp--;


  if (lp < pmb_nr && rp > -1 && lp < rp) {
   pmb[lp] = pmb[rp];
   memset(&pmb[rp], 0, sizeof(pmb[rp]));
   rp--;
   lp++;
  }
 }


 return rp + 1;
}
