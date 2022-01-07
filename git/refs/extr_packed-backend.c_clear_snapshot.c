
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snapshot {int dummy; } ;
struct packed_ref_store {struct snapshot* snapshot; } ;


 int release_snapshot (struct snapshot*) ;

__attribute__((used)) static void clear_snapshot(struct packed_ref_store *refs)
{
 if (refs->snapshot) {
  struct snapshot *snapshot = refs->snapshot;

  refs->snapshot = ((void*)0);
  release_snapshot(snapshot);
 }
}
