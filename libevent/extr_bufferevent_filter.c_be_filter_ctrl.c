
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


union bufferevent_ctrl_data {TYPE_2__* ptr; } ;
struct bufferevent_filtered {TYPE_2__* underlying; } ;
struct bufferevent {int dummy; } ;
typedef enum bufferevent_ctrl_op { ____Placeholder_bufferevent_ctrl_op } bufferevent_ctrl_op ;
struct TYPE_4__ {TYPE_1__* be_ops; } ;
struct TYPE_3__ {int (* ctrl ) (TYPE_2__*,int,union bufferevent_ctrl_data*) ;} ;






 int EVUTIL_FALLTHROUGH ;
 int stub1 (TYPE_2__*,int,union bufferevent_ctrl_data*) ;
 struct bufferevent_filtered* upcast (struct bufferevent*) ;

__attribute__((used)) static int
be_filter_ctrl(struct bufferevent *bev, enum bufferevent_ctrl_op op,
    union bufferevent_ctrl_data *data)
{
 struct bufferevent_filtered *bevf;
 switch (op) {
 case 129:
  bevf = upcast(bev);
  data->ptr = bevf->underlying;
  return 0;
 case 128:
 case 130:
  bevf = upcast(bev);

  if (bevf->underlying &&
   bevf->underlying->be_ops &&
   bevf->underlying->be_ops->ctrl) {
      return (bevf->underlying->be_ops->ctrl)(bevf->underlying, op, data);
  }
  EVUTIL_FALLTHROUGH;

 case 131:
  EVUTIL_FALLTHROUGH;
 default:
  return -1;
 }

 return -1;
}
