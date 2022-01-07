
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct input_dev {int dummy; } ;
struct ht16k33_keypad {int stopped; TYPE_1__* client; int wait; } ;
struct TYPE_2__ {int irq; } ;


 int disable_irq (int ) ;
 struct ht16k33_keypad* input_get_drvdata (struct input_dev*) ;
 int mb () ;
 int wake_up (int *) ;

__attribute__((used)) static void ht16k33_keypad_stop(struct input_dev *dev)
{
 struct ht16k33_keypad *keypad = input_get_drvdata(dev);

 keypad->stopped = 1;
 mb();
 wake_up(&keypad->wait);
 disable_irq(keypad->client->irq);
}
