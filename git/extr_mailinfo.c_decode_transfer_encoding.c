
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
struct mailinfo {int transfer_encoding; } ;





 struct strbuf* decode_b_segment (struct strbuf*) ;
 struct strbuf* decode_q_segment (struct strbuf*,int ) ;
 int free (struct strbuf*) ;
 int strbuf_addbuf (struct strbuf*,struct strbuf*) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_reset (struct strbuf*) ;

__attribute__((used)) static void decode_transfer_encoding(struct mailinfo *mi, struct strbuf *line)
{
 struct strbuf *ret;

 switch (mi->transfer_encoding) {
 case 128:
  ret = decode_q_segment(line, 0);
  break;
 case 130:
  ret = decode_b_segment(line);
  break;
 case 129:
 default:
  return;
 }
 strbuf_reset(line);
 strbuf_addbuf(line, ret);
 strbuf_release(ret);
 free(ret);
}
