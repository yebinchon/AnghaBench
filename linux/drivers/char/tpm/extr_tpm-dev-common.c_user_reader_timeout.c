
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct file_priv {int timeout_work; } ;


 int current ;
 struct file_priv* from_timer (int ,struct timer_list*,int ) ;
 int pr_warn (char*,int ) ;
 struct file_priv* priv ;
 int schedule_work (int *) ;
 int task_tgid_nr (int ) ;
 int user_read_timer ;

__attribute__((used)) static void user_reader_timeout(struct timer_list *t)
{
 struct file_priv *priv = from_timer(priv, t, user_read_timer);

 pr_warn("TPM user space timeout is deprecated (pid=%d)\n",
  task_tgid_nr(current));

 schedule_work(&priv->timeout_work);
}
