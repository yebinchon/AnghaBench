
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reset_controller_dev {int dummy; } ;


 int axg_audio_reset_update (struct reset_controller_dev*,unsigned long,int) ;

__attribute__((used)) static int axg_audio_reset_assert(struct reset_controller_dev *rcdev,
    unsigned long id)
{
 return axg_audio_reset_update(rcdev, id, 1);
}
