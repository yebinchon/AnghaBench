
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spu_state {int dummy; } ;
struct spu {int dummy; } ;


 int purge_mfc_queue (struct spu_state*,struct spu*) ;
 int reset_ch (struct spu_state*,struct spu*) ;
 int reset_spu_lslr (struct spu_state*,struct spu*) ;
 int reset_spu_privcntl (struct spu_state*,struct spu*) ;
 int save_ch_part1 (struct spu_state*,struct spu*) ;
 int save_mfc_cmd (struct spu_state*,struct spu*) ;
 int save_mfc_csr_ato (struct spu_state*,struct spu*) ;
 int save_mfc_csr_cmd (struct spu_state*,struct spu*) ;
 int save_mfc_csr_tsq (struct spu_state*,struct spu*) ;
 int save_mfc_queues (struct spu_state*,struct spu*) ;
 int save_mfc_rag (struct spu_state*,struct spu*) ;
 int save_mfc_tclass_id (struct spu_state*,struct spu*) ;
 int save_pm_trace (struct spu_state*,struct spu*) ;
 int save_ppu_mb (struct spu_state*,struct spu*) ;
 int save_ppu_mb_stat (struct spu_state*,struct spu*) ;
 int save_ppu_querymask (struct spu_state*,struct spu*) ;
 int save_ppu_querytype (struct spu_state*,struct spu*) ;
 int save_ppu_tagstatus (struct spu_state*,struct spu*) ;
 int save_ppuint_mb (struct spu_state*,struct spu*) ;
 int save_spu_cfg (struct spu_state*,struct spu*) ;
 int save_spu_lslr (struct spu_state*,struct spu*) ;
 int save_spu_mb (struct spu_state*,struct spu*) ;
 int save_spu_npc (struct spu_state*,struct spu*) ;
 int save_spu_privcntl (struct spu_state*,struct spu*) ;
 int set_mfc_tclass_id (struct spu_state*,struct spu*) ;
 int setup_mfc_sr1 (struct spu_state*,struct spu*) ;
 int wait_purge_complete (struct spu_state*,struct spu*) ;

__attribute__((used)) static void save_csa(struct spu_state *prev, struct spu *spu)
{





 save_mfc_queues(prev, spu);
 save_ppu_querymask(prev, spu);
 save_ppu_querytype(prev, spu);
 save_ppu_tagstatus(prev, spu);
 save_mfc_csr_tsq(prev, spu);
 save_mfc_csr_cmd(prev, spu);
 save_mfc_csr_ato(prev, spu);
 save_mfc_tclass_id(prev, spu);
 set_mfc_tclass_id(prev, spu);
 save_mfc_cmd(prev, spu);
 purge_mfc_queue(prev, spu);
 wait_purge_complete(prev, spu);
 setup_mfc_sr1(prev, spu);
 save_spu_npc(prev, spu);
 save_spu_privcntl(prev, spu);
 reset_spu_privcntl(prev, spu);
 save_spu_lslr(prev, spu);
 reset_spu_lslr(prev, spu);
 save_spu_cfg(prev, spu);
 save_pm_trace(prev, spu);
 save_mfc_rag(prev, spu);
 save_ppu_mb_stat(prev, spu);
 save_ppu_mb(prev, spu);
 save_ppuint_mb(prev, spu);
 save_ch_part1(prev, spu);
 save_spu_mb(prev, spu);
 reset_ch(prev, spu);
}
