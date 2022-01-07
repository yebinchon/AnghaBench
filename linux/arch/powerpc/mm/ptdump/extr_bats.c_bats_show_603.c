
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int BAT_SHOW_603 (struct seq_file*,int,int ,int ,int) ;
 int MMU_FTR_USE_HIGH_BATS ;
 int SPRN_DBAT0L ;
 int SPRN_DBAT0U ;
 int SPRN_DBAT1L ;
 int SPRN_DBAT1U ;
 int SPRN_DBAT2L ;
 int SPRN_DBAT2U ;
 int SPRN_DBAT3L ;
 int SPRN_DBAT3U ;
 int SPRN_DBAT4L ;
 int SPRN_DBAT4U ;
 int SPRN_DBAT5L ;
 int SPRN_DBAT5U ;
 int SPRN_DBAT6L ;
 int SPRN_DBAT6U ;
 int SPRN_DBAT7L ;
 int SPRN_DBAT7U ;
 int SPRN_IBAT0L ;
 int SPRN_IBAT0U ;
 int SPRN_IBAT1L ;
 int SPRN_IBAT1U ;
 int SPRN_IBAT2L ;
 int SPRN_IBAT2U ;
 int SPRN_IBAT3L ;
 int SPRN_IBAT3U ;
 int SPRN_IBAT4L ;
 int SPRN_IBAT4U ;
 int SPRN_IBAT5L ;
 int SPRN_IBAT5U ;
 int SPRN_IBAT6L ;
 int SPRN_IBAT6U ;
 int SPRN_IBAT7L ;
 int SPRN_IBAT7U ;
 scalar_t__ mmu_has_feature (int ) ;
 int seq_puts (struct seq_file*,char*) ;

__attribute__((used)) static int bats_show_603(struct seq_file *m, void *v)
{
 seq_puts(m, "---[ Instruction Block Address Translation ]---\n");

 BAT_SHOW_603(m, 0, SPRN_IBAT0L, SPRN_IBAT0U, 0);
 BAT_SHOW_603(m, 1, SPRN_IBAT1L, SPRN_IBAT1U, 0);
 BAT_SHOW_603(m, 2, SPRN_IBAT2L, SPRN_IBAT2U, 0);
 BAT_SHOW_603(m, 3, SPRN_IBAT3L, SPRN_IBAT3U, 0);
 if (mmu_has_feature(MMU_FTR_USE_HIGH_BATS)) {
  BAT_SHOW_603(m, 4, SPRN_IBAT4L, SPRN_IBAT4U, 0);
  BAT_SHOW_603(m, 5, SPRN_IBAT5L, SPRN_IBAT5U, 0);
  BAT_SHOW_603(m, 6, SPRN_IBAT6L, SPRN_IBAT6U, 0);
  BAT_SHOW_603(m, 7, SPRN_IBAT7L, SPRN_IBAT7U, 0);
 }

 seq_puts(m, "\n---[ Data Block Address Translation ]---\n");

 BAT_SHOW_603(m, 0, SPRN_DBAT0L, SPRN_DBAT0U, 1);
 BAT_SHOW_603(m, 1, SPRN_DBAT1L, SPRN_DBAT1U, 1);
 BAT_SHOW_603(m, 2, SPRN_DBAT2L, SPRN_DBAT2U, 1);
 BAT_SHOW_603(m, 3, SPRN_DBAT3L, SPRN_DBAT3U, 1);
 if (mmu_has_feature(MMU_FTR_USE_HIGH_BATS)) {
  BAT_SHOW_603(m, 4, SPRN_DBAT4L, SPRN_DBAT4U, 1);
  BAT_SHOW_603(m, 5, SPRN_DBAT5L, SPRN_DBAT5U, 1);
  BAT_SHOW_603(m, 6, SPRN_DBAT6L, SPRN_DBAT6U, 1);
  BAT_SHOW_603(m, 7, SPRN_DBAT7L, SPRN_DBAT7U, 1);
 }

 return 0;
}
