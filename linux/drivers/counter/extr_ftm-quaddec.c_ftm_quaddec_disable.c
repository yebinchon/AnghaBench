
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ftm_quaddec {int dummy; } ;


 int FTM_MODE ;
 int FTM_QDCTRL ;
 int ftm_clear_write_protection (struct ftm_quaddec*) ;
 int ftm_set_write_protection (struct ftm_quaddec*) ;
 int ftm_write (struct ftm_quaddec*,int ,int ) ;

__attribute__((used)) static void ftm_quaddec_disable(void *ftm)
{
 struct ftm_quaddec *ftm_qua = ftm;

 ftm_clear_write_protection(ftm_qua);
 ftm_write(ftm_qua, FTM_MODE, 0);
 ftm_write(ftm_qua, FTM_QDCTRL, 0);




 ftm_set_write_protection(ftm_qua);
}
