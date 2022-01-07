
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ftm_quaddec {int ftm_quaddec_mutex; } ;
struct counter_device {struct ftm_quaddec* priv; } ;
struct counter_count {int dummy; } ;


 int FTM_FIELD_UPDATE (struct ftm_quaddec*,int ,int ,size_t) ;
 int FTM_SC ;
 int FTM_SC_PS_MASK ;
 int ftm_clear_write_protection (struct ftm_quaddec*) ;
 int ftm_reset_counter (struct ftm_quaddec*) ;
 int ftm_set_write_protection (struct ftm_quaddec*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int ftm_quaddec_set_prescaler(struct counter_device *counter,
         struct counter_count *count,
         size_t cnt_mode)
{
 struct ftm_quaddec *ftm = counter->priv;

 mutex_lock(&ftm->ftm_quaddec_mutex);

 ftm_clear_write_protection(ftm);
 FTM_FIELD_UPDATE(ftm, FTM_SC, FTM_SC_PS_MASK, cnt_mode);
 ftm_set_write_protection(ftm);


 ftm_reset_counter(ftm);

 mutex_unlock(&ftm->ftm_quaddec_mutex);
 return 0;
}
