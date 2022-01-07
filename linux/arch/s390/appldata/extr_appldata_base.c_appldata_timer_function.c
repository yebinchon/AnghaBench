
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;


 int appldata_wq ;
 int queue_work (int ,struct work_struct*) ;

__attribute__((used)) static void appldata_timer_function(unsigned long data)
{
 queue_work(appldata_wq, (struct work_struct *) data);
}
