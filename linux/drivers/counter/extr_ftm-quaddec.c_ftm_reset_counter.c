
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ftm_quaddec {int dummy; } ;


 int FTM_CNT ;
 int ftm_write (struct ftm_quaddec*,int ,int) ;

__attribute__((used)) static void ftm_reset_counter(struct ftm_quaddec *ftm)
{

 ftm_write(ftm, FTM_CNT, 0x0);
}
