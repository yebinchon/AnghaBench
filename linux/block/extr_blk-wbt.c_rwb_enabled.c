
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rq_wb {scalar_t__ wb_normal; } ;



__attribute__((used)) static inline bool rwb_enabled(struct rq_wb *rwb)
{
 return rwb && rwb->wb_normal != 0;
}
