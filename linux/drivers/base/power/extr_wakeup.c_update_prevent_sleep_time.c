
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wakeup_source {int dummy; } ;
typedef int ktime_t ;



__attribute__((used)) static inline void update_prevent_sleep_time(struct wakeup_source *ws,
          ktime_t now) {}
