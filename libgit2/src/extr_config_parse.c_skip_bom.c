
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int content_len; int content; } ;
typedef TYPE_1__ git_parse_ctx ;
typedef int git_buf ;
typedef scalar_t__ git_bom_t ;


 scalar_t__ GIT_BOM_UTF8 ;
 int GIT_BUF_INIT_CONST (int ,int ) ;
 int git_buf_text_detect_bom (scalar_t__*,int *) ;
 int git_parse_advance_chars (TYPE_1__*,int) ;

__attribute__((used)) static int skip_bom(git_parse_ctx *parser)
{
 git_buf buf = GIT_BUF_INIT_CONST(parser->content, parser->content_len);
 git_bom_t bom;
 int bom_offset = git_buf_text_detect_bom(&bom, &buf);

 if (bom == GIT_BOM_UTF8)
  git_parse_advance_chars(parser, bom_offset);



 return 0;
}
