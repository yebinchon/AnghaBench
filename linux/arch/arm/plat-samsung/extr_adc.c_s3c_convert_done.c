
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s3c_adc_client {unsigned int result; int wait; } ;


 int wake_up (int ) ;

__attribute__((used)) static void s3c_convert_done(struct s3c_adc_client *client,
        unsigned v, unsigned u, unsigned *left)
{
 client->result = v;
 wake_up(client->wait);
}
