
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssif_info {int i2c_read_write; int i2c_command; unsigned char* i2c_data; unsigned int i2c_size; int wake_thread; int done_handler; } ;
typedef int ssif_i2c_done ;


 int complete (int *) ;

__attribute__((used)) static int ssif_i2c_send(struct ssif_info *ssif_info,
   ssif_i2c_done handler,
   int read_write, int command,
   unsigned char *data, unsigned int size)
{
 ssif_info->done_handler = handler;

 ssif_info->i2c_read_write = read_write;
 ssif_info->i2c_command = command;
 ssif_info->i2c_data = data;
 ssif_info->i2c_size = size;
 complete(&ssif_info->wake_thread);
 return 0;
}
