
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int git_repository ;
struct TYPE_11__ {char* content; } ;
struct TYPE_8__ {TYPE_4__ ctx; int path; } ;
typedef TYPE_1__ git_config_parser ;
typedef int git_config_level_t ;
typedef int git_config_entries ;
struct TYPE_9__ {int depth; int level; int * entries; TYPE_3__* file; int const* repo; } ;
typedef TYPE_2__ config_file_parse_data ;
struct TYPE_10__ {int path; } ;
typedef TYPE_3__ config_file ;


 int GIT_ERROR_CONFIG ;
 int MAX_INCLUDE_DEPTH ;
 int git_config_parse (TYPE_1__*,int *,int ,int *,int *,TYPE_2__*) ;
 int git_error_set (int ,char*) ;
 int git_parse_ctx_init (TYPE_4__*,char const*,size_t) ;
 int read_on_variable ;

__attribute__((used)) static int config_file_read_buffer(
 git_config_entries *entries,
 const git_repository *repo,
 config_file *file,
 git_config_level_t level,
 int depth,
 const char *buf,
 size_t buflen)
{
 config_file_parse_data parse_data;
 git_config_parser reader;
 int error;

 if (depth >= MAX_INCLUDE_DEPTH) {
  git_error_set(GIT_ERROR_CONFIG, "maximum config include depth reached");
  return -1;
 }


 reader.path = file->path;
 git_parse_ctx_init(&reader.ctx, buf, buflen);


 if (!reader.ctx.content || *reader.ctx.content == '\0') {
  error = 0;
  goto out;
 }

 parse_data.repo = repo;
 parse_data.file = file;
 parse_data.entries = entries;
 parse_data.level = level;
 parse_data.depth = depth;

 error = git_config_parse(&reader, ((void*)0), read_on_variable, ((void*)0), ((void*)0), &parse_data);

out:
 return error;
}
