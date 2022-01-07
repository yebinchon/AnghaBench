
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CLP_BLK_SIZE ;
 int free_pages (unsigned long,int ) ;
 int get_order (int ) ;

__attribute__((used)) static void clp_free_block(void *ptr)
{
 free_pages((unsigned long) ptr, get_order(CLP_BLK_SIZE));
}
