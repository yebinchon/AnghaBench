
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ftm_quaddec {int dummy; } ;


 int FTM_FIELD_UPDATE (struct ftm_quaddec*,int ,int ,int) ;
 int FTM_FMS ;
 int FTM_FMS_WPEN ;
 int FTM_MODE ;
 int FTM_MODE_WPDIS ;
 int ftm_read (struct ftm_quaddec*,int ,int*) ;

__attribute__((used)) static void ftm_clear_write_protection(struct ftm_quaddec *ftm)
{
 uint32_t flag;


 ftm_read(ftm, FTM_FMS, &flag);

 if (flag & FTM_FMS_WPEN)
  FTM_FIELD_UPDATE(ftm, FTM_MODE, FTM_MODE_WPDIS, 1);
}
