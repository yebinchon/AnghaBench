
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s3c2410_nand_set {int* nr_map; } ;


 unsigned int ANUBIS_CTRL1_NANDSEL ;
 int ANUBIS_VA_CTRL1 ;
 unsigned int __raw_readb (int ) ;
 int __raw_writeb (unsigned int,int ) ;
 int pr_debug (char*,unsigned int,...) ;

__attribute__((used)) static void anubis_nand_select(struct s3c2410_nand_set *set, int slot)
{
 unsigned int tmp;

 slot = set->nr_map[slot] & 3;

 pr_debug("anubis_nand: selecting slot %d (set %p,%p)\n",
   slot, set, set->nr_map);

 tmp = __raw_readb(ANUBIS_VA_CTRL1);
 tmp &= ~ANUBIS_CTRL1_NANDSEL;
 tmp |= slot;

 pr_debug("anubis_nand: ctrl1 now %02x\n", tmp);

 __raw_writeb(tmp, ANUBIS_VA_CTRL1);
}
