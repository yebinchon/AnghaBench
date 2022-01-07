
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int PNV_OCXL_TL_MAX_TEMPLATE ;
 int WARN_ON (int) ;

__attribute__((used)) static void set_templ_rate(unsigned int templ, unsigned int rate, char *buf)
{
 int shift, idx;

 WARN_ON(templ > PNV_OCXL_TL_MAX_TEMPLATE);
 idx = (PNV_OCXL_TL_MAX_TEMPLATE - templ) / 2;
 shift = 4 * (1 - ((PNV_OCXL_TL_MAX_TEMPLATE - templ) % 2));
 buf[idx] |= rate << shift;
}
