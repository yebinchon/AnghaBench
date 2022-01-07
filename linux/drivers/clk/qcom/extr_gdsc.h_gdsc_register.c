
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reset_controller_dev {int dummy; } ;
struct regmap {int dummy; } ;
struct gdsc_desc {int dummy; } ;


 int ENOSYS ;

__attribute__((used)) static inline int gdsc_register(struct gdsc_desc *desc,
    struct reset_controller_dev *rcdev,
    struct regmap *r)
{
 return -ENOSYS;
}
