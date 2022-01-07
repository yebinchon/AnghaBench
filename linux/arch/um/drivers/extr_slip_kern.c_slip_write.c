
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uml_net_private {int user; } ;
struct slip_data {int dummy; } ;
struct sk_buff {int len; int data; } ;


 int slip_user_write (int,int ,int ,struct slip_data*) ;

__attribute__((used)) static int slip_write(int fd, struct sk_buff *skb, struct uml_net_private *lp)
{
 return slip_user_write(fd, skb->data, skb->len,
          (struct slip_data *) &lp->user);
}
