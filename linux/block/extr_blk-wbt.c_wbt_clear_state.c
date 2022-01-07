
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {scalar_t__ wbt_flags; } ;



__attribute__((used)) static inline void wbt_clear_state(struct request *rq)
{
 rq->wbt_flags = 0;
}
