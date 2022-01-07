
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ timestamp_t ;
struct rerere_id {int dummy; } ;


 scalar_t__ rerere_created_at (struct rerere_id*) ;
 scalar_t__ rerere_last_used_at (struct rerere_id*) ;
 int unlink_rr_item (struct rerere_id*) ;

__attribute__((used)) static void prune_one(struct rerere_id *id,
        timestamp_t cutoff_resolve, timestamp_t cutoff_noresolve)
{
 timestamp_t then;
 timestamp_t cutoff;

 then = rerere_last_used_at(id);
 if (then)
  cutoff = cutoff_resolve;
 else {
  then = rerere_created_at(id);
  if (!then)
   return;
  cutoff = cutoff_noresolve;
 }
 if (then < cutoff)
  unlink_rr_item(id);
}
