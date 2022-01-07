
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rb_info {int dummy; } ;


 int rb_hw_option_match (struct rb_info const*,int ,int ) ;

__attribute__((used)) static inline bool
rb_has_hw_option(const struct rb_info *info, u32 mask)
{
 return rb_hw_option_match(info, mask, mask);
}
