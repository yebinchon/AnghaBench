
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btmtkuart_dev {int tx_work; int tx_state; } ;


 int BTMTKUART_TX_STATE_ACTIVE ;
 int BTMTKUART_TX_STATE_WAKEUP ;
 int schedule_work (int *) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_and_set_bit (int ,int *) ;

__attribute__((used)) static void btmtkuart_tx_wakeup(struct btmtkuart_dev *bdev)
{
 if (test_and_set_bit(BTMTKUART_TX_STATE_ACTIVE, &bdev->tx_state))
  set_bit(BTMTKUART_TX_STATE_WAKEUP, &bdev->tx_state);

 schedule_work(&bdev->tx_work);
}
