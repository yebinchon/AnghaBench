
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int git_repository ;
typedef int git_config_parser ;
typedef int git_config_level_t ;
typedef int git_config_backend ;
struct TYPE_6__ {int level; int entries; } ;
typedef TYPE_2__ config_memory_parse_data ;
struct TYPE_5__ {int size; int ptr; } ;
struct TYPE_7__ {int entries; TYPE_1__ cfg; } ;
typedef TYPE_3__ config_memory_backend ;


 int GIT_PARSE_CTX_INIT ;
 int GIT_UNUSED (int const*) ;
 int git_config_parse (int *,int *,int ,int *,int *,TYPE_2__*) ;
 int git_config_parser_dispose (int *) ;
 int git_config_parser_init (int *,char*,int ,int ) ;
 int read_variable_cb ;

__attribute__((used)) static int config_memory_open(git_config_backend *backend, git_config_level_t level, const git_repository *repo)
{
 config_memory_backend *memory_backend = (config_memory_backend *) backend;
 git_config_parser parser = GIT_PARSE_CTX_INIT;
 config_memory_parse_data parse_data;
 int error;

 GIT_UNUSED(repo);

 if ((error = git_config_parser_init(&parser, "in-memory", memory_backend->cfg.ptr,
         memory_backend->cfg.size)) < 0)
  goto out;
 parse_data.entries = memory_backend->entries;
 parse_data.level = level;

 if ((error = git_config_parse(&parser, ((void*)0), read_variable_cb, ((void*)0), ((void*)0), &parse_data)) < 0)
  goto out;

out:
 git_config_parser_dispose(&parser);
 return error;
}
