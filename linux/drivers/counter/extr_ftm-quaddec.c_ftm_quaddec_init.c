
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ftm_quaddec {int dummy; } ;


 int FTM_CNT ;
 int FTM_CNTIN ;
 int FTM_FLTCTRL ;
 int FTM_MOD ;
 int FTM_MODE ;
 int FTM_MODE_FTMEN ;
 int FTM_POL ;
 int FTM_QDCTRL ;
 int FTM_QDCTRL_QUADEN ;
 int FTM_SC ;
 int FTM_SC_PS_1 ;
 int FTM_SYNC ;
 int FTM_SYNCONF ;
 int ftm_clear_write_protection (struct ftm_quaddec*) ;
 int ftm_set_write_protection (struct ftm_quaddec*) ;
 int ftm_write (struct ftm_quaddec*,int ,int) ;

__attribute__((used)) static void ftm_quaddec_init(struct ftm_quaddec *ftm)
{
 ftm_clear_write_protection(ftm);






 ftm_write(ftm, FTM_MODE, FTM_MODE_FTMEN);
 ftm_write(ftm, FTM_CNTIN, 0x0000);
 ftm_write(ftm, FTM_MOD, 0xffff);
 ftm_write(ftm, FTM_CNT, 0x0);

 ftm_write(ftm, FTM_SC, FTM_SC_PS_1);


 ftm_write(ftm, FTM_QDCTRL, FTM_QDCTRL_QUADEN);


 ftm_write(ftm, FTM_POL, 0x0);
 ftm_write(ftm, FTM_FLTCTRL, 0x0);
 ftm_write(ftm, FTM_SYNCONF, 0x0);
 ftm_write(ftm, FTM_SYNC, 0xffff);


 ftm_set_write_protection(ftm);
}
