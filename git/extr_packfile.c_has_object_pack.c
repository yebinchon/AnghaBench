
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pack_entry {int dummy; } ;
struct object_id {int dummy; } ;


 int find_pack_entry (int ,struct object_id const*,struct pack_entry*) ;
 int the_repository ;

int has_object_pack(const struct object_id *oid)
{
 struct pack_entry e;
 return find_pack_entry(the_repository, oid, &e);
}
