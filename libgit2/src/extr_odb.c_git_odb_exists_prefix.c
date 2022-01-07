
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {int member_0; } ;
struct TYPE_14__ {TYPE_1__ member_0; } ;
typedef TYPE_2__ const git_oid ;
typedef int git_odb ;


 int GIT_ENOTFOUND ;
 size_t GIT_OID_HEXSZ ;
 size_t GIT_OID_MINPREFIXLEN ;
 int assert (int) ;
 int git_odb__error_ambiguous (char*) ;
 int git_odb__error_notfound (char*,TYPE_2__ const*,size_t) ;
 scalar_t__ git_odb_exists (int *,TYPE_2__ const*) ;
 int git_odb_refresh (int *) ;
 int git_oid__cpy_prefix (TYPE_2__ const*,TYPE_2__ const*,size_t) ;
 int git_oid_cpy (TYPE_2__ const*,TYPE_2__ const*) ;
 int odb_exists_prefix_1 (TYPE_2__ const*,int *,TYPE_2__ const*,size_t,int) ;

int git_odb_exists_prefix(
 git_oid *out, git_odb *db, const git_oid *short_id, size_t len)
{
 int error;
 git_oid key = {{0}};

 assert(db && short_id);

 if (len < GIT_OID_MINPREFIXLEN)
  return git_odb__error_ambiguous("prefix length too short");

 if (len >= GIT_OID_HEXSZ) {
  if (git_odb_exists(db, short_id)) {
   if (out)
    git_oid_cpy(out, short_id);
   return 0;
  } else {
   return git_odb__error_notfound(
    "no match for id prefix", short_id, len);
  }
 }

 git_oid__cpy_prefix(&key, short_id, len);

 error = odb_exists_prefix_1(out, db, &key, len, 0);

 if (error == GIT_ENOTFOUND && !git_odb_refresh(db))
  error = odb_exists_prefix_1(out, db, &key, len, 1);

 if (error == GIT_ENOTFOUND)
  return git_odb__error_notfound("no match for id prefix", &key, len);

 return error;
}
