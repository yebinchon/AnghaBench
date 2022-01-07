
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cmm_set_timer () ;
 long cmm_timeout_pages ;
 long cmm_timeout_seconds ;

__attribute__((used)) static void cmm_set_timeout(long nr, long seconds)
{
 cmm_timeout_pages = nr;
 cmm_timeout_seconds = seconds;
 cmm_set_timer();
}
