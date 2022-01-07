
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_usec; int tv_sec; } ;
struct ringbuf_entry {int usec; int sec; } ;
struct ringbuf {int slen; int len; int fill; struct ringbuf_entry* buf; } ;


 int gettimeofday (struct timeval*,int *) ;
 int memset (struct ringbuf_entry*,int ,int) ;

struct ringbuf_entry * ringbuf_add(struct ringbuf *r)
{
 struct timeval t;
 struct ringbuf_entry *e;

 gettimeofday(&t, ((void*)0));

 e = r->buf + (r->fill++ * r->slen);
 r->fill %= r->len;

 memset(e, 0, r->slen);

 e->sec = t.tv_sec;
 e->usec = t.tv_usec;

 return e;
}
