
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mutex_lock (int *) ;
 int swdevs_lock ;

__attribute__((used)) static inline void
swconfig_lock(void)
{
 mutex_lock(&swdevs_lock);
}
