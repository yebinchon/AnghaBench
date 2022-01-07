
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtas_error_log {int dummy; } ;
struct irq_work {int dummy; } ;


 int ERR_TYPE_RTAS_LOG ;
 struct rtas_error_log* fwnmi_get_errlog () ;
 int log_error (char*,int ,int ) ;

__attribute__((used)) static void mce_process_errlog_event(struct irq_work *work)
{
 struct rtas_error_log *err;

 err = fwnmi_get_errlog();
 log_error((char *)err, ERR_TYPE_RTAS_LOG, 0);
}
