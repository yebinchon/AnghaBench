
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int dummy; } ;
struct blk_mq_tags {unsigned int nr_tags; struct request** rqs; } ;


 int prefetch (struct request*) ;

struct request *blk_mq_tag_to_rq(struct blk_mq_tags *tags, unsigned int tag)
{
 if (tag < tags->nr_tags) {
  prefetch(tags->rqs[tag]);
  return tags->rqs[tag];
 }

 return ((void*)0);
}
