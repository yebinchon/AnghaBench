
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int device_name; } ;
typedef TYPE_1__ MGSLPC_INFO ;


 int printk (char*,...) ;

__attribute__((used)) static void trace_block(MGSLPC_INFO *info,const char* data, int count, int xmit)
{
 int i;
 int linecount;
 if (xmit)
  printk("%s tx data:\n", info->device_name);
 else
  printk("%s rx data:\n", info->device_name);

 while(count) {
  if (count > 16)
   linecount = 16;
  else
   linecount = count;

  for(i=0;i<linecount;i++)
   printk("%02X ", (unsigned char)data[i]);
  for(;i<17;i++)
   printk("   ");
  for(i=0;i<linecount;i++) {
   if (data[i]>=040 && data[i]<=0176)
    printk("%c", data[i]);
   else
    printk(".");
  }
  printk("\n");

  data += linecount;
  count -= linecount;
 }
}
