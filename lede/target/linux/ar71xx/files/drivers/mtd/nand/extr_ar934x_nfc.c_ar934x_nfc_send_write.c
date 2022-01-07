
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct ar934x_nfc {int ctrl_reg; int buf; } ;


 unsigned int AR934X_NFC_CMD_CMD0_S ;
 unsigned int AR934X_NFC_CMD_CMD1_S ;
 unsigned int AR934X_NFC_CMD_SEQ_12 ;
 unsigned int NAND_CMD_SEQIN ;
 int ar934x_nfc_do_rw_command (struct ar934x_nfc*,int,int,int,unsigned int,int ,int) ;
 int nfc_dbg (struct ar934x_nfc*,char*,int,int,int) ;
 int nfc_debug_data (char*,int ,int) ;

__attribute__((used)) static int
ar934x_nfc_send_write(struct ar934x_nfc *nfc, unsigned command, int column,
       int page_addr, int len)
{
 u32 cmd_reg;

 nfc_dbg(nfc, "write, column=%d page=%d len=%d\n",
  column, page_addr, len);

 nfc_debug_data("[data] ", nfc->buf, len);

 cmd_reg = NAND_CMD_SEQIN << AR934X_NFC_CMD_CMD0_S;
 cmd_reg |= command << AR934X_NFC_CMD_CMD1_S;
 cmd_reg |= AR934X_NFC_CMD_SEQ_12;

 return ar934x_nfc_do_rw_command(nfc, column, page_addr, len,
     cmd_reg, nfc->ctrl_reg, 1);
}
