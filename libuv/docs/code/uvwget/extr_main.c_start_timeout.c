
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CURLM ;


 int on_timeout ;
 int timeout ;
 int uv_timer_start (int *,int ,long,int ) ;

void start_timeout(CURLM *multi, long timeout_ms, void *userp) {
    if (timeout_ms <= 0)
        timeout_ms = 1;
    uv_timer_start(&timeout, on_timeout, timeout_ms, 0);
}
