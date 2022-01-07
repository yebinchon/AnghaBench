
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct firmware {int* data; int size; } ;
struct btmrvl_sdio_card {int ioport; TYPE_1__* func; int helper; } ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ ALIGN_ADDR (void*,int ) ;
 int ALIGN_SZ (int ,int ) ;
 int BTM_UPLD_SIZE ;
 int BTSDIO_DMA_ALIGN ;
 int BT_DBG (char*,...) ;
 int BT_ERR (char*,...) ;
 int CARD_IO_READY ;
 int DN_LD_CARD_RDY ;
 int ENOENT ;
 int ENOMEM ;
 size_t FIRMWARE_TRANSFER_NBLOCK ;
 int GFP_KERNEL ;
 size_t SDIO_BLOCK_SIZE ;
 size_t SDIO_HEADER_LEN ;
 int btmrvl_sdio_poll_card_status (struct btmrvl_sdio_card*,int) ;
 int kfree (void*) ;
 void* kzalloc (int,int ) ;
 int memcpy (int*,int const*,int) ;
 int memset (int*,int,size_t) ;
 int release_firmware (struct firmware const*) ;
 int request_firmware (struct firmware const**,int ,int *) ;
 int sdio_writesb (TYPE_1__*,int ,int*,size_t) ;

__attribute__((used)) static int btmrvl_sdio_download_helper(struct btmrvl_sdio_card *card)
{
 const struct firmware *fw_helper = ((void*)0);
 const u8 *helper = ((void*)0);
 int ret;
 void *tmphlprbuf = ((void*)0);
 int tmphlprbufsz, hlprblknow, helperlen;
 u8 *helperbuf;
 u32 tx_len;

 ret = request_firmware(&fw_helper, card->helper,
      &card->func->dev);
 if ((ret < 0) || !fw_helper) {
  BT_ERR("request_firmware(helper) failed, error code = %d",
         ret);
  ret = -ENOENT;
  goto done;
 }

 helper = fw_helper->data;
 helperlen = fw_helper->size;

 BT_DBG("Downloading helper image (%d bytes), block size %d bytes",
      helperlen, SDIO_BLOCK_SIZE);

 tmphlprbufsz = ALIGN_SZ(BTM_UPLD_SIZE, BTSDIO_DMA_ALIGN);

 tmphlprbuf = kzalloc(tmphlprbufsz, GFP_KERNEL);
 if (!tmphlprbuf) {
  BT_ERR("Unable to allocate buffer for helper."
   " Terminating download");
  ret = -ENOMEM;
  goto done;
 }

 helperbuf = (u8 *) ALIGN_ADDR(tmphlprbuf, BTSDIO_DMA_ALIGN);


 tx_len = (FIRMWARE_TRANSFER_NBLOCK * SDIO_BLOCK_SIZE)
   - SDIO_HEADER_LEN;
 hlprblknow = 0;

 do {
  ret = btmrvl_sdio_poll_card_status(card,
         CARD_IO_READY | DN_LD_CARD_RDY);
  if (ret < 0) {
   BT_ERR("Helper download poll status timeout @ %d",
    hlprblknow);
   goto done;
  }


  if (hlprblknow >= helperlen)
   break;

  if (helperlen - hlprblknow < tx_len)
   tx_len = helperlen - hlprblknow;


  helperbuf[0] = ((tx_len & 0x000000ff) >> 0);
  helperbuf[1] = ((tx_len & 0x0000ff00) >> 8);
  helperbuf[2] = ((tx_len & 0x00ff0000) >> 16);
  helperbuf[3] = ((tx_len & 0xff000000) >> 24);

  memcpy(&helperbuf[SDIO_HEADER_LEN], &helper[hlprblknow],
    tx_len);


  ret = sdio_writesb(card->func, card->ioport, helperbuf,
    FIRMWARE_TRANSFER_NBLOCK * SDIO_BLOCK_SIZE);
  if (ret < 0) {
   BT_ERR("IO error during helper download @ %d",
    hlprblknow);
   goto done;
  }

  hlprblknow += tx_len;
 } while (1);

 BT_DBG("Transferring helper image EOF block");

 memset(helperbuf, 0x0, SDIO_BLOCK_SIZE);

 ret = sdio_writesb(card->func, card->ioport, helperbuf,
       SDIO_BLOCK_SIZE);
 if (ret < 0) {
  BT_ERR("IO error in writing helper image EOF block");
  goto done;
 }

 ret = 0;

done:
 kfree(tmphlprbuf);
 release_firmware(fw_helper);
 return ret;
}
