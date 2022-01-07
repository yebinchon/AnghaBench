
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ outstandingData; scalar_t__ minTransfer; } ;
struct opal_header {TYPE_1__ cp; } ;
struct opal_dev {void* resp; } ;


 size_t IO_BUFFER_LENGTH ;
 int memset (void*,int ,size_t) ;
 int opal_recv_cmd (struct opal_dev*) ;
 int pr_debug (char*,scalar_t__,scalar_t__) ;

__attribute__((used)) static int opal_recv_check(struct opal_dev *dev)
{
 size_t buflen = IO_BUFFER_LENGTH;
 void *buffer = dev->resp;
 struct opal_header *hdr = buffer;
 int ret;

 do {
  pr_debug("Sent OPAL command: outstanding=%d, minTransfer=%d\n",
    hdr->cp.outstandingData,
    hdr->cp.minTransfer);

  if (hdr->cp.outstandingData == 0 ||
      hdr->cp.minTransfer != 0)
   return 0;

  memset(buffer, 0, buflen);
  ret = opal_recv_cmd(dev);
 } while (!ret);

 return ret;
}
