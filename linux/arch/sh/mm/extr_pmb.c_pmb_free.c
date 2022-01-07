
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmb_entry {int * link; int entry; } ;


 int PMB_NO_ENTRY ;
 int __clear_bit (int ,int ) ;
 int pmb_map ;

__attribute__((used)) static void pmb_free(struct pmb_entry *pmbe)
{
 __clear_bit(pmbe->entry, pmb_map);

 pmbe->entry = PMB_NO_ENTRY;
 pmbe->link = ((void*)0);
}
