
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ paginate_pos ;
 int paginate_skipping ;
 int paginating ;

void xmon_start_pagination(void)
{
 paginating = 1;
 paginate_skipping = 0;
 paginate_pos = 0;
}
