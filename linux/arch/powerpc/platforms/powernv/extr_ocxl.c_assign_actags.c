
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct npu_link {int assignment_done; scalar_t__* fn_desired_actags; TYPE_1__* fn_actags; int dev; int bus; int domain; } ;
struct TYPE_2__ {scalar_t__ count; scalar_t__ start; } ;


 scalar_t__ PNV_OCXL_ACTAG_MAX ;
 int WARN_ON (int) ;
 scalar_t__ assign_fn_actags (scalar_t__,scalar_t__) ;
 int pr_debug (char*,int ,int ,int ,int,scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static void assign_actags(struct npu_link *link)
{
 u16 actag_count, range_start = 0, total_desired = 0;
 int i;

 for (i = 0; i < 8; i++)
  total_desired += link->fn_desired_actags[i];

 for (i = 0; i < 8; i++) {
  if (link->fn_desired_actags[i]) {
   actag_count = assign_fn_actags(
    link->fn_desired_actags[i],
    total_desired);
   link->fn_actags[i].start = range_start;
   link->fn_actags[i].count = actag_count;
   range_start += actag_count;
   WARN_ON(range_start >= PNV_OCXL_ACTAG_MAX);
  }
  pr_debug("link %x:%x:%x fct %d actags: start=%d count=%d (desired=%d)\n",
   link->domain, link->bus, link->dev, i,
   link->fn_actags[i].start, link->fn_actags[i].count,
   link->fn_desired_actags[i]);
 }
 link->assignment_done = 1;
}
