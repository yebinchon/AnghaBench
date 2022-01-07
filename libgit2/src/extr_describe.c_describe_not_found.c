
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int oid_str ;
typedef int git_oid ;


 int GIT_ENOTFOUND ;
 int GIT_ERROR_DESCRIBE ;
 int GIT_OID_HEXSZ ;
 int git_error_set (int ,char const*,char*) ;
 int git_oid_tostr (char*,int,int const*) ;

__attribute__((used)) static int describe_not_found(const git_oid *oid, const char *message_format) {
 char oid_str[GIT_OID_HEXSZ + 1];
 git_oid_tostr(oid_str, sizeof(oid_str), oid);

 git_error_set(GIT_ERROR_DESCRIBE, message_format, oid_str);
 return GIT_ENOTFOUND;
}
