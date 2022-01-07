
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __pa_symbol (unsigned long*) ;
 int free_init_pages (char*,int ,int ) ;

__attribute__((used)) static void free_init_pages_eva_malta(void *begin, void *end)
{
 free_init_pages("unused kernel", __pa_symbol((unsigned long *)begin),
   __pa_symbol((unsigned long *)end));
}
