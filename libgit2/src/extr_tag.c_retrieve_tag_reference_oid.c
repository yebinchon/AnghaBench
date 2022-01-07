
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int git_repository ;
typedef int git_oid ;
struct TYPE_4__ {int ptr; } ;
typedef TYPE_1__ git_buf ;


 int GIT_REFS_TAGS_DIR ;
 scalar_t__ git_buf_joinpath (TYPE_1__*,int ,char const*) ;
 int git_reference_name_to_id (int *,int *,int ) ;

__attribute__((used)) static int retrieve_tag_reference_oid(
 git_oid *oid,
 git_buf *ref_name_out,
 git_repository *repo,
 const char *tag_name)
{
 if (git_buf_joinpath(ref_name_out, GIT_REFS_TAGS_DIR, tag_name) < 0)
  return -1;

 return git_reference_name_to_id(oid, repo, ref_name_out->ptr);
}
