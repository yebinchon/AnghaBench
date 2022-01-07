
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 scalar_t__ WARN_ONCE (int,char*) ;
 int regmap_ibt_gather_write (void*,void const*,int,void const*,size_t) ;

__attribute__((used)) static int regmap_ibt_write(void *context, const void *data, size_t count)
{



 if (WARN_ONCE(count < 4, "Invalid register access"))
  return -EINVAL;

 return regmap_ibt_gather_write(context, data, 4, data + 4, count - 4);
}
