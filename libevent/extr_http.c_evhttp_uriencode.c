
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evbuffer {int dummy; } ;
typedef scalar_t__ ev_ssize_t ;


 scalar_t__ CHAR_IS_UNRESERVED (char const) ;
 size_t EV_SSIZE_MAX ;
 int evbuffer_add (struct evbuffer*,char const*,int) ;
 int evbuffer_add_printf (struct evbuffer*,char*,unsigned char) ;
 int evbuffer_free (struct evbuffer*) ;
 int evbuffer_get_length (struct evbuffer*) ;
 struct evbuffer* evbuffer_new () ;
 int evbuffer_remove (struct evbuffer*,char*,int ) ;
 char* mm_malloc (int ) ;
 size_t strlen (char const*) ;

char *
evhttp_uriencode(const char *uri, ev_ssize_t len, int space_as_plus)
{
 struct evbuffer *buf = evbuffer_new();
 const char *p, *end;
 char *result = ((void*)0);

 if (!buf) {
  goto out;
 }

 if (len >= 0) {
  if (uri + len < uri) {
   goto out;
  }

  end = uri + len;
 } else {
  size_t slen = strlen(uri);

  if (slen >= EV_SSIZE_MAX) {

   goto out;
  }

  if (uri + slen < uri) {
   goto out;
  }

  end = uri + slen;
 }

 for (p = uri; p < end; p++) {
  if (CHAR_IS_UNRESERVED(*p)) {
   evbuffer_add(buf, p, 1);
  } else if (*p == ' ' && space_as_plus) {
   evbuffer_add(buf, "+", 1);
  } else {
   evbuffer_add_printf(buf, "%%%02X", (unsigned char)(*p));
  }
 }

 evbuffer_add(buf, "", 1);
 result = mm_malloc(evbuffer_get_length(buf));

 if (result)
  evbuffer_remove(buf, result, evbuffer_get_length(buf));

out:
 if (buf)
  evbuffer_free(buf);
 return result;
}
