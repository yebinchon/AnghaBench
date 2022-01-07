
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {char const* buf; } ;


 int has_dos_drive_prefix (char const*) ;
 scalar_t__ have_same_root (char const*,char const*) ;
 scalar_t__ is_dir_sep (char const) ;
 int strbuf_addstr (struct strbuf*,char const*) ;
 int strbuf_grow (struct strbuf*,int) ;
 int strbuf_reset (struct strbuf*) ;
 int strlen (char const*) ;

const char *relative_path(const char *in, const char *prefix,
     struct strbuf *sb)
{
 int in_len = in ? strlen(in) : 0;
 int prefix_len = prefix ? strlen(prefix) : 0;
 int in_off = 0;
 int prefix_off = 0;
 int i = 0, j = 0;

 if (!in_len)
  return "./";
 else if (!prefix_len)
  return in;

 if (have_same_root(in, prefix))

  i = j = has_dos_drive_prefix(in);
 else {
  return in;
 }

 while (i < prefix_len && j < in_len && prefix[i] == in[j]) {
  if (is_dir_sep(prefix[i])) {
   while (is_dir_sep(prefix[i]))
    i++;
   while (is_dir_sep(in[j]))
    j++;
   prefix_off = i;
   in_off = j;
  } else {
   i++;
   j++;
  }
 }

 if (

     i >= prefix_len &&




     prefix_off < prefix_len) {
  if (j >= in_len) {

   in_off = in_len;
  } else if (is_dir_sep(in[j])) {

   while (is_dir_sep(in[j]))
    j++;
   in_off = j;
  } else {

   i = prefix_off;
  }
 } else if (

     j >= in_len &&

     in_off < in_len) {
  if (is_dir_sep(prefix[i])) {

   while (is_dir_sep(prefix[i]))
    i++;
   in_off = in_len;
  }
 }
 in += in_off;
 in_len -= in_off;

 if (i >= prefix_len) {
  if (!in_len)
   return "./";
  else
   return in;
 }

 strbuf_reset(sb);
 strbuf_grow(sb, in_len);

 while (i < prefix_len) {
  if (is_dir_sep(prefix[i])) {
   strbuf_addstr(sb, "../");
   while (is_dir_sep(prefix[i]))
    i++;
   continue;
  }
  i++;
 }
 if (!is_dir_sep(prefix[prefix_len - 1]))
  strbuf_addstr(sb, "../");

 strbuf_addstr(sb, in);

 return sb->buf;
}
