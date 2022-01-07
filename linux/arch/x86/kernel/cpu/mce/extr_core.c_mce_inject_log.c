
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mce {int dummy; } ;


 int mce_log (struct mce*) ;
 int mce_log_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void mce_inject_log(struct mce *m)
{
 mutex_lock(&mce_log_mutex);
 mce_log(m);
 mutex_unlock(&mce_log_mutex);
}
