
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_size; } ;
struct evbuffer_file_segment {int refcnt; int fd; unsigned int flags; int file_offset; int length; int can_sendfile; int lock; int * cleanup_cb_arg; int * cleanup_cb; } ;
typedef int ev_uint64_t ;
typedef int ev_off_t ;


 int EVBUFFER_CHAIN_MAX ;
 unsigned int EVBUF_FS_DISABLE_LOCKING ;
 unsigned int EVBUF_FS_DISABLE_SENDFILE ;
 int EVTHREAD_ALLOC_LOCK (int ,int ) ;
 scalar_t__ evbuffer_file_segment_materialize (struct evbuffer_file_segment*) ;
 scalar_t__ fstat (int,struct stat*) ;
 struct evbuffer_file_segment* mm_calloc (int,int) ;
 int mm_free (struct evbuffer_file_segment*) ;

struct evbuffer_file_segment *
evbuffer_file_segment_new(
 int fd, ev_off_t offset, ev_off_t length, unsigned flags)
{
 struct evbuffer_file_segment *seg =
     mm_calloc(sizeof(struct evbuffer_file_segment), 1);
 if (!seg)
  return ((void*)0);
 seg->refcnt = 1;
 seg->fd = fd;
 seg->flags = flags;
 seg->file_offset = offset;
 seg->cleanup_cb = ((void*)0);
 seg->cleanup_cb_arg = ((void*)0);
 if (length == -1) {
  struct stat st;
  if (fstat(fd, &st) < 0)
   goto err;
  length = st.st_size;
 }
 seg->length = length;

 if (offset < 0 || length < 0 ||
     ((ev_uint64_t)length > EVBUFFER_CHAIN_MAX) ||
     (ev_uint64_t)offset > (ev_uint64_t)(EVBUFFER_CHAIN_MAX - length))
  goto err;
 if (evbuffer_file_segment_materialize(seg)<0)
  goto err;




 if (!(flags & EVBUF_FS_DISABLE_LOCKING)) {
  EVTHREAD_ALLOC_LOCK(seg->lock, 0);
 }
 return seg;
err:
 mm_free(seg);
 return ((void*)0);
}
