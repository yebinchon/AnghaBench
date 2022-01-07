
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_oid ;


 int git_tag_create_from_buffer (int *,int *,char const*,int) ;

int git_tag_create_frombuffer(git_oid *oid, git_repository *repo, const char *buffer, int allow_ref_overwrite)
{
 return git_tag_create_from_buffer(oid, repo, buffer, allow_ref_overwrite);
}
