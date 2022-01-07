
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct console_input {char* line; } ;


 int K_FOREVER ;
 int free_queue ;
 struct console_input* k_fifo_get (int *,int ) ;
 int k_fifo_put (int *,struct console_input*) ;
 int used_queue ;

char *zephyr_getline(void)
{
  static struct console_input *cmd;


  if (cmd != ((void*)0))
  {
    k_fifo_put(&free_queue, cmd);
  }

  cmd = k_fifo_get(&used_queue, K_FOREVER);
  return cmd->line;
}
