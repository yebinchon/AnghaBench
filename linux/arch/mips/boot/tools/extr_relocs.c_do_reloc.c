
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct section {int dummy; } ;
struct TYPE_6__ {int r_offset; int r_info; } ;
struct TYPE_5__ {scalar_t__ st_value; int st_info; } ;
typedef TYPE_1__ Elf_Sym ;
typedef TYPE_2__ Elf_Rel ;


 unsigned int ELF_R_TYPE (int ) ;
 unsigned int ELF_ST_BIND (int ) ;
 unsigned int STB_WEAK ;
 int add_reloc (int *,int ,unsigned int) ;
 int die (char*,int ,unsigned int) ;
 scalar_t__ regex_skip_reloc (char const*) ;
 int rel_type (unsigned int) ;
 int relocs ;

__attribute__((used)) static int do_reloc(struct section *sec, Elf_Rel *rel, Elf_Sym *sym,
        const char *symname)
{
 unsigned r_type = ELF_R_TYPE(rel->r_info);
 unsigned bind = ELF_ST_BIND(sym->st_info);

 if ((bind == STB_WEAK) && (sym->st_value == 0)) {

  return 0;
 }

 if (regex_skip_reloc(symname))
  return 0;

 switch (r_type) {
 case 132:
 case 128:
 case 131:
 case 130:
 case 129:




 case 134:
 case 135:



 case 133:



  break;

 case 137:
 case 138:
 case 139:
 case 136:
  add_reloc(&relocs, rel->r_offset, r_type);
  break;

 default:
  die("Unsupported relocation type: %s (%d)\n",
      rel_type(r_type), r_type);
  break;
 }

 return 0;
}
