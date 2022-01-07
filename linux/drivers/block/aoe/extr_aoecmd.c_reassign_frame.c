
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct frame {struct sk_buff* skb; int sent; int waited_total; scalar_t__ waited; int iter; int buf; TYPE_1__* t; } ;
struct TYPE_2__ {int d; } ;


 int aoe_freetframe (struct frame*) ;
 struct frame* newframe (int ) ;

__attribute__((used)) static struct frame *
reassign_frame(struct frame *f)
{
 struct frame *nf;
 struct sk_buff *skb;

 nf = newframe(f->t->d);
 if (!nf)
  return ((void*)0);
 if (nf->t == f->t) {
  aoe_freetframe(nf);
  return ((void*)0);
 }

 skb = nf->skb;
 nf->skb = f->skb;
 nf->buf = f->buf;
 nf->iter = f->iter;
 nf->waited = 0;
 nf->waited_total = f->waited_total;
 nf->sent = f->sent;
 f->skb = skb;

 return nf;
}
