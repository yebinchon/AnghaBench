
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pack_entry {TYPE_1__* p; } ;
struct object_id {int dummy; } ;
struct TYPE_2__ {int freshened; int pack_name; } ;


 int find_pack_entry (int ,struct object_id const*,struct pack_entry*) ;
 int freshen_file (int ) ;
 int the_repository ;

__attribute__((used)) static int freshen_packed_object(const struct object_id *oid)
{
 struct pack_entry e;
 if (!find_pack_entry(the_repository, oid, &e))
  return 0;
 if (e.p->freshened)
  return 1;
 if (!freshen_file(e.p->pack_name))
  return 0;
 e.p->freshened = 1;
 return 1;
}
