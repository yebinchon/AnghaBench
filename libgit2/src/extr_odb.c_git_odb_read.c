
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_oid ;
typedef int git_odb_object ;
typedef int git_odb ;


 int GIT_ENOTFOUND ;
 int GIT_OID_HEXSZ ;
 int assert (int ) ;
 int error_null_oid (int,char*) ;
 int * git_cache_get_raw (int ,int const*) ;
 int git_odb__error_notfound (char*,int const*,int ) ;
 int git_odb_refresh (int *) ;
 scalar_t__ git_oid_is_zero (int const*) ;
 int odb_cache (int *) ;
 int odb_read_1 (int **,int *,int const*,int) ;

int git_odb_read(git_odb_object **out, git_odb *db, const git_oid *id)
{
 int error;

 assert(out && db && id);

 if (git_oid_is_zero(id))
  return error_null_oid(GIT_ENOTFOUND, "cannot read object");

 *out = git_cache_get_raw(odb_cache(db), id);
 if (*out != ((void*)0))
  return 0;

 error = odb_read_1(out, db, id, 0);

 if (error == GIT_ENOTFOUND && !git_odb_refresh(db))
  error = odb_read_1(out, db, id, 1);

 if (error == GIT_ENOTFOUND)
  return git_odb__error_notfound("no match for id", id, GIT_OID_HEXSZ);

 return error;
}
