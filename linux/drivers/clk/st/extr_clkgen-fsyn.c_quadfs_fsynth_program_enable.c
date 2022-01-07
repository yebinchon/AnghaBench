
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_clk_quadfs_fsynth {size_t chan; } ;


 int CLKGEN_WRITE (struct st_clk_quadfs_fsynth*,int ,int) ;
 int * en ;

__attribute__((used)) static void quadfs_fsynth_program_enable(struct st_clk_quadfs_fsynth *fs)
{




 CLKGEN_WRITE(fs, en[fs->chan], 1);
 CLKGEN_WRITE(fs, en[fs->chan], 0);
}
