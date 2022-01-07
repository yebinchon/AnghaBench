
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kyber_queue_data {int q; TYPE_2__* domain_tokens; } ;
struct TYPE_3__ {unsigned int depth; } ;
struct TYPE_4__ {TYPE_1__ sb; } ;


 unsigned int clamp (unsigned int,unsigned int,int ) ;
 int * kyber_depth ;
 int * kyber_domain_names ;
 int sbitmap_queue_resize (TYPE_2__*,unsigned int) ;
 int trace_kyber_adjust (int ,int ,unsigned int) ;

__attribute__((used)) static void kyber_resize_domain(struct kyber_queue_data *kqd,
    unsigned int sched_domain, unsigned int depth)
{
 depth = clamp(depth, 1U, kyber_depth[sched_domain]);
 if (depth != kqd->domain_tokens[sched_domain].sb.depth) {
  sbitmap_queue_resize(&kqd->domain_tokens[sched_domain], depth);
  trace_kyber_adjust(kqd->q, kyber_domain_names[sched_domain],
       depth);
 }
}
