
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct strbuf {char* buf; size_t len; } ;
struct TYPE_4__ {int type; } ;
struct TYPE_3__ {int timestamp; int author; int log; } ;


 int S_IFLNK ;
 int S_IFREG ;
 int constcmp (char const*,char*) ;
 int die (char*) ;
 TYPE_2__ node_ctx ;
 int parse_date_basic (char*,int *,int *) ;
 TYPE_1__ rev_ctx ;
 int strbuf_reset (int *) ;
 int strbuf_swap (int *,struct strbuf*) ;
 size_t strlen (char*) ;
 int warning (char*,char*) ;

__attribute__((used)) static void handle_property(const struct strbuf *key_buf,
    struct strbuf *val,
    uint32_t *type_set)
{
 const char *key = key_buf->buf;
 size_t keylen = key_buf->len;

 switch (keylen + 1) {
 case sizeof("svn:log"):
  if (constcmp(key, "svn:log"))
   break;
  if (!val)
   die("invalid dump: unsets svn:log");
  strbuf_swap(&rev_ctx.log, val);
  break;
 case sizeof("svn:author"):
  if (constcmp(key, "svn:author"))
   break;
  if (!val)
   strbuf_reset(&rev_ctx.author);
  else
   strbuf_swap(&rev_ctx.author, val);
  break;
 case sizeof("svn:date"):
  if (constcmp(key, "svn:date"))
   break;
  if (!val)
   die("invalid dump: unsets svn:date");
  if (parse_date_basic(val->buf, &rev_ctx.timestamp, ((void*)0)))
   warning("invalid timestamp: %s", val->buf);
  break;
 case sizeof("svn:executable"):
 case sizeof("svn:special"):
  if (keylen == strlen("svn:executable") &&
      constcmp(key, "svn:executable"))
   break;
  if (keylen == strlen("svn:special") &&
      constcmp(key, "svn:special"))
   break;
  if (*type_set) {
   if (!val)
    return;
   die("invalid dump: sets type twice");
  }
  if (!val) {
   node_ctx.type = S_IFREG | 0644;
   return;
  }
  *type_set = 1;
  node_ctx.type = keylen == strlen("svn:executable") ?
    (S_IFREG | 0755) :
    S_IFLNK;
 }
}
