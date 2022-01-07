
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct packed_ref_store {int path; TYPE_1__* snapshot; } ;
struct TYPE_2__ {int validity; } ;


 int clear_snapshot (struct packed_ref_store*) ;
 int stat_validity_check (int *,int ) ;

__attribute__((used)) static void validate_snapshot(struct packed_ref_store *refs)
{
 if (refs->snapshot &&
     !stat_validity_check(&refs->snapshot->validity, refs->path))
  clear_snapshot(refs);
}
