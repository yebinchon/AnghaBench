
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ timestamp_t ;
struct fetch_pack_args {int dummy; } ;
struct TYPE_7__ {TYPE_2__* item; } ;
struct TYPE_5__ {int oid; } ;
struct TYPE_6__ {scalar_t__ date; TYPE_1__ object; } ;


 int COMPLETE ;
 int _ (char*) ;
 TYPE_3__* complete ;
 int oid_to_hex (int *) ;
 int pop_most_recent_commit (TYPE_3__**,int ) ;
 int print_verbose (struct fetch_pack_args*,int ,int ) ;

__attribute__((used)) static void mark_recent_complete_commits(struct fetch_pack_args *args,
      timestamp_t cutoff)
{
 while (complete && cutoff <= complete->item->date) {
  print_verbose(args, _("Marking %s as complete"),
         oid_to_hex(&complete->item->object.oid));
  pop_most_recent_commit(&complete, COMPLETE);
 }
}
