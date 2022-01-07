
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref {struct ref* peer_ref; void* remote_status; void* symref; int * next; int name; } ;


 int memcpy (struct ref*,struct ref const*,size_t) ;
 size_t st_add3 (int,int ,int) ;
 int strlen (int ) ;
 struct ref* xmalloc (size_t) ;
 void* xstrdup_or_null (void*) ;

struct ref *copy_ref(const struct ref *ref)
{
 struct ref *cpy;
 size_t len;
 if (!ref)
  return ((void*)0);
 len = st_add3(sizeof(struct ref), strlen(ref->name), 1);
 cpy = xmalloc(len);
 memcpy(cpy, ref, len);
 cpy->next = ((void*)0);
 cpy->symref = xstrdup_or_null(ref->symref);
 cpy->remote_status = xstrdup_or_null(ref->remote_status);
 cpy->peer_ref = copy_ref(ref->peer_ref);
 return cpy;
}
