
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_tag ;
typedef int git_repository ;
typedef int git_oid ;
typedef int git_object_t ;
typedef int git_object ;
typedef int git_commit ;


 int check_error (int,char*) ;
 int git_commit_free (int *) ;
 char* git_object_type2string (int ) ;
 int git_oid_fromstr (int *,char*) ;
 int git_tag_free (int *) ;
 int git_tag_lookup (int **,int *,int *) ;
 char* git_tag_message (int *) ;
 char* git_tag_name (int *) ;
 int git_tag_target (int **,int *) ;
 int git_tag_target_type (int *) ;
 int printf (char*,...) ;

__attribute__((used)) static void tag_parsing(git_repository *repo)
{
 git_commit *commit;
 git_object_t type;
 git_tag *tag;
 git_oid oid;
 const char *name, *message;
 int error;

 printf("\n*Tag Parsing*\n");





 git_oid_fromstr(&oid, "b25fa35b38051e4ae45d4222e795f9df2e43f1d1");

 error = git_tag_lookup(&tag, repo, &oid);
 check_error(error, "looking up tag");







 git_tag_target((git_object **)&commit, tag);
 name = git_tag_name(tag);
 type = git_tag_target_type(tag);
 message = git_tag_message(tag);
 printf("Tag Name: %s\nTag Type: %s\nTag Message: %s\n",
  name, git_object_type2string(type), message);




 git_commit_free(commit);
 git_tag_free(tag);
}
