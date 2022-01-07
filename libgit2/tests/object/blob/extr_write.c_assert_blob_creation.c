
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_oid ;
typedef int (* blob_creator_fn ) (int *,int ,char const*) ;


 int cl_assert (int) ;
 int cl_git_mkfile (char const*,char*) ;
 int cl_must_pass (int ) ;
 scalar_t__ git_oid_streq (int *,char*) ;
 int repo ;

__attribute__((used)) static void assert_blob_creation(const char *path_to_file, const char *blob_from_path, blob_creator_fn creator)
{
 git_oid oid;
 cl_git_mkfile(path_to_file, "1..2...3... Can you hear me?\n");

 cl_must_pass(creator(&oid, repo, blob_from_path));
 cl_assert(git_oid_streq(&oid, "da5e4f20c91c81b44a7e298f3d3fb3fe2f178e32") == 0);
}
