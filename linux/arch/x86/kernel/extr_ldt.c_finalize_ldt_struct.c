
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ldt_struct {int nr_entries; int entries; } ;


 int paravirt_alloc_ldt (int ,int ) ;

__attribute__((used)) static void finalize_ldt_struct(struct ldt_struct *ldt)
{
 paravirt_alloc_ldt(ldt->entries, ldt->nr_entries);
}
