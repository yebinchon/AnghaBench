
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct he_dev {unsigned int cells_per_row; unsigned int cells_per_lbuf; unsigned int r0_startrow; unsigned int bytes_per_row; unsigned int r0_numbuffs; } ;


 unsigned int ATM_CELL_PAYLOAD ;
 int RCMLBM_BA ;
 int RLBF0_C ;
 int RLBF0_H ;
 int RLBF0_T ;
 unsigned int he_readl (struct he_dev*,int ) ;
 int he_writel (struct he_dev*,unsigned int,int ) ;
 int he_writel_rcm (struct he_dev*,unsigned int,unsigned int) ;

__attribute__((used)) static void he_init_rx_lbfp0(struct he_dev *he_dev)
{
 unsigned i, lbm_offset, lbufd_index, lbuf_addr, lbuf_count;
 unsigned lbufs_per_row = he_dev->cells_per_row / he_dev->cells_per_lbuf;
 unsigned lbuf_bufsize = he_dev->cells_per_lbuf * ATM_CELL_PAYLOAD;
 unsigned row_offset = he_dev->r0_startrow * he_dev->bytes_per_row;

 lbufd_index = 0;
 lbm_offset = he_readl(he_dev, RCMLBM_BA);

 he_writel(he_dev, lbufd_index, RLBF0_H);

 for (i = 0, lbuf_count = 0; i < he_dev->r0_numbuffs; ++i) {
  lbufd_index += 2;
  lbuf_addr = (row_offset + (lbuf_count * lbuf_bufsize)) / 32;

  he_writel_rcm(he_dev, lbuf_addr, lbm_offset);
  he_writel_rcm(he_dev, lbufd_index, lbm_offset + 1);

  if (++lbuf_count == lbufs_per_row) {
   lbuf_count = 0;
   row_offset += he_dev->bytes_per_row;
  }
  lbm_offset += 4;
 }

 he_writel(he_dev, lbufd_index - 2, RLBF0_T);
 he_writel(he_dev, he_dev->r0_numbuffs, RLBF0_C);
}
