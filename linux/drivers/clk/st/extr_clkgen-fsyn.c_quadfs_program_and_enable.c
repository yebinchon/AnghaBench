
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm_fs {int nsdiv; int sdiv; int pe; int mdiv; } ;
struct st_clk_quadfs_fsynth {int nsdiv; int sdiv; int pe; int md; } ;


 int quadfs_fsynth_program_enable (struct st_clk_quadfs_fsynth*) ;
 int quadfs_fsynth_program_rate (struct st_clk_quadfs_fsynth*) ;

__attribute__((used)) static void quadfs_program_and_enable(struct st_clk_quadfs_fsynth *fs,
  struct stm_fs *params)
{
 fs->md = params->mdiv;
 fs->pe = params->pe;
 fs->sdiv = params->sdiv;
 fs->nsdiv = params->nsdiv;





 quadfs_fsynth_program_rate(fs);
 quadfs_fsynth_program_enable(fs);
}
