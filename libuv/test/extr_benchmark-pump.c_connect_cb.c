
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_stream_t ;
typedef int uv_req_t ;
typedef int uv_connect_t ;


 int ASSERT (int) ;
 int TARGET_CONNECTIONS ;
 scalar_t__ TCP ;
 int do_write (int *) ;
 int fflush (int ) ;
 int fprintf (int ,char*,char*) ;
 int maybe_connect_some () ;
 int * pipe_write_handles ;
 int req_free (int *) ;
 int start_stats_collection () ;
 int stderr ;
 int * tcp_write_handles ;
 scalar_t__ type ;
 char* uv_strerror (int) ;
 int write_sockets ;

__attribute__((used)) static void connect_cb(uv_connect_t* req, int status) {
  int i;

  if (status) {
    fprintf(stderr, "%s", uv_strerror(status));
    fflush(stderr);
  }
  ASSERT(status == 0);

  write_sockets++;
  req_free((uv_req_t*) req);

  maybe_connect_some();

  if (write_sockets == TARGET_CONNECTIONS) {
    start_stats_collection();


    for (i = 0; i < write_sockets; i++) {
      if (type == TCP)
        do_write((uv_stream_t*) &tcp_write_handles[i]);
      else
        do_write((uv_stream_t*) &pipe_write_handles[i]);
    }
  }
}
