
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;


 struct strbuf STRBUF_INIT ;
 int _ (char*) ;
 int die (int ,char const*) ;
 int memcmp (char const*,char const*,size_t) ;
 int strbuf_add (struct strbuf*,char const*,size_t) ;
 int strbuf_addstr (struct strbuf*,char const*) ;
 char* strbuf_detach (struct strbuf*,int *) ;
 char* strchr (char const*,char) ;
 size_t strlen (char const*) ;
 int strncmp (char const*,char const*,size_t) ;

__attribute__((used)) static int match_name_with_pattern(const char *key, const char *name,
       const char *value, char **result)
{
 const char *kstar = strchr(key, '*');
 size_t klen;
 size_t ksuffixlen;
 size_t namelen;
 int ret;
 if (!kstar)
  die(_("key '%s' of pattern had no '*'"), key);
 klen = kstar - key;
 ksuffixlen = strlen(kstar + 1);
 namelen = strlen(name);
 ret = !strncmp(name, key, klen) && namelen >= klen + ksuffixlen &&
  !memcmp(name + namelen - ksuffixlen, kstar + 1, ksuffixlen);
 if (ret && value) {
  struct strbuf sb = STRBUF_INIT;
  const char *vstar = strchr(value, '*');
  if (!vstar)
   die(_("value '%s' of pattern has no '*'"), value);
  strbuf_add(&sb, value, vstar - value);
  strbuf_add(&sb, name + klen, namelen - klen - ksuffixlen);
  strbuf_addstr(&sb, vstar + 1);
  *result = strbuf_detach(&sb, ((void*)0));
 }
 return ret;
}
