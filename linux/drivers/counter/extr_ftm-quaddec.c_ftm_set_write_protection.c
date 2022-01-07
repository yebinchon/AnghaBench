
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ftm_quaddec {int dummy; } ;


 int FTM_FIELD_UPDATE (struct ftm_quaddec*,int ,int ,int) ;
 int FTM_FMS ;
 int FTM_FMS_WPEN ;

__attribute__((used)) static void ftm_set_write_protection(struct ftm_quaddec *ftm)
{
 FTM_FIELD_UPDATE(ftm, FTM_FMS, FTM_FMS_WPEN, 1);
}
