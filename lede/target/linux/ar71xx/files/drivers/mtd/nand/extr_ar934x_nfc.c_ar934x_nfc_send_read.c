
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ar934x_nfc {int buf; int ctrl_reg; scalar_t__ small_page; } ;


 unsigned int AR934X_NFC_CMD_CMD0_M ;
 unsigned int AR934X_NFC_CMD_CMD0_S ;
 int AR934X_NFC_CMD_CMD1_S ;
 int AR934X_NFC_CMD_SEQ_18 ;
 int AR934X_NFC_CMD_SEQ_1C5A1CXR ;
 int NAND_CMD_READSTART ;
 int ar934x_nfc_do_rw_command (struct ar934x_nfc*,int,int,int,int,int ,int) ;
 int nfc_dbg (struct ar934x_nfc*,char*,int,int,int) ;
 int nfc_debug_data (char*,int ,int) ;

__attribute__((used)) static int
ar934x_nfc_send_read(struct ar934x_nfc *nfc, unsigned command, int column,
       int page_addr, int len)
{
 u32 cmd_reg;
 int err;

 nfc_dbg(nfc, "read, column=%d page=%d len=%d\n",
  column, page_addr, len);

 cmd_reg = (command & AR934X_NFC_CMD_CMD0_M) << AR934X_NFC_CMD_CMD0_S;

 if (nfc->small_page) {
  cmd_reg |= AR934X_NFC_CMD_SEQ_18;
 } else {
  cmd_reg |= NAND_CMD_READSTART << AR934X_NFC_CMD_CMD1_S;
  cmd_reg |= AR934X_NFC_CMD_SEQ_1C5A1CXR;
 }

 err = ar934x_nfc_do_rw_command(nfc, column, page_addr, len,
           cmd_reg, nfc->ctrl_reg, 0);

 nfc_debug_data("[data] ", nfc->buf, len);

 return err;
}
