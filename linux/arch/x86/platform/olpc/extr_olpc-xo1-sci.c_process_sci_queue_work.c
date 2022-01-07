
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;


 int process_sci_queue (int) ;

__attribute__((used)) static void process_sci_queue_work(struct work_struct *work)
{
 process_sci_queue(1);
}
