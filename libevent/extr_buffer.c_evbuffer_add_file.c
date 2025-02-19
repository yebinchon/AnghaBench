
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evbuffer_file_segment {int dummy; } ;
struct evbuffer {int dummy; } ;
typedef int ev_off_t ;


 unsigned int EVBUF_FS_CLOSE_ON_FREE ;
 int evbuffer_add_file_segment (struct evbuffer*,struct evbuffer_file_segment*,int ,int ) ;
 int evbuffer_file_segment_free (struct evbuffer_file_segment*) ;
 struct evbuffer_file_segment* evbuffer_file_segment_new (int,int ,int ,unsigned int) ;

int
evbuffer_add_file(struct evbuffer *buf, int fd, ev_off_t offset, ev_off_t length)
{
 struct evbuffer_file_segment *seg;
 unsigned flags = EVBUF_FS_CLOSE_ON_FREE;
 int r;

 seg = evbuffer_file_segment_new(fd, offset, length, flags);
 if (!seg)
  return -1;
 r = evbuffer_add_file_segment(buf, seg, 0, length);
 if (r == -1)
  evbuffer_file_segment_free(seg);
 return r;
}
