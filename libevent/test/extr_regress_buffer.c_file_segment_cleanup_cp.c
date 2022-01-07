
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evbuffer_file_segment {int dummy; } ;


 int file_segment_cleanup_cb_called_count ;
 struct evbuffer_file_segment const* file_segment_cleanup_cb_called_with ;
 void* file_segment_cleanup_cb_called_with_arg ;
 int file_segment_cleanup_cb_called_with_flags ;

__attribute__((used)) static void
file_segment_cleanup_cp(struct evbuffer_file_segment const* seg, int flags, void* arg)
{
 ++file_segment_cleanup_cb_called_count;
 file_segment_cleanup_cb_called_with = seg;
 file_segment_cleanup_cb_called_with_flags = flags;
 file_segment_cleanup_cb_called_with_arg = arg;
}
