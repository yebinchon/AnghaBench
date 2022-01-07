
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
struct ident_split {char* name_begin; char* name_end; char* mail_begin; char* mail_end; char const* date_begin; char const* date_end; } ;
struct date_mode {int dummy; } ;


 struct date_mode const* DATE_MODE (int ) ;
 int ISO8601 ;
 int ISO8601_STRICT ;
 int RELATIVE ;
 int RFC2822 ;
 int mailmap_name (char const**,size_t*,char const**,size_t*) ;
 char* memchr (char const*,char,size_t) ;
 int show_ident_date (struct ident_split*,struct date_mode const*) ;
 scalar_t__ split_ident_line (struct ident_split*,char const*,int) ;
 int strbuf_add (struct strbuf*,char const*,int) ;
 int strbuf_addstr (struct strbuf*,int ) ;

__attribute__((used)) static size_t format_person_part(struct strbuf *sb, char part,
     const char *msg, int len,
     const struct date_mode *dmode)
{

 const int placeholder_len = 2;
 struct ident_split s;
 const char *name, *mail;
 size_t maillen, namelen;

 if (split_ident_line(&s, msg, len) < 0)
  goto skip;

 name = s.name_begin;
 namelen = s.name_end - s.name_begin;
 mail = s.mail_begin;
 maillen = s.mail_end - s.mail_begin;

 if (part == 'N' || part == 'E' || part == 'L')
  mailmap_name(&mail, &maillen, &name, &namelen);
 if (part == 'n' || part == 'N') {
  strbuf_add(sb, name, namelen);
  return placeholder_len;
 }
 if (part == 'e' || part == 'E') {
  strbuf_add(sb, mail, maillen);
  return placeholder_len;
 }
 if (part == 'l' || part == 'L') {
  const char *at = memchr(mail, '@', maillen);
  if (at)
   maillen = at - mail;
  strbuf_add(sb, mail, maillen);
  return placeholder_len;
 }

 if (!s.date_begin)
  goto skip;

 if (part == 't') {
  strbuf_add(sb, s.date_begin, s.date_end - s.date_begin);
  return placeholder_len;
 }

 switch (part) {
 case 'd':
  strbuf_addstr(sb, show_ident_date(&s, dmode));
  return placeholder_len;
 case 'D':
  strbuf_addstr(sb, show_ident_date(&s, DATE_MODE(RFC2822)));
  return placeholder_len;
 case 'r':
  strbuf_addstr(sb, show_ident_date(&s, DATE_MODE(RELATIVE)));
  return placeholder_len;
 case 'i':
  strbuf_addstr(sb, show_ident_date(&s, DATE_MODE(ISO8601)));
  return placeholder_len;
 case 'I':
  strbuf_addstr(sb, show_ident_date(&s, DATE_MODE(ISO8601_STRICT)));
  return placeholder_len;
 }

skip:





 if (part == 'n' || part == 'e' || part == 't' || part == 'd'
     || part == 'D' || part == 'r' || part == 'i')
  return placeholder_len;

 return 0;
}
