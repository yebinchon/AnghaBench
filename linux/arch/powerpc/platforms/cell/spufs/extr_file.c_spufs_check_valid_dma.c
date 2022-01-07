
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mfc_dma_command {int lsa; int ea; int size; int tag; int cmd; scalar_t__ class; } ;


 int EIO ;






 int pr_debug (char*,...) ;

__attribute__((used)) static int spufs_check_valid_dma(struct mfc_dma_command *cmd)
{
 pr_debug("queueing DMA %x %llx %x %x %x\n", cmd->lsa,
   cmd->ea, cmd->size, cmd->tag, cmd->cmd);

 switch (cmd->cmd) {
 case 128:
 case 129:
 case 130:
 case 131:
 case 132:
 case 133:
  break;
 default:
  pr_debug("invalid DMA opcode %x\n", cmd->cmd);
  return -EIO;
 }

 if ((cmd->lsa & 0xf) != (cmd->ea &0xf)) {
  pr_debug("invalid DMA alignment, ea %llx lsa %x\n",
    cmd->ea, cmd->lsa);
  return -EIO;
 }

 switch (cmd->size & 0xf) {
 case 1:
  break;
 case 2:
  if (cmd->lsa & 1)
   goto error;
  break;
 case 4:
  if (cmd->lsa & 3)
   goto error;
  break;
 case 8:
  if (cmd->lsa & 7)
   goto error;
  break;
 case 0:
  if (cmd->lsa & 15)
   goto error;
  break;
 error:
 default:
  pr_debug("invalid DMA alignment %x for size %x\n",
   cmd->lsa & 0xf, cmd->size);
  return -EIO;
 }

 if (cmd->size > 16 * 1024) {
  pr_debug("invalid DMA size %x\n", cmd->size);
  return -EIO;
 }

 if (cmd->tag & 0xfff0) {

  pr_debug("invalid DMA tag\n");
  return -EIO;
 }

 if (cmd->class) {

  pr_debug("invalid DMA class\n");
  return -EIO;
 }

 return 0;
}
