
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int64_t ;


 scalar_t__ TCP ;
 int fflush (int ) ;
 int fprintf (int ,char*,char*,int,double) ;
 double gbit (int ,scalar_t__) ;
 int loop ;
 int max_read_sockets ;
 int nrecv_total ;
 scalar_t__ start_time ;
 int stderr ;
 scalar_t__ type ;
 scalar_t__ uv_now (int ) ;
 int uv_update_time (int ) ;

__attribute__((used)) static void read_show_stats(void) {
  int64_t diff;

  uv_update_time(loop);
  diff = uv_now(loop) - start_time;

  fprintf(stderr, "%s_pump%d_server: %.1f gbit/s\n",
          type == TCP ? "tcp" : "pipe",
          max_read_sockets,
          gbit(nrecv_total, diff));
  fflush(stderr);
}
