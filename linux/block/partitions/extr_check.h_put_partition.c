
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tmp ;
struct parsed_partitions {int limit; char* name; int pp_buf; TYPE_1__* parts; } ;
typedef void* sector_t ;
struct TYPE_2__ {void* size; void* from; } ;


 int BDEVNAME_SIZE ;
 int PAGE_SIZE ;
 int snprintf (char*,int,char*,char*,int) ;
 int strlcat (int ,char*,int ) ;

__attribute__((used)) static inline void
put_partition(struct parsed_partitions *p, int n, sector_t from, sector_t size)
{
 if (n < p->limit) {
  char tmp[1 + BDEVNAME_SIZE + 10 + 1];

  p->parts[n].from = from;
  p->parts[n].size = size;
  snprintf(tmp, sizeof(tmp), " %s%d", p->name, n);
  strlcat(p->pp_buf, tmp, PAGE_SIZE);
 }
}
