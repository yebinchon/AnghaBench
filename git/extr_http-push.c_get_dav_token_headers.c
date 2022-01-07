
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; } ;
struct remote_lock {int timeout; int token; } ;
struct curl_slist {int dummy; } ;
typedef enum dav_header_flag { ____Placeholder_dav_header_flag } dav_header_flag ;


 int DAV_HEADER_IF ;
 int DAV_HEADER_LOCK ;
 int DAV_HEADER_TIMEOUT ;
 struct strbuf STRBUF_INIT ;
 struct curl_slist* curl_slist_append (struct curl_slist*,int ) ;
 struct curl_slist* http_copy_default_headers () ;
 int strbuf_addf (struct strbuf*,char*,int ) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_reset (struct strbuf*) ;

__attribute__((used)) static struct curl_slist *get_dav_token_headers(struct remote_lock *lock, enum dav_header_flag options)
{
 struct strbuf buf = STRBUF_INIT;
 struct curl_slist *dav_headers = http_copy_default_headers();

 if (options & DAV_HEADER_IF) {
  strbuf_addf(&buf, "If: (<%s>)", lock->token);
  dav_headers = curl_slist_append(dav_headers, buf.buf);
  strbuf_reset(&buf);
 }
 if (options & DAV_HEADER_LOCK) {
  strbuf_addf(&buf, "Lock-Token: <%s>", lock->token);
  dav_headers = curl_slist_append(dav_headers, buf.buf);
  strbuf_reset(&buf);
 }
 if (options & DAV_HEADER_TIMEOUT) {
  strbuf_addf(&buf, "Timeout: Second-%ld", lock->timeout);
  dav_headers = curl_slist_append(dav_headers, buf.buf);
  strbuf_reset(&buf);
 }
 strbuf_release(&buf);

 return dav_headers;
}
