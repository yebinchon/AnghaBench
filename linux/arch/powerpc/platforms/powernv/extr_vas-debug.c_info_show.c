
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vas_window {int pid; scalar_t__ tx_win; int cop; int hvwc_map; } ;
struct seq_file {struct vas_window* private; } ;


 int cop_to_str (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int seq_printf (struct seq_file*,char*,int ,...) ;
 int vas_mutex ;

__attribute__((used)) static int info_show(struct seq_file *s, void *private)
{
 struct vas_window *window = s->private;

 mutex_lock(&vas_mutex);


 if (!window->hvwc_map)
  goto unlock;

 seq_printf(s, "Type: %s, %s\n", cop_to_str(window->cop),
     window->tx_win ? "Send" : "Receive");
 seq_printf(s, "Pid : %d\n", window->pid);

unlock:
 mutex_unlock(&vas_mutex);
 return 0;
}
