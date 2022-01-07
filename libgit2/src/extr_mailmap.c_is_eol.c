
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_parse_ctx ;


 int GIT_PARSE_PEEK_SKIP_WHITESPACE ;
 scalar_t__ git_parse_peek (char*,int *,int ) ;

__attribute__((used)) static bool is_eol(git_parse_ctx *ctx)
{
 char c;
 return git_parse_peek(&c, ctx, GIT_PARSE_PEEK_SKIP_WHITESPACE) < 0 || c == '#';
}
