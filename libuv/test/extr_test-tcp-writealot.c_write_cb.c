
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_write_t ;


 int ASSERT (int ) ;
 int CHUNKS_PER_WRITE ;
 int CHUNK_SIZE ;
 int bytes_sent_done ;
 int fprintf (int ,char*,char*) ;
 int stderr ;
 char* uv_strerror (int) ;
 int write_cb_called ;

__attribute__((used)) static void write_cb(uv_write_t* req, int status) {
  ASSERT(req != ((void*)0));

  if (status) {
    fprintf(stderr, "uv_write error: %s\n", uv_strerror(status));
    ASSERT(0);
  }

  bytes_sent_done += CHUNKS_PER_WRITE * CHUNK_SIZE;
  write_cb_called++;
}
