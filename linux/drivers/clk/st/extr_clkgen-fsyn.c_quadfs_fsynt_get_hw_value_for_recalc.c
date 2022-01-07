
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stm_fs {int nsdiv; void* sdiv; void* pe; void* mdiv; } ;
struct st_clk_quadfs_fsynth {size_t chan; int nsdiv; void* sdiv; void* pe; void* md; TYPE_1__* data; } ;
struct TYPE_2__ {scalar_t__ nsdiv_present; } ;


 void* CLKGEN_READ (struct st_clk_quadfs_fsynth*,int ) ;
 int * mdiv ;
 int * nsdiv ;
 int * pe ;
 int * sdiv ;

__attribute__((used)) static int quadfs_fsynt_get_hw_value_for_recalc(struct st_clk_quadfs_fsynth *fs,
  struct stm_fs *params)
{



 params->mdiv = CLKGEN_READ(fs, mdiv[fs->chan]);
 params->pe = CLKGEN_READ(fs, pe[fs->chan]);
 params->sdiv = CLKGEN_READ(fs, sdiv[fs->chan]);

 if (fs->data->nsdiv_present)
  params->nsdiv = CLKGEN_READ(fs, nsdiv[fs->chan]);
 else
  params->nsdiv = 1;




 if (!params->mdiv && !params->pe && !params->sdiv)
  return 1;

 fs->md = params->mdiv;
 fs->pe = params->pe;
 fs->sdiv = params->sdiv;
 fs->nsdiv = params->nsdiv;

 return 0;
}
