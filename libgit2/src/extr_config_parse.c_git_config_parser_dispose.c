
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ctx; } ;
typedef TYPE_1__ git_config_parser ;


 int git_parse_ctx_clear (int *) ;

void git_config_parser_dispose(git_config_parser *parser)
{
 git_parse_ctx_clear(&parser->ctx);
}
