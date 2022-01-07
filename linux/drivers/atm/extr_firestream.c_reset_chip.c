
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fs_dev {int dummy; } ;


 int FP_CNF (int ) ;
 int FP_CNT (int ) ;
 int FP_CTU (int ) ;
 int FP_EA (int ) ;
 int FP_SA (int ) ;
 int FS50_NR_CHANNELS ;
 int FS_NR_FREE_POOLS ;
 scalar_t__ IS_FS50 (struct fs_dev*) ;
 int RXB_FP (int) ;
 int SARMODE0 ;
 int SARMODE0_SRTS0 ;
 int udelay (int) ;
 int write_fs (struct fs_dev*,int,int) ;

__attribute__((used)) static void reset_chip (struct fs_dev *dev)
{
 int i;

 write_fs (dev, SARMODE0, SARMODE0_SRTS0);


 udelay (128);




 for (i=0;i < FS_NR_FREE_POOLS;i++) {
  write_fs (dev, FP_CNF (RXB_FP(i)), 0);
  write_fs (dev, FP_SA (RXB_FP(i)), 0);
  write_fs (dev, FP_EA (RXB_FP(i)), 0);
  write_fs (dev, FP_CNT (RXB_FP(i)), 0);
  write_fs (dev, FP_CTU (RXB_FP(i)), 0);
 }
 if (IS_FS50 (dev)) {
  for (i=0;i<FS50_NR_CHANNELS;i++) {
   write_fs (dev, 0x200 + i * 4, -1);
  }
 }
}
