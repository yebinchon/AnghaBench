
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec64 {int dummy; } ;


 int xen_read_wallclock (struct timespec64*) ;

__attribute__((used)) static void xen_get_wallclock(struct timespec64 *now)
{
 xen_read_wallclock(now);
}
