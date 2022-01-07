
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spu_state {int dummy; } ;
struct spu {int dummy; } ;


 int check_ppu_mb_stat (struct spu_state*,struct spu*) ;
 int check_ppuint_mb_stat (struct spu_state*,struct spu*) ;
 int clear_interrupts (struct spu_state*,struct spu*) ;
 int enable_user_access (struct spu_state*,struct spu*) ;
 int issue_mfc_tlbie (struct spu_state*,struct spu*) ;
 int reenable_interrupts (struct spu_state*,struct spu*) ;
 int reset_switch_active (struct spu_state*,struct spu*) ;
 int restore_ch_part1 (struct spu_state*,struct spu*) ;
 int restore_ch_part2 (struct spu_state*,struct spu*) ;
 int restore_decr_wrapped (struct spu_state*,struct spu*) ;
 int restore_ls_16kb (struct spu_state*,struct spu*) ;
 int restore_mfc_cntl (struct spu_state*,struct spu*) ;
 int restore_mfc_csr_ato (struct spu_state*,struct spu*) ;
 int restore_mfc_csr_cmd (struct spu_state*,struct spu*) ;
 int restore_mfc_csr_tsq (struct spu_state*,struct spu*) ;
 int restore_mfc_queues (struct spu_state*,struct spu*) ;
 int restore_mfc_sr1 (struct spu_state*,struct spu*) ;
 int restore_mfc_tclass_id (struct spu_state*,struct spu*) ;
 int restore_other_spu_access (struct spu_state*,struct spu*) ;
 int restore_pm_trace (struct spu_state*,struct spu*) ;
 int restore_ppu_querymask (struct spu_state*,struct spu*) ;
 int restore_ppu_querytype (struct spu_state*,struct spu*) ;
 int restore_spu_cfg (struct spu_state*,struct spu*) ;
 int restore_spu_lslr (struct spu_state*,struct spu*) ;
 int restore_spu_mb (struct spu_state*,struct spu*) ;
 int restore_spu_npc (struct spu_state*,struct spu*) ;
 int restore_spu_privcntl (struct spu_state*,struct spu*) ;
 int restore_spu_runcntl (struct spu_state*,struct spu*) ;
 int restore_status_part1 (struct spu_state*,struct spu*) ;
 int restore_status_part2 (struct spu_state*,struct spu*) ;
 int set_int_route (struct spu_state*,struct spu*) ;
 int set_llr_event (struct spu_state*,struct spu*) ;
 int spu_invalidate_slbs (struct spu*) ;
 int suspend_mfc (struct spu_state*,struct spu*) ;
 int wait_suspend_mfc_complete (struct spu_state*,struct spu*) ;
 int wait_tag_complete (struct spu_state*,struct spu*) ;

__attribute__((used)) static void restore_csa(struct spu_state *next, struct spu *spu)
{





 restore_spu_privcntl(next, spu);
 restore_status_part1(next, spu);
 restore_status_part2(next, spu);
 restore_ls_16kb(next, spu);
 wait_tag_complete(next, spu);
 suspend_mfc(next, spu);
 wait_suspend_mfc_complete(next, spu);
 issue_mfc_tlbie(next, spu);
 clear_interrupts(next, spu);
 restore_mfc_queues(next, spu);
 restore_ppu_querymask(next, spu);
 restore_ppu_querytype(next, spu);
 restore_mfc_csr_tsq(next, spu);
 restore_mfc_csr_cmd(next, spu);
 restore_mfc_csr_ato(next, spu);
 restore_mfc_tclass_id(next, spu);
 set_llr_event(next, spu);
 restore_decr_wrapped(next, spu);
 restore_ch_part1(next, spu);
 restore_ch_part2(next, spu);
 restore_spu_lslr(next, spu);
 restore_spu_cfg(next, spu);
 restore_pm_trace(next, spu);
 restore_spu_npc(next, spu);
 restore_spu_mb(next, spu);
 check_ppu_mb_stat(next, spu);
 check_ppuint_mb_stat(next, spu);
 spu_invalidate_slbs(spu);
 restore_mfc_sr1(next, spu);
 set_int_route(next, spu);
 restore_other_spu_access(next, spu);
 restore_spu_runcntl(next, spu);
 restore_mfc_cntl(next, spu);
 enable_user_access(next, spu);
 reset_switch_active(next, spu);
 reenable_interrupts(next, spu);
}
