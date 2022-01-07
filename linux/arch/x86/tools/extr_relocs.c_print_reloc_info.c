
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int do_reloc_info ;
 int printf (char*) ;
 int walk_relocs (int ) ;

__attribute__((used)) static void print_reloc_info(void)
{
 printf("reloc section\treloc type\tsymbol\tsymbol section\n");
 walk_relocs(do_reloc_info);
}
