
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snapshot {int validity; int referrers; } ;


 int clear_snapshot_buffer (struct snapshot*) ;
 int free (struct snapshot*) ;
 int stat_validity_clear (int *) ;

__attribute__((used)) static int release_snapshot(struct snapshot *snapshot)
{
 if (!--snapshot->referrers) {
  stat_validity_clear(&snapshot->validity);
  clear_snapshot_buffer(snapshot);
  free(snapshot);
  return 1;
 } else {
  return 0;
 }
}
