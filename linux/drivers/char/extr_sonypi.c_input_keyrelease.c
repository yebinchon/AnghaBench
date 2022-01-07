
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct work_struct {int dummy; } ;
struct sonypi_keypress {int dev; int key; } ;
typedef int kp ;
struct TYPE_2__ {int input_fifo_lock; int input_fifo; } ;


 int input_report_key (int ,int ,int ) ;
 int input_sync (int ) ;
 int kfifo_out_locked (int *,unsigned char*,int,int *) ;
 int msleep (int) ;
 TYPE_1__ sonypi_device ;

__attribute__((used)) static void input_keyrelease(struct work_struct *work)
{
 struct sonypi_keypress kp;

 while (kfifo_out_locked(&sonypi_device.input_fifo, (unsigned char *)&kp,
    sizeof(kp), &sonypi_device.input_fifo_lock)
   == sizeof(kp)) {
  msleep(10);
  input_report_key(kp.dev, kp.key, 0);
  input_sync(kp.dev);
 }
}
