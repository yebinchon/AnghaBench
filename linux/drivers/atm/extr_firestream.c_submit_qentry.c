
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct queue {int offset; } ;
struct fs_dev {int dummy; } ;
struct FS_QENTRY {int dummy; } ;


 int FS_DEBUG_TXQ ;
 int Q_FULL ;
 int Q_INCWRAP ;
 int Q_RP (int ) ;
 int Q_WP (int ) ;
 struct FS_QENTRY* bus_to_virt (int) ;
 int fs_dprintk (int ,char*,int ,...) ;
 int read_fs (struct fs_dev*,int ) ;
 int schedule () ;
 int write_fs (struct fs_dev*,int ,int ) ;

__attribute__((used)) static void submit_qentry (struct fs_dev *dev, struct queue *q, struct FS_QENTRY *qe)
{
 u32 wp;
 struct FS_QENTRY *cqe;




 while ((wp = read_fs (dev, Q_WP (q->offset))) & Q_FULL) {
  fs_dprintk (FS_DEBUG_TXQ, "Found queue at %x full. Waiting.\n",
       q->offset);
  schedule ();
 }

 wp &= ~0xf;
 cqe = bus_to_virt (wp);
 if (qe != cqe) {
  fs_dprintk (FS_DEBUG_TXQ, "q mismatch! %p %p\n", qe, cqe);
 }

 write_fs (dev, Q_WP(q->offset), Q_INCWRAP);

 {
  static int c;
  if (!(c++ % 100))
   {
    int rp, wp;
    rp = read_fs (dev, Q_RP(q->offset));
    wp = read_fs (dev, Q_WP(q->offset));
    fs_dprintk (FS_DEBUG_TXQ, "q at %d: %x-%x: %x entries.\n",
         q->offset, rp, wp, wp-rp);
   }
 }
}
