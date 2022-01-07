
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct macio_chip {int of_node; } ;


 int DBG (char*,int ) ;
 int macio_mmio_handlers ;
 int pmf_register_driver (int ,int *,struct macio_chip*) ;

__attribute__((used)) static void macio_mmio_init_one(struct macio_chip *macio)
{
 DBG("Installing MMIO functions for macio %pOF\n",
     macio->of_node);

 pmf_register_driver(macio->of_node, &macio_mmio_handlers, macio);
}
