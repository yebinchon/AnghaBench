
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evbuffer {int dummy; } ;
typedef int evutil_socket_t ;


 scalar_t__ EVUTIL_ERR_RW_RETRIABLE (int) ;
 int TT_BLATHER (char*) ;
 int addfile_test_done_writing ;
 int addfile_test_event_base ;
 int addfile_test_total_written ;
 scalar_t__ evbuffer_get_length (struct evbuffer*) ;
 int evbuffer_validate (struct evbuffer*) ;
 int evbuffer_write (struct evbuffer*,int ) ;
 int event_base_loopexit (int ,int *) ;
 int evutil_socket_geterror (int ) ;
 int tt_fail_perror (char*) ;

__attribute__((used)) static void
addfile_test_writecb(evutil_socket_t fd, short what, void *arg)
{
 struct evbuffer *b = arg;
 int r;
 evbuffer_validate(b);
 while (evbuffer_get_length(b)) {
  r = evbuffer_write(b, fd);
  if (r > 0) {
   addfile_test_total_written += r;
   TT_BLATHER(("Wrote %d/%d bytes", r, addfile_test_total_written));
  } else {
   int e = evutil_socket_geterror(fd);
   if (EVUTIL_ERR_RW_RETRIABLE(e))
    return;
   tt_fail_perror("write");
   event_base_loopexit(addfile_test_event_base,((void*)0));
  }
  evbuffer_validate(b);
 }
 addfile_test_done_writing = 1;
 return;
end:
 event_base_loopexit(addfile_test_event_base,((void*)0));
}
