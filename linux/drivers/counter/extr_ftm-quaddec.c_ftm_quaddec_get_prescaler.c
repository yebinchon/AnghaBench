
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ftm_quaddec {int dummy; } ;
struct counter_device {struct ftm_quaddec* priv; } ;
struct counter_count {int dummy; } ;


 size_t FIELD_GET (int ,int ) ;
 int FTM_SC ;
 int FTM_SC_PS_MASK ;
 int ftm_read (struct ftm_quaddec*,int ,int *) ;

__attribute__((used)) static int ftm_quaddec_get_prescaler(struct counter_device *counter,
         struct counter_count *count,
         size_t *cnt_mode)
{
 struct ftm_quaddec *ftm = counter->priv;
 uint32_t scflags;

 ftm_read(ftm, FTM_SC, &scflags);

 *cnt_mode = FIELD_GET(FTM_SC_PS_MASK, scflags);

 return 0;
}
