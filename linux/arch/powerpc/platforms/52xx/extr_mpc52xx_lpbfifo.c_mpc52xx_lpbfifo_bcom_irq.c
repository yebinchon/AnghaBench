
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct mpc52xx_lpbfifo_request {int flags; int buffer_not_done_cnt; int size; int pos; int (* callback ) (struct mpc52xx_lpbfifo_request*) ;int irq_ticks; scalar_t__ data; int last_byte; int irq_count; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int lock; struct mpc52xx_lpbfifo_request* req; int bcom_cur_task; } ;


 int IRQ_HANDLED ;
 int MPC52XX_LPBFIFO_FLAG_NO_DMA ;
 int bcom_buffer_done (int ) ;
 int bcom_retrieve_buffer (int ,int*,int *) ;
 int get_tbl () ;
 TYPE_1__ lpbfifo ;
 int pr_err (char*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct mpc52xx_lpbfifo_request*) ;

__attribute__((used)) static irqreturn_t mpc52xx_lpbfifo_bcom_irq(int irq, void *dev_id)
{
 struct mpc52xx_lpbfifo_request *req;
 unsigned long flags;
 u32 status;
 u32 ts;

 spin_lock_irqsave(&lpbfifo.lock, flags);
 ts = get_tbl();

 req = lpbfifo.req;
 if (!req || (req->flags & MPC52XX_LPBFIFO_FLAG_NO_DMA)) {
  spin_unlock_irqrestore(&lpbfifo.lock, flags);
  return IRQ_HANDLED;
 }

 if (irq != 0)
  req->irq_count++;

 if (!bcom_buffer_done(lpbfifo.bcom_cur_task)) {
  spin_unlock_irqrestore(&lpbfifo.lock, flags);

  req->buffer_not_done_cnt++;
  if ((req->buffer_not_done_cnt % 1000) == 0)
   pr_err("transfer stalled\n");

  return IRQ_HANDLED;
 }

 bcom_retrieve_buffer(lpbfifo.bcom_cur_task, &status, ((void*)0));

 req->last_byte = ((u8 *)req->data)[req->size - 1];

 req->pos = status & 0x00ffffff;


 lpbfifo.req = ((void*)0);


 req->irq_ticks += get_tbl() - ts;
 spin_unlock_irqrestore(&lpbfifo.lock, flags);

 if (req->callback)
  req->callback(req);

 return IRQ_HANDLED;
}
