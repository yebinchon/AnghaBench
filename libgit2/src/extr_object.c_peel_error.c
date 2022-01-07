
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_oid ;
typedef int git_object_t ;


 int GIT_ERROR_OBJECT ;
 int GIT_OID_HEXSZ ;
 int git_error_set (int ,char*,char*,char const*,int ) ;
 char* git_object_type2string (int ) ;
 int git_oid_fmt (char*,int const*) ;

__attribute__((used)) static int peel_error(int error, const git_oid *oid, git_object_t type)
{
 const char *type_name;
 char hex_oid[GIT_OID_HEXSZ + 1];

 type_name = git_object_type2string(type);

 git_oid_fmt(hex_oid, oid);
 hex_oid[GIT_OID_HEXSZ] = '\0';

 git_error_set(GIT_ERROR_OBJECT, "the git_object of id '%s' can not be "
  "successfully peeled into a %s (git_object_t=%i).", hex_oid, type_name, type);

 return error;
}
