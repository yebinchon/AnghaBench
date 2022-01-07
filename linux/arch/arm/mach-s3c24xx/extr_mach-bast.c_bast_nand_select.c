
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s3c2410_nand_set {int* nr_map; } ;


 unsigned int BAST_CPLD_CTLR2_IDERST ;
 unsigned int BAST_CPLD_CTRL2_WNAND ;
 int BAST_VA_CTRL2 ;
 unsigned int __raw_readb (int ) ;
 int __raw_writeb (unsigned int,int ) ;
 int pr_debug (char*,unsigned int,...) ;

__attribute__((used)) static void bast_nand_select(struct s3c2410_nand_set *set, int slot)
{
 unsigned int tmp;

 slot = set->nr_map[slot] & 3;

 pr_debug("bast_nand: selecting slot %d (set %p,%p)\n",
   slot, set, set->nr_map);

 tmp = __raw_readb(BAST_VA_CTRL2);
 tmp &= BAST_CPLD_CTLR2_IDERST;
 tmp |= slot;
 tmp |= BAST_CPLD_CTRL2_WNAND;

 pr_debug("bast_nand: ctrl2 now %02x\n", tmp);

 __raw_writeb(tmp, BAST_VA_CTRL2);
}
