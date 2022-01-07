
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mtu; } ;
struct ldc_channel {int mssbuf_len; scalar_t__ mssbuf_off; scalar_t__ mssbuf; TYPE_1__ cfg; } ;


 int memcpy (void*,scalar_t__,unsigned int) ;
 int read_nonraw (struct ldc_channel*,scalar_t__,int ) ;

__attribute__((used)) static int read_stream(struct ldc_channel *lp, void *buf, unsigned int size)
{
 if (!lp->mssbuf_len) {
  int err = read_nonraw(lp, lp->mssbuf, lp->cfg.mtu);
  if (err < 0)
   return err;

  lp->mssbuf_len = err;
  lp->mssbuf_off = 0;
 }

 if (size > lp->mssbuf_len)
  size = lp->mssbuf_len;
 memcpy(buf, lp->mssbuf + lp->mssbuf_off, size);

 lp->mssbuf_off += size;
 lp->mssbuf_len -= size;

 return size;
}
