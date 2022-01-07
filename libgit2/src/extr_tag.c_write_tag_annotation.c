
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int git_signature ;
typedef int git_repository ;
typedef int git_oid ;
typedef int git_odb ;
typedef int git_object ;
struct TYPE_9__ {int size; int ptr; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int GIT_ERROR_OBJECT ;
 int GIT_OBJECT_TAG ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_buf_printf (TYPE_1__*,char*,char const*) ;
 int git_buf_putc (TYPE_1__*,char) ;
 scalar_t__ git_buf_puts (TYPE_1__*,char const*) ;
 int git_error_set (int ,char*) ;
 int git_object_id (int const*) ;
 int git_object_type (int const*) ;
 char const* git_object_type2string (int ) ;
 scalar_t__ git_odb_write (int *,int *,int ,int ,int ) ;
 int git_oid__writebuf (TYPE_1__*,char*,int ) ;
 scalar_t__ git_repository_odb__weakptr (int **,int *) ;
 int git_signature__writebuf (TYPE_1__*,char*,int const*) ;

__attribute__((used)) static int write_tag_annotation(
  git_oid *oid,
  git_repository *repo,
  const char *tag_name,
  const git_object *target,
  const git_signature *tagger,
  const char *message)
{
 git_buf tag = GIT_BUF_INIT;
 git_odb *odb;

 git_oid__writebuf(&tag, "object ", git_object_id(target));
 git_buf_printf(&tag, "type %s\n", git_object_type2string(git_object_type(target)));
 git_buf_printf(&tag, "tag %s\n", tag_name);
 git_signature__writebuf(&tag, "tagger ", tagger);
 git_buf_putc(&tag, '\n');

 if (git_buf_puts(&tag, message) < 0)
  goto on_error;

 if (git_repository_odb__weakptr(&odb, repo) < 0)
  goto on_error;

 if (git_odb_write(oid, odb, tag.ptr, tag.size, GIT_OBJECT_TAG) < 0)
  goto on_error;

 git_buf_dispose(&tag);
 return 0;

on_error:
 git_buf_dispose(&tag);
 git_error_set(GIT_ERROR_OBJECT, "failed to create tag annotation");
 return -1;
}
