
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_uart {int dummy; } ;


 int EINVAL ;
 int QCA_INIT_SPEED ;
 int QCA_OPER_SPEED ;
 int qca_get_speed (struct hci_uart*,int ) ;
 scalar_t__ qca_is_wcn399x (int ) ;
 int qca_soc_type (struct hci_uart*) ;

__attribute__((used)) static int qca_check_speeds(struct hci_uart *hu)
{
 if (qca_is_wcn399x(qca_soc_type(hu))) {
  if (!qca_get_speed(hu, QCA_INIT_SPEED) &&
      !qca_get_speed(hu, QCA_OPER_SPEED))
   return -EINVAL;
 } else {
  if (!qca_get_speed(hu, QCA_INIT_SPEED) ||
      !qca_get_speed(hu, QCA_OPER_SPEED))
   return -EINVAL;
 }

 return 0;
}
