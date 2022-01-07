
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uml_net_private {int user; } ;
struct umcast_data {int dummy; } ;
struct sk_buff {int len; int data; } ;


 int umcast_user_write (int,int ,int ,struct umcast_data*) ;

__attribute__((used)) static int umcast_write(int fd, struct sk_buff *skb, struct uml_net_private *lp)
{
 return umcast_user_write(fd, skb->data, skb->len,
    (struct umcast_data *) &lp->user);
}
