
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skd_special_context {unsigned char* data_buf; } ;
struct skd_device {int dummy; } ;


 int WR_BUF_SIZE ;

__attribute__((used)) static int skd_chk_read_buf(struct skd_device *skdev,
       struct skd_special_context *skspcl)
{
 unsigned char *buf = skspcl->data_buf;
 int i;


 for (i = 0; i < WR_BUF_SIZE; i++)
  if (buf[i] != (i & 0xFF))
   return 1;

 return 0;
}
