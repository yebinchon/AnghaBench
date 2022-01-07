
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int EINVAL ;
 long PNV_OCXL_TL_P9_RECV_CAP ;
 int PNV_OCXL_TL_RATE_BUF_SIZE ;
 int memset (char*,int ,int) ;
 int set_templ_rate (int,int,char*) ;

int pnv_ocxl_get_tl_cap(struct pci_dev *dev, long *cap,
   char *rate_buf, int rate_buf_size)
{
 if (rate_buf_size != PNV_OCXL_TL_RATE_BUF_SIZE)
  return -EINVAL;
 memset(rate_buf, 0, rate_buf_size);
 set_templ_rate(2, 1, rate_buf);
 *cap = PNV_OCXL_TL_P9_RECV_CAP;
 return 0;
}
