
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct storage_data_stream {int fd; } ;


 int close (int) ;

__attribute__((used)) static void storage_data_stream_close (struct storage_data_stream *self) {
  if (self->fd >= 0) {
    close (self->fd);
    self->fd = -1;
  }
}
