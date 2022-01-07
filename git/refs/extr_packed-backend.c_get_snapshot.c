
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snapshot {int dummy; } ;
struct packed_ref_store {struct snapshot* snapshot; int lock; } ;


 struct snapshot* create_snapshot (struct packed_ref_store*) ;
 int is_lock_file_locked (int *) ;
 int validate_snapshot (struct packed_ref_store*) ;

__attribute__((used)) static struct snapshot *get_snapshot(struct packed_ref_store *refs)
{
 if (!is_lock_file_locked(&refs->lock))
  validate_snapshot(refs);

 if (!refs->snapshot)
  refs->snapshot = create_snapshot(refs);

 return refs->snapshot;
}
