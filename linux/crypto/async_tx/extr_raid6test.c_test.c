
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_async_tx_descriptor {int dummy; } ;
struct completion {int dummy; } ;
struct async_submit_ctl {int dummy; } ;


 int ASYNC_TX_ACK ;
 int PAGE_SIZE ;
 int addr_conv ;
 struct dma_async_tx_descriptor* async_gen_syndrome (int ,int ,int,int ,struct async_submit_ctl*) ;
 int async_tx_issue_pending (struct dma_async_tx_descriptor*) ;
 int callback ;
 void** data ;
 int dataptrs ;
 int init_async_submit (struct async_submit_ctl*,int ,int *,int ,struct completion*,int ) ;
 int init_completion (struct completion*) ;
 int makedata (int) ;
 int memset (int ,int,int ) ;
 int msecs_to_jiffies (int) ;
 int page_address (void*) ;
 int pr (char*,int) ;
 void* recovi ;
 void* recovj ;
 void* spare ;
 scalar_t__ test_disks (int,int,int) ;
 scalar_t__ wait_for_completion_timeout (struct completion*,int ) ;

__attribute__((used)) static int test(int disks, int *tests)
{
 struct dma_async_tx_descriptor *tx;
 struct async_submit_ctl submit;
 struct completion cmp;
 int err = 0;
 int i, j;

 recovi = data[disks];
 recovj = data[disks+1];
 spare = data[disks+2];

 makedata(disks);


 memset(page_address(data[disks-2]), 0xee, PAGE_SIZE);
 memset(page_address(data[disks-1]), 0xee, PAGE_SIZE);


 init_completion(&cmp);
 init_async_submit(&submit, ASYNC_TX_ACK, ((void*)0), callback, &cmp, addr_conv);
 tx = async_gen_syndrome(dataptrs, 0, disks, PAGE_SIZE, &submit);
 async_tx_issue_pending(tx);

 if (wait_for_completion_timeout(&cmp, msecs_to_jiffies(3000)) == 0) {
  pr("error: initial gen_syndrome(%d) timed out\n", disks);
  return 1;
 }

 pr("testing the %d-disk case...\n", disks);
 for (i = 0; i < disks-1; i++)
  for (j = i+1; j < disks; j++) {
   (*tests)++;
   err += test_disks(i, j, disks);
  }

 return err;
}
