
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event_attr {scalar_t__ exclude_kernel; scalar_t__ exclude_user; } ;



__attribute__((used)) static int event_requires_mode_exclusion(struct perf_event_attr *attr)
{

 return attr->exclude_user || attr->exclude_kernel;
}
