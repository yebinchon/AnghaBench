
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reflog_walk_info {size_t nr; struct commit_reflog* last_commit_reflog; struct commit_reflog** logs; } ;
struct commit_reflog {int recno; } ;
struct commit {int dummy; } ;


 scalar_t__ log_timestamp (struct commit_reflog*) ;
 struct commit* next_reflog_commit (struct commit_reflog*) ;

struct commit *next_reflog_entry(struct reflog_walk_info *walk)
{
 struct commit_reflog *best = ((void*)0);
 struct commit *best_commit = ((void*)0);
 size_t i;

 for (i = 0; i < walk->nr; i++) {
  struct commit_reflog *log = walk->logs[i];
  struct commit *commit = next_reflog_commit(log);

  if (!commit)
   continue;

  if (!best || log_timestamp(log) > log_timestamp(best)) {
   best = log;
   best_commit = commit;
  }
 }

 if (best) {
  best->recno--;
  walk->last_commit_reflog = best;
  return best_commit;
 }

 return ((void*)0);
}
