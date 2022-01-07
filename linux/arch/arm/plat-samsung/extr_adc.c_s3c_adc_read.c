
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s3c_adc_client {int result; int * convert_cb; int * wait; } ;


 int DECLARE_WAIT_QUEUE_HEAD_ONSTACK (int ) ;
 int ETIMEDOUT ;
 int HZ ;
 int s3c_adc_start (struct s3c_adc_client*,unsigned int,int) ;
 int * s3c_convert_done ;
 int wait_event_timeout (int ,int,int) ;
 int wake ;

int s3c_adc_read(struct s3c_adc_client *client, unsigned int ch)
{
 DECLARE_WAIT_QUEUE_HEAD_ONSTACK(wake);
 int ret;

 client->convert_cb = s3c_convert_done;
 client->wait = &wake;
 client->result = -1;

 ret = s3c_adc_start(client, ch, 1);
 if (ret < 0)
  goto err;

 ret = wait_event_timeout(wake, client->result >= 0, HZ / 2);
 if (client->result < 0) {
  ret = -ETIMEDOUT;
  goto err;
 }

 client->convert_cb = ((void*)0);
 return client->result;

err:
 return ret;
}
