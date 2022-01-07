
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct revindex_entry {int nr; } ;
struct repository {int dummy; } ;
struct packed_git {int dummy; } ;
struct object_id {int hash; } ;
typedef int off_t ;


 int OBJ_BAD ;
 int OBJ_NONE ;
 struct revindex_entry* find_pack_revindex (struct packed_git*,int ) ;
 int mark_bad_packed_object (struct packed_git*,int ) ;
 int nth_packed_object_oid (struct object_id*,struct packed_git*,int ) ;
 int oid_object_info (struct repository*,struct object_id*,int *) ;

__attribute__((used)) static int retry_bad_packed_offset(struct repository *r,
       struct packed_git *p,
       off_t obj_offset)
{
 int type;
 struct revindex_entry *revidx;
 struct object_id oid;
 revidx = find_pack_revindex(p, obj_offset);
 if (!revidx)
  return OBJ_BAD;
 nth_packed_object_oid(&oid, p, revidx->nr);
 mark_bad_packed_object(p, oid.hash);
 type = oid_object_info(r, &oid, ((void*)0));
 if (type <= OBJ_NONE)
  return OBJ_BAD;
 return type;
}
