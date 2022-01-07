
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ pos_in_chain; int * chain; } ;
struct evbuffer_ptr {scalar_t__ pos; TYPE_1__ internal_; } ;
struct evbuffer {int * first; } ;
typedef int it ;
typedef scalar_t__ ev_ssize_t ;
typedef enum evbuffer_eol_style { ____Placeholder_evbuffer_eol_style } evbuffer_eol_style ;







 int EVBUFFER_LOCK (struct evbuffer*) ;
 int EVBUFFER_UNLOCK (struct evbuffer*) ;
 int PTR_NOT_FOUND (struct evbuffer_ptr*) ;
 int evbuffer_find_eol_char (struct evbuffer_ptr*) ;
 char evbuffer_getchr (struct evbuffer_ptr*) ;
 int evbuffer_ptr_subtract (struct evbuffer*,struct evbuffer_ptr*,int) ;
 struct evbuffer_ptr evbuffer_search (struct evbuffer*,char*,int,struct evbuffer_ptr*) ;
 int evbuffer_strchr (struct evbuffer_ptr*,char) ;
 size_t evbuffer_strspn (struct evbuffer_ptr*,char*) ;
 int memcpy (struct evbuffer_ptr*,struct evbuffer_ptr*,int) ;

struct evbuffer_ptr
evbuffer_search_eol(struct evbuffer *buffer,
    struct evbuffer_ptr *start, size_t *eol_len_out,
    enum evbuffer_eol_style eol_style)
{
 struct evbuffer_ptr it, it2;
 size_t extra_drain = 0;
 int ok = 0;


 if (start && start->internal_.chain == ((void*)0)) {
  PTR_NOT_FOUND(&it);
  if (eol_len_out)
   *eol_len_out = extra_drain;
  return it;
 }

 EVBUFFER_LOCK(buffer);

 if (start) {
  memcpy(&it, start, sizeof(it));
 } else {
  it.pos = 0;
  it.internal_.chain = buffer->first;
  it.internal_.pos_in_chain = 0;
 }



 switch (eol_style) {
 case 132:
  if (evbuffer_find_eol_char(&it) < 0)
   goto done;
  memcpy(&it2, &it, sizeof(it));
  extra_drain = evbuffer_strspn(&it2, "\r\n");
  break;
 case 130: {
  it = evbuffer_search(buffer, "\r\n", 2, &it);
  if (it.pos < 0)
   goto done;
  extra_drain = 2;
  break;
 }
 case 131: {
  ev_ssize_t start_pos = it.pos;

  if (evbuffer_strchr(&it, '\n') < 0)
   goto done;
  extra_drain = 1;

  if (it.pos == start_pos)
   break;



  memcpy(&it2, &it, sizeof(it));
  if (evbuffer_ptr_subtract(buffer, &it2, 1)<0)
   break;
  if (evbuffer_getchr(&it2) == '\r') {
   memcpy(&it, &it2, sizeof(it));
   extra_drain = 2;
  }
  break;
 }
 case 129:
  if (evbuffer_strchr(&it, '\n') < 0)
   goto done;
  extra_drain = 1;
  break;
 case 128:
  if (evbuffer_strchr(&it, '\0') < 0)
   goto done;
  extra_drain = 1;
  break;
 default:
  goto done;
 }

 ok = 1;
done:
 EVBUFFER_UNLOCK(buffer);

 if (!ok)
  PTR_NOT_FOUND(&it);
 if (eol_len_out)
  *eol_len_out = extra_drain;

 return it;
}
