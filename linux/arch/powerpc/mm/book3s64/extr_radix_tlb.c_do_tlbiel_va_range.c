
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tlbiel_va_range {int also_pwc; int psize; int page_size; int pid; int end; int start; } ;


 int _tlbiel_va_range (int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void do_tlbiel_va_range(void *info)
{
 struct tlbiel_va_range *t = info;

 _tlbiel_va_range(t->start, t->end, t->pid, t->page_size,
        t->psize, t->also_pwc);
}
