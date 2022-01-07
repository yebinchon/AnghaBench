
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG_ON (int) ;
 int regmap_spmi_ext_gather_write (void*,void const*,int,void const*,size_t) ;

__attribute__((used)) static int regmap_spmi_ext_write(void *context, const void *data,
     size_t count)
{
 BUG_ON(count < 2);
 return regmap_spmi_ext_gather_write(context, data, 2, data + 2,
         count - 2);
}
