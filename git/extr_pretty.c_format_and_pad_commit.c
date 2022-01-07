
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct strbuf {char* buf; int len; } ;
struct format_commit_context {int padding; scalar_t__ flush_type; int truncate; TYPE_1__* pretty_ctx; } ;
struct TYPE_2__ {scalar_t__ graph_width; } ;


 struct strbuf STRBUF_INIT ;
 int display_mode_esc_sequence_len (char const*) ;
 scalar_t__ flush_both ;
 scalar_t__ flush_left ;
 scalar_t__ flush_left_and_steal ;
 int format_commit_one (struct strbuf*,char const*,struct format_commit_context*) ;
 int memcpy (char const*,char const*,int) ;
 scalar_t__ no_flush ;
 int strbuf_addbuf (struct strbuf*,struct strbuf*) ;
 int strbuf_addchars (struct strbuf*,char,int) ;
 int strbuf_insert (struct strbuf*,int ,char const*,int) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_setlen (struct strbuf*,int) ;
 int strbuf_utf8_replace (struct strbuf*,int,int,char*) ;
 char* strrchr (char*,char) ;




 int utf8_strnwidth (char const*,int,int) ;

__attribute__((used)) static size_t format_and_pad_commit(struct strbuf *sb,
        const char *placeholder,
        struct format_commit_context *c)
{
 struct strbuf local_sb = STRBUF_INIT;
 int total_consumed = 0, len, padding = c->padding;
 if (padding < 0) {
  const char *start = strrchr(sb->buf, '\n');
  int occupied;
  if (!start)
   start = sb->buf;
  occupied = utf8_strnwidth(start, -1, 1);
  occupied += c->pretty_ctx->graph_width;
  padding = (-padding) - occupied;
 }
 while (1) {
  int modifier = *placeholder == 'C';
  int consumed = format_commit_one(&local_sb, placeholder, c);
  total_consumed += consumed;

  if (!modifier)
   break;

  placeholder += consumed;
  if (*placeholder != '%')
   break;
  placeholder++;
  total_consumed++;
 }
 len = utf8_strnwidth(local_sb.buf, -1, 1);

 if (c->flush_type == flush_left_and_steal) {
  const char *ch = sb->buf + sb->len - 1;
  while (len > padding && ch > sb->buf) {
   const char *p;
   if (*ch == ' ') {
    ch--;
    padding++;
    continue;
   }

   if (*ch != 'm')
    break;
   p = ch - 1;
   while (ch - p < 10 && *p != '\033')
    p--;
   if (*p != '\033' ||
       ch + 1 - p != display_mode_esc_sequence_len(p))
    break;




   strbuf_insert(&local_sb, 0, p, ch + 1 - p);
   ch = p - 1;
  }
  strbuf_setlen(sb, ch + 1 - sb->buf);
  c->flush_type = flush_left;
 }

 if (len > padding) {
  switch (c->truncate) {
  case 131:
   strbuf_utf8_replace(&local_sb,
         0, len - (padding - 2),
         "..");
   break;
  case 130:
   strbuf_utf8_replace(&local_sb,
         padding / 2 - 1,
         len - (padding - 2),
         "..");
   break;
  case 128:
   strbuf_utf8_replace(&local_sb,
         padding - 2, len - (padding - 2),
         "..");
   break;
  case 129:
   break;
  }
  strbuf_addbuf(sb, &local_sb);
 } else {
  int sb_len = sb->len, offset = 0;
  if (c->flush_type == flush_left)
   offset = padding - len;
  else if (c->flush_type == flush_both)
   offset = (padding - len) / 2;




  padding = padding - len + local_sb.len;
  strbuf_addchars(sb, ' ', padding);
  memcpy(sb->buf + sb_len + offset, local_sb.buf,
         local_sb.len);
 }
 strbuf_release(&local_sb);
 c->flush_type = no_flush;
 return total_consumed;
}
