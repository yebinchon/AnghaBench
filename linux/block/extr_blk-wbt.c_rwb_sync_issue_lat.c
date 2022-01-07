
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct rq_wb {int sync_cookie; int sync_issue; } ;


 scalar_t__ READ_ONCE (int ) ;
 int ktime_get () ;
 scalar_t__ ktime_to_ns (int ) ;

__attribute__((used)) static u64 rwb_sync_issue_lat(struct rq_wb *rwb)
{
 u64 now, issue = READ_ONCE(rwb->sync_issue);

 if (!issue || !rwb->sync_cookie)
  return 0;

 now = ktime_to_ns(ktime_get());
 return now - issue;
}
