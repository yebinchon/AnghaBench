
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int do_reloc_info ;
 int printf (char*,char*,char*,char*,char*,char*) ;
 int walk_relocs (int ) ;

__attribute__((used)) static void print_reloc_info(void)
{
 printf("%16s  %10s  %16s  %40s  %16s\n",
  "reloc section",
  "offset",
  "reloc type",
  "symbol",
  "symbol section");
 walk_relocs(do_reloc_info);
}
