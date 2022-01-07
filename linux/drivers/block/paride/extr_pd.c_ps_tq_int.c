
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;


 int run_fsm () ;

__attribute__((used)) static void ps_tq_int(struct work_struct *work)
{
 run_fsm();
}
