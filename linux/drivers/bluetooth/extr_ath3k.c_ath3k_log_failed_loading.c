
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BT_ERR (char*,int,int,int,int) ;

__attribute__((used)) static inline void ath3k_log_failed_loading(int err, int len, int size,
         int count)
{
 BT_ERR("Firmware loading err = %d, len = %d, size = %d, count = %d",
        err, len, size, count);
}
