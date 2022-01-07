
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ timestamp_t ;
struct commit_list {TYPE_1__* item; } ;
struct commit {int dummy; } ;
struct TYPE_2__ {scalar_t__ date; } ;


 int SLOP ;
 int everybody_uninteresting (struct commit_list*,struct commit**) ;

__attribute__((used)) static int still_interesting(struct commit_list *src, timestamp_t date, int slop,
        struct commit **interesting_cache)
{



 if (!src)
  return 0;





 if (date <= src->item->date)
  return SLOP;





 if (!everybody_uninteresting(src, interesting_cache))
  return SLOP;


 return slop-1;
}
