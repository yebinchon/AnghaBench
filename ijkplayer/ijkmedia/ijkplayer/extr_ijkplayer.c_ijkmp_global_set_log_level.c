
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ffp_global_set_log_level (int) ;

void ijkmp_global_set_log_level(int log_level)
{
    ffp_global_set_log_level(log_level);
}
