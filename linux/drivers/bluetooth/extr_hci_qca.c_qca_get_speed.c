
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hci_uart {int init_speed; int oper_speed; TYPE_1__* proto; } ;
typedef enum qca_speed_type { ____Placeholder_qca_speed_type } qca_speed_type ;
struct TYPE_2__ {int init_speed; int oper_speed; } ;


 int QCA_INIT_SPEED ;

__attribute__((used)) static unsigned int qca_get_speed(struct hci_uart *hu,
      enum qca_speed_type speed_type)
{
 unsigned int speed = 0;

 if (speed_type == QCA_INIT_SPEED) {
  if (hu->init_speed)
   speed = hu->init_speed;
  else if (hu->proto->init_speed)
   speed = hu->proto->init_speed;
 } else {
  if (hu->oper_speed)
   speed = hu->oper_speed;
  else if (hu->proto->oper_speed)
   speed = hu->proto->oper_speed;
 }

 return speed;
}
