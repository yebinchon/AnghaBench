
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fs_dev {int hp_txq; } ;


 int QE_CMD_IMM_INQ ;
 int QE_CMD_PRP_WR ;
 int submit_command (struct fs_dev*,int *,int,int,int,int ) ;

__attribute__((used)) static void write_phy(struct fs_dev *dev, int regnum, int val)
{
 submit_command (dev, &dev->hp_txq, QE_CMD_PRP_WR | QE_CMD_IMM_INQ,
   regnum, val, 0);
}
