
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernel_param {int dummy; } ;


 int NULL_Q_BIO ;
 int NULL_Q_MQ ;
 int g_queue_mode ;
 int null_param_store_val (char const*,int *,int ,int ) ;

__attribute__((used)) static int null_set_queue_mode(const char *str, const struct kernel_param *kp)
{
 return null_param_store_val(str, &g_queue_mode, NULL_Q_BIO, NULL_Q_MQ);
}
