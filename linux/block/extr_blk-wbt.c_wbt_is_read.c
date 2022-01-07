
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int wbt_flags; } ;


 int WBT_READ ;

__attribute__((used)) static inline bool wbt_is_read(struct request *rq)
{
 return rq->wbt_flags & WBT_READ;
}
