
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {struct drbd_connection* private; } ;
struct drbd_connection {int r_timing_details; int r_cb_nr; int w_timing_details; int w_cb_nr; } ;


 unsigned long jiffies ;
 int seq_print_timing_details (struct seq_file*,char*,int ,int ,unsigned long) ;
 int seq_printf (struct seq_file*,char*,int ) ;
 int seq_puts (struct seq_file*,char*) ;

__attribute__((used)) static int callback_history_show(struct seq_file *m, void *ignored)
{
 struct drbd_connection *connection = m->private;
 unsigned long jif = jiffies;


 seq_printf(m, "v: %u\n\n", 0);

 seq_puts(m, "n\tage\tcallsite\tfn\n");
 seq_print_timing_details(m, "worker", connection->w_cb_nr, connection->w_timing_details, jif);
 seq_print_timing_details(m, "receiver", connection->r_cb_nr, connection->r_timing_details, jif);
 return 0;
}
