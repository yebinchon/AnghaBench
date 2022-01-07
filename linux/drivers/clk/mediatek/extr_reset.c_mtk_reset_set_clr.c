
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reset_controller_dev {int dummy; } ;


 int mtk_reset_assert_set_clr (struct reset_controller_dev*,unsigned long) ;
 int mtk_reset_deassert_set_clr (struct reset_controller_dev*,unsigned long) ;

__attribute__((used)) static int mtk_reset_set_clr(struct reset_controller_dev *rcdev,
 unsigned long id)
{
 int ret;

 ret = mtk_reset_assert_set_clr(rcdev, id);
 if (ret)
  return ret;
 return mtk_reset_deassert_set_clr(rcdev, id);
}
