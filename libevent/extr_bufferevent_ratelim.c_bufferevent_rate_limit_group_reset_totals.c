
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufferevent_rate_limit_group {scalar_t__ total_written; scalar_t__ total_read; } ;



void
bufferevent_rate_limit_group_reset_totals(struct bufferevent_rate_limit_group *grp)
{
 grp->total_read = grp->total_written = 0;
}
