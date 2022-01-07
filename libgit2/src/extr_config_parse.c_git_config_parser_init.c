
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* path; int ctx; } ;
typedef TYPE_1__ git_config_parser ;


 int git_parse_ctx_init (int *,char const*,size_t) ;

int git_config_parser_init(git_config_parser *out, const char *path, const char *data, size_t datalen)
{
 out->path = path;
 return git_parse_ctx_init(&out->ctx, data, datalen);
}
