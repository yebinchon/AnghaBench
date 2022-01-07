
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int hclk_tns; } ;
struct s3c_cpufreq_config {TYPE_1__ freq; } ;
struct s3c2412_iobank_timing {int wstbrd; void* smbwstbrd; int wstwen; void* smbwstwen; int wstoen; void* smbwstoen; int wstwr; void* smbwstwr; int wstrd; void* smbwstrd; int idcy; void* smbidcyr; } ;


 void* calc_timing (int ,unsigned int,int*) ;

__attribute__((used)) static int s3c2412_calc_bank(struct s3c_cpufreq_config *cfg,
        struct s3c2412_iobank_timing *bt)
{
 unsigned int hclk = cfg->freq.hclk_tns;
 int err = 0;

 bt->smbidcyr = calc_timing(bt->idcy, hclk, &err);
 bt->smbwstrd = calc_timing(bt->wstrd, hclk, &err);
 bt->smbwstwr = calc_timing(bt->wstwr, hclk, &err);
 bt->smbwstoen = calc_timing(bt->wstoen, hclk, &err);
 bt->smbwstwen = calc_timing(bt->wstwen, hclk, &err);
 bt->smbwstbrd = calc_timing(bt->wstbrd, hclk, &err);

 return err;
}
