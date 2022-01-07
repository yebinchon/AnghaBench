
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {size_t len; char* buf; } ;
struct format_commit_context {scalar_t__ flush_type; } ;


 int format_and_pad_commit (struct strbuf*,char const*,void*) ;
 int format_commit_one (struct strbuf*,char const*,void*) ;
 scalar_t__ no_flush ;
 int strbuf_insert (struct strbuf*,size_t,char*,int) ;
 int strbuf_setlen (struct strbuf*,int) ;

__attribute__((used)) static size_t format_commit_item(struct strbuf *sb,
     const char *placeholder,
     void *context)
{
 int consumed;
 size_t orig_len;
 enum {
  NO_MAGIC,
  ADD_LF_BEFORE_NON_EMPTY,
  DEL_LF_BEFORE_EMPTY,
  ADD_SP_BEFORE_NON_EMPTY
 } magic = NO_MAGIC;

 switch (placeholder[0]) {
 case '-':
  magic = DEL_LF_BEFORE_EMPTY;
  break;
 case '+':
  magic = ADD_LF_BEFORE_NON_EMPTY;
  break;
 case ' ':
  magic = ADD_SP_BEFORE_NON_EMPTY;
  break;
 default:
  break;
 }
 if (magic != NO_MAGIC)
  placeholder++;

 orig_len = sb->len;
 if (((struct format_commit_context *)context)->flush_type != no_flush)
  consumed = format_and_pad_commit(sb, placeholder, context);
 else
  consumed = format_commit_one(sb, placeholder, context);
 if (magic == NO_MAGIC)
  return consumed;

 if ((orig_len == sb->len) && magic == DEL_LF_BEFORE_EMPTY) {
  while (sb->len && sb->buf[sb->len - 1] == '\n')
   strbuf_setlen(sb, sb->len - 1);
 } else if (orig_len != sb->len) {
  if (magic == ADD_LF_BEFORE_NON_EMPTY)
   strbuf_insert(sb, orig_len, "\n", 1);
  else if (magic == ADD_SP_BEFORE_NON_EMPTY)
   strbuf_insert(sb, orig_len, " ", 1);
 }
 return consumed + 1;
}
