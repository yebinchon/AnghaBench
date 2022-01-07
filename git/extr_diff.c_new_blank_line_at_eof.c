
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct emit_callback {int ws_rule; scalar_t__ blank_at_eof_in_preimage; scalar_t__ blank_at_eof_in_postimage; scalar_t__ lno_in_preimage; scalar_t__ lno_in_postimage; } ;


 int WS_BLANK_AT_EOF ;
 int ws_blank_line (char const*,int,int) ;

__attribute__((used)) static int new_blank_line_at_eof(struct emit_callback *ecbdata, const char *line, int len)
{
 if (!((ecbdata->ws_rule & WS_BLANK_AT_EOF) &&
       ecbdata->blank_at_eof_in_preimage &&
       ecbdata->blank_at_eof_in_postimage &&
       ecbdata->blank_at_eof_in_preimage <= ecbdata->lno_in_preimage &&
       ecbdata->blank_at_eof_in_postimage <= ecbdata->lno_in_postimage))
  return 0;
 return ws_blank_line(line, len, ecbdata->ws_rule);
}
