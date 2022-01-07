
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ipmb_msg {int dummy; } ;
struct TYPE_2__ {size_t len; } ;
struct ipmb_dev {size_t msg_idx; int lock; TYPE_1__ request; } ;
struct i2c_client {int addr; } ;
typedef enum i2c_slave_event { ____Placeholder_i2c_slave_event } i2c_slave_event ;


 int GET_8BIT_ADDR (int ) ;



 struct ipmb_dev* i2c_get_clientdata (struct i2c_client*) ;
 int ipmb_handle_request (struct ipmb_dev*) ;
 int is_ipmb_request (struct ipmb_dev*,int ) ;
 int memset (TYPE_1__*,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int ipmb_slave_cb(struct i2c_client *client,
   enum i2c_slave_event event, u8 *val)
{
 struct ipmb_dev *ipmb_dev = i2c_get_clientdata(client);
 u8 *buf = (u8 *)&ipmb_dev->request;
 unsigned long flags;

 spin_lock_irqsave(&ipmb_dev->lock, flags);
 switch (event) {
 case 128:
  memset(&ipmb_dev->request, 0, sizeof(ipmb_dev->request));
  ipmb_dev->msg_idx = 0;
  buf[++ipmb_dev->msg_idx] = GET_8BIT_ADDR(client->addr);
  break;

 case 129:
  if (ipmb_dev->msg_idx >= sizeof(struct ipmb_msg))
   break;

  buf[++ipmb_dev->msg_idx] = *val;
  break;

 case 130:
  ipmb_dev->request.len = ipmb_dev->msg_idx;

  if (is_ipmb_request(ipmb_dev, GET_8BIT_ADDR(client->addr)))
   ipmb_handle_request(ipmb_dev);
  break;

 default:
  break;
 }
 spin_unlock_irqrestore(&ipmb_dev->lock, flags);

 return 0;
}
