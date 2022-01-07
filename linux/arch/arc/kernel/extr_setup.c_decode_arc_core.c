
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct id_to_str {int id; char* str; } ;
struct TYPE_4__ {int dual; } ;
struct TYPE_3__ {int family; } ;
struct cpuinfo_arc {char* release; char* name; TYPE_2__ extn; TYPE_1__ core; } ;
struct bcr_uarch_build_arcv2 {int prod; int maj; } ;


 int ARC_REG_MICRO_ARCH_BCR ;
 int READ_BCR (int ,struct bcr_uarch_build_arcv2) ;
 struct id_to_str* arc_cpu_rel ;
 struct id_to_str* arc_legacy_rel ;
 scalar_t__ is_isa_arcompact () ;

__attribute__((used)) static void decode_arc_core(struct cpuinfo_arc *cpu)
{
 struct bcr_uarch_build_arcv2 uarch;
 const struct id_to_str *tbl;







 if (cpu->core.family < 0x54) {

  for (tbl = &arc_legacy_rel[0]; tbl->id != 0; tbl++) {
   if (cpu->core.family == tbl->id) {
    cpu->release = tbl->str;
    break;
   }
  }

  if (is_isa_arcompact())
   cpu->name = "ARC700";
  else if (tbl->str)
   cpu->name = "HS38";
  else
   cpu->name = cpu->release = "Unknown";

  return;
 }







 READ_BCR(ARC_REG_MICRO_ARCH_BCR, uarch);

 if (uarch.prod == 4) {
  cpu->name = "HS48";
  cpu->extn.dual = 1;

 } else {
  cpu->name = "HS38";
 }

 for (tbl = &arc_cpu_rel[0]; tbl->id != 0xFF; tbl++) {
  if (uarch.maj == tbl->id) {
   cpu->release = tbl->str;
   break;
  }
 }
}
