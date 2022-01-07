
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pack_backend {int dummy; } ;
struct git_pack_entry {int offset; int p; } ;
struct TYPE_3__ {size_t len; int type; void* data; int * member_0; } ;
typedef TYPE_1__ git_rawobj ;
typedef int git_oid ;
typedef int git_odb_backend ;
typedef int git_object_t ;


 int git_packfile_unpack (TYPE_1__*,int ,int *) ;
 int pack_entry_find (struct git_pack_entry*,struct pack_backend*,int const*) ;

__attribute__((used)) static int pack_backend__read(
 void **buffer_p, size_t *len_p, git_object_t *type_p,
 git_odb_backend *backend, const git_oid *oid)
{
 struct git_pack_entry e;
 git_rawobj raw = {((void*)0)};
 int error;

 if ((error = pack_entry_find(&e, (struct pack_backend *)backend, oid)) < 0 ||
  (error = git_packfile_unpack(&raw, e.p, &e.offset)) < 0)
  return error;

 *buffer_p = raw.data;
 *len_p = raw.len;
 *type_p = raw.type;

 return 0;
}
