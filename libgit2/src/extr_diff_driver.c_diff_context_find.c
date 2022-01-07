
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int ptr; scalar_t__ size; } ;
struct TYPE_5__ {TYPE_2__ line; int driver; int (* match_line ) (int ,TYPE_2__*) ;} ;
typedef TYPE_1__ git_diff_find_context_payload ;


 int git_buf_rtrim (TYPE_2__*) ;
 scalar_t__ git_buf_set (TYPE_2__*,char const*,size_t) ;
 int memcpy (char*,int ,size_t) ;
 int stub1 (int ,TYPE_2__*) ;

__attribute__((used)) static long diff_context_find(
 const char *line,
 long line_len,
 char *out,
 long out_size,
 void *payload)
{
 git_diff_find_context_payload *ctxt = payload;

 if (git_buf_set(&ctxt->line, line, (size_t)line_len) < 0)
  return -1;
 git_buf_rtrim(&ctxt->line);

 if (!ctxt->line.size)
  return -1;

 if (!ctxt->match_line || !ctxt->match_line(ctxt->driver, &ctxt->line))
  return -1;

 if (out_size > (long)ctxt->line.size)
  out_size = (long)ctxt->line.size;
 memcpy(out, ctxt->line.ptr, (size_t)out_size);

 return out_size;
}
