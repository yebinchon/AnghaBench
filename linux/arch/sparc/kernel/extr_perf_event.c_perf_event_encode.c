
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event_map {unsigned long pic_mask; scalar_t__ encoding; } ;



__attribute__((used)) static unsigned long perf_event_encode(const struct perf_event_map *pmap)
{
 return ((unsigned long) pmap->encoding << 16) | pmap->pic_mask;
}
