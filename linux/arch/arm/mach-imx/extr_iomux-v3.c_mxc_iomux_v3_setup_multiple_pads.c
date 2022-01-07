
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int iomux_v3_cfg_t ;


 int mxc_iomux_v3_setup_pad (int const) ;

int mxc_iomux_v3_setup_multiple_pads(const iomux_v3_cfg_t *pad_list,
  unsigned count)
{
 const iomux_v3_cfg_t *p = pad_list;
 int i;
 int ret;

 for (i = 0; i < count; i++) {
  ret = mxc_iomux_v3_setup_pad(*p);
  if (ret)
   return ret;
  p++;
 }
 return 0;
}
