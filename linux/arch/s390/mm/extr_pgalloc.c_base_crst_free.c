
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CRST_ALLOC_ORDER ;
 int free_pages (unsigned long,int ) ;

__attribute__((used)) static void base_crst_free(unsigned long table)
{
 free_pages(table, CRST_ALLOC_ORDER);
}
