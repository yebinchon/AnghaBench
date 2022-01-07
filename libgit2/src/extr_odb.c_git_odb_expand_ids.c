
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int git_oid ;
struct TYPE_3__ {scalar_t__ type; scalar_t__ length; int id; } ;
typedef TYPE_1__ git_odb_expand_id ;
typedef int git_odb ;
typedef scalar_t__ git_object_t ;




 scalar_t__ GIT_OBJECT_ANY ;
 scalar_t__ GIT_OID_HEXSZ ;
 scalar_t__ GIT_OID_MINPREFIXLEN ;
 int assert (int) ;
 int git_error_clear () ;
 int git_oid_cpy (int *,int *) ;
 int memset (int *,int ,int) ;
 int odb_exists_prefix_1 (int *,int *,int *,scalar_t__,int) ;
 int odb_otype_fast (scalar_t__*,int *,int *) ;

int git_odb_expand_ids(
 git_odb *db,
 git_odb_expand_id *ids,
 size_t count)
{
 size_t i;

 assert(db && ids);

 for (i = 0; i < count; i++) {
  git_odb_expand_id *query = &ids[i];
  int error = 129;

  if (!query->type)
   query->type = GIT_OBJECT_ANY;


  if (query->length >= GIT_OID_MINPREFIXLEN && query->length < GIT_OID_HEXSZ) {
   git_oid actual_id;

   error = odb_exists_prefix_1(&actual_id, db, &query->id, query->length, 0);
   if (!error) {
    git_oid_cpy(&query->id, &actual_id);
    query->length = GIT_OID_HEXSZ;
   }
  }





  if (query->length >= GIT_OID_HEXSZ) {
   git_object_t actual_type;

   error = odb_otype_fast(&actual_type, db, &query->id);
   if (!error) {
    if (query->type != GIT_OBJECT_ANY && query->type != actual_type)
     error = 128;
    else
     query->type = actual_type;
   }
  }

  switch (error) {

  case 0:
   continue;


  case 128:
  case 129:
   memset(&query->id, 0, sizeof(git_oid));
   query->length = 0;
   query->type = 0;
   break;


  default:
   return error;
  }
 }

 git_error_clear();
 return 0;
}
