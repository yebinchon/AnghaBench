
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct st_clk_quadfs_fsynth {size_t chan; scalar_t__ lock; int nsdiv; TYPE_1__* data; int sdiv; int pe; int md; } ;
struct TYPE_2__ {scalar_t__ nsdiv_present; } ;


 int CLKGEN_WRITE (struct st_clk_quadfs_fsynth*,int ,int ) ;
 int * en ;
 int * mdiv ;
 int * nsdiv ;
 int * pe ;
 int * sdiv ;
 int spin_lock_irqsave (scalar_t__,unsigned long) ;
 int spin_unlock_irqrestore (scalar_t__,unsigned long) ;

__attribute__((used)) static void quadfs_fsynth_program_rate(struct st_clk_quadfs_fsynth *fs)
{
 unsigned long flags = 0;






 CLKGEN_WRITE(fs, en[fs->chan], 0);

 CLKGEN_WRITE(fs, mdiv[fs->chan], fs->md);
 CLKGEN_WRITE(fs, pe[fs->chan], fs->pe);
 CLKGEN_WRITE(fs, sdiv[fs->chan], fs->sdiv);

 if (fs->lock)
  spin_lock_irqsave(fs->lock, flags);

 if (fs->data->nsdiv_present)
  CLKGEN_WRITE(fs, nsdiv[fs->chan], fs->nsdiv);

 if (fs->lock)
  spin_unlock_irqrestore(fs->lock, flags);
}
