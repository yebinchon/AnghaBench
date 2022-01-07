
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct module {int name; } ;
struct TYPE_11__ {int r_offset; int r_info; scalar_t__ r_addend; } ;
struct TYPE_10__ {int sh_size; size_t sh_info; scalar_t__ sh_addr; } ;
struct TYPE_9__ {scalar_t__ st_value; } ;
typedef TYPE_1__ Elf64_Sym ;
typedef TYPE_2__ Elf64_Shdr ;
typedef TYPE_3__ Elf64_Rela ;


 int AARCH64_INSN_IMM_12 ;
 int AARCH64_INSN_IMM_14 ;
 int AARCH64_INSN_IMM_19 ;
 int AARCH64_INSN_IMM_26 ;
 int AARCH64_INSN_IMM_ADR ;
 int AARCH64_INSN_IMM_MOVKZ ;
 int AARCH64_INSN_IMM_MOVNZ ;
 int CONFIG_ARM64_MODULE_PLTS ;
 int ELF64_R_SYM (int ) ;
 int ELF64_R_TYPE (int ) ;
 int ENOEXEC ;
 int ERANGE ;
 int IS_ENABLED (int ) ;
 int RELOC_OP_ABS ;
 int RELOC_OP_PREL ;
 scalar_t__ module_emit_plt_entry (struct module*,TYPE_2__*,void*,TYPE_3__*,TYPE_1__*) ;
 int pr_err (char*,int ,int,...) ;
 int reloc_data (int ,void*,scalar_t__,int) ;
 int reloc_insn_adrp (struct module*,TYPE_2__*,void*,scalar_t__) ;
 int reloc_insn_imm (int ,void*,scalar_t__,int,int,int ) ;
 int reloc_insn_movw (int ,void*,scalar_t__,int,int ) ;

int apply_relocate_add(Elf64_Shdr *sechdrs,
         const char *strtab,
         unsigned int symindex,
         unsigned int relsec,
         struct module *me)
{
 unsigned int i;
 int ovf;
 bool overflow_check;
 Elf64_Sym *sym;
 void *loc;
 u64 val;
 Elf64_Rela *rel = (void *)sechdrs[relsec].sh_addr;

 for (i = 0; i < sechdrs[relsec].sh_size / sizeof(*rel); i++) {

  loc = (void *)sechdrs[sechdrs[relsec].sh_info].sh_addr
   + rel[i].r_offset;


  sym = (Elf64_Sym *)sechdrs[symindex].sh_addr
   + ELF64_R_SYM(rel[i].r_info);


  val = sym->st_value + rel[i].r_addend;


  overflow_check = 1;


  switch (ELF64_R_TYPE(rel[i].r_info)) {

  case 128:
  case 133:
   ovf = 0;
   break;


  case 164:
   overflow_check = 0;
   ovf = reloc_data(RELOC_OP_ABS, loc, val, 64);
   break;
  case 165:
   ovf = reloc_data(RELOC_OP_ABS, loc, val, 32);
   break;
  case 166:
   ovf = reloc_data(RELOC_OP_ABS, loc, val, 16);
   break;
  case 130:
   overflow_check = 0;
   ovf = reloc_data(RELOC_OP_PREL, loc, val, 64);
   break;
  case 131:
   ovf = reloc_data(RELOC_OP_PREL, loc, val, 32);
   break;
  case 132:
   ovf = reloc_data(RELOC_OP_PREL, loc, val, 16);
   break;


  case 139:
   overflow_check = 0;

  case 140:
   ovf = reloc_insn_movw(RELOC_OP_ABS, loc, val, 0,
           AARCH64_INSN_IMM_MOVKZ);
   break;
  case 137:
   overflow_check = 0;

  case 138:
   ovf = reloc_insn_movw(RELOC_OP_ABS, loc, val, 16,
           AARCH64_INSN_IMM_MOVKZ);
   break;
  case 135:
   overflow_check = 0;

  case 136:
   ovf = reloc_insn_movw(RELOC_OP_ABS, loc, val, 32,
           AARCH64_INSN_IMM_MOVKZ);
   break;
  case 134:

   overflow_check = 0;
   ovf = reloc_insn_movw(RELOC_OP_ABS, loc, val, 48,
           AARCH64_INSN_IMM_MOVKZ);
   break;
  case 143:
   ovf = reloc_insn_movw(RELOC_OP_ABS, loc, val, 0,
           AARCH64_INSN_IMM_MOVNZ);
   break;
  case 142:
   ovf = reloc_insn_movw(RELOC_OP_ABS, loc, val, 16,
           AARCH64_INSN_IMM_MOVNZ);
   break;
  case 141:
   ovf = reloc_insn_movw(RELOC_OP_ABS, loc, val, 32,
           AARCH64_INSN_IMM_MOVNZ);
   break;
  case 149:
   overflow_check = 0;
   ovf = reloc_insn_movw(RELOC_OP_PREL, loc, val, 0,
           AARCH64_INSN_IMM_MOVKZ);
   break;
  case 150:
   ovf = reloc_insn_movw(RELOC_OP_PREL, loc, val, 0,
           AARCH64_INSN_IMM_MOVNZ);
   break;
  case 147:
   overflow_check = 0;
   ovf = reloc_insn_movw(RELOC_OP_PREL, loc, val, 16,
           AARCH64_INSN_IMM_MOVKZ);
   break;
  case 148:
   ovf = reloc_insn_movw(RELOC_OP_PREL, loc, val, 16,
           AARCH64_INSN_IMM_MOVNZ);
   break;
  case 145:
   overflow_check = 0;
   ovf = reloc_insn_movw(RELOC_OP_PREL, loc, val, 32,
           AARCH64_INSN_IMM_MOVKZ);
   break;
  case 146:
   ovf = reloc_insn_movw(RELOC_OP_PREL, loc, val, 32,
           AARCH64_INSN_IMM_MOVNZ);
   break;
  case 144:

   overflow_check = 0;
   ovf = reloc_insn_movw(RELOC_OP_PREL, loc, val, 48,
           AARCH64_INSN_IMM_MOVNZ);
   break;


  case 151:
   ovf = reloc_insn_imm(RELOC_OP_PREL, loc, val, 2, 19,
          AARCH64_INSN_IMM_19);
   break;
  case 162:
   ovf = reloc_insn_imm(RELOC_OP_PREL, loc, val, 0, 21,
          AARCH64_INSN_IMM_ADR);
   break;
  case 160:
   overflow_check = 0;

  case 161:
   ovf = reloc_insn_adrp(me, sechdrs, loc, val);
   if (ovf && ovf != -ERANGE)
    return ovf;
   break;
  case 163:
  case 152:
   overflow_check = 0;
   ovf = reloc_insn_imm(RELOC_OP_ABS, loc, val, 0, 12,
          AARCH64_INSN_IMM_12);
   break;
  case 155:
   overflow_check = 0;
   ovf = reloc_insn_imm(RELOC_OP_ABS, loc, val, 1, 11,
          AARCH64_INSN_IMM_12);
   break;
  case 154:
   overflow_check = 0;
   ovf = reloc_insn_imm(RELOC_OP_ABS, loc, val, 2, 10,
          AARCH64_INSN_IMM_12);
   break;
  case 153:
   overflow_check = 0;
   ovf = reloc_insn_imm(RELOC_OP_ABS, loc, val, 3, 9,
          AARCH64_INSN_IMM_12);
   break;
  case 156:
   overflow_check = 0;
   ovf = reloc_insn_imm(RELOC_OP_ABS, loc, val, 4, 8,
          AARCH64_INSN_IMM_12);
   break;
  case 129:
   ovf = reloc_insn_imm(RELOC_OP_PREL, loc, val, 2, 14,
          AARCH64_INSN_IMM_14);
   break;
  case 158:
   ovf = reloc_insn_imm(RELOC_OP_PREL, loc, val, 2, 19,
          AARCH64_INSN_IMM_19);
   break;
  case 157:
  case 159:
   ovf = reloc_insn_imm(RELOC_OP_PREL, loc, val, 2, 26,
          AARCH64_INSN_IMM_26);

   if (IS_ENABLED(CONFIG_ARM64_MODULE_PLTS) &&
       ovf == -ERANGE) {
    val = module_emit_plt_entry(me, sechdrs, loc, &rel[i], sym);
    if (!val)
     return -ENOEXEC;
    ovf = reloc_insn_imm(RELOC_OP_PREL, loc, val, 2,
           26, AARCH64_INSN_IMM_26);
   }
   break;

  default:
   pr_err("module %s: unsupported RELA relocation: %llu\n",
          me->name, ELF64_R_TYPE(rel[i].r_info));
   return -ENOEXEC;
  }

  if (overflow_check && ovf == -ERANGE)
   goto overflow;

 }

 return 0;

overflow:
 pr_err("module %s: overflow in relocation type %d val %Lx\n",
        me->name, (int)ELF64_R_TYPE(rel[i].r_info), val);
 return -ENOEXEC;
}
