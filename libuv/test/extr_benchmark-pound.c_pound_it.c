
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int (* setup_fn ) (int,void*) ;
typedef int make_connect_fn ;
typedef int (* connect_fn ) (int,int ,void*) ;


 int ASSERT (int) ;
 int MAKE_VALGRIND_HAPPY () ;
 double NANOSEC ;
 int UV_RUN_DEFAULT ;
 double closed_streams ;
 int conns_failed ;
 int fflush (int ) ;
 int fprintf (int ,char*,char const*,int,double,int) ;
 int loop ;
 int start ;
 int stderr ;
 int uv_default_loop () ;
 scalar_t__ uv_hrtime () ;
 int uv_now (int ) ;
 int uv_run (int ,int ) ;
 int uv_update_time (int ) ;

__attribute__((used)) static int pound_it(int concurrency,
                    const char* type,
                    setup_fn do_setup,
                    connect_fn do_connect,
                    make_connect_fn make_connect,
                    void* arg) {
  double secs;
  int r;
  uint64_t start_time;
  uint64_t end_time;

  loop = uv_default_loop();

  uv_update_time(loop);
  start = uv_now(loop);


  start_time = uv_hrtime();

  do_setup(concurrency, arg);

  r = do_connect(concurrency, make_connect, arg);
  ASSERT(!r);

  uv_run(loop, UV_RUN_DEFAULT);

  end_time = uv_hrtime();


  secs = (double)(end_time - start_time) / NANOSEC;

  fprintf(stderr, "%s-conn-pound-%d: %.0f accepts/s (%d failed)\n",
          type,
          concurrency,
          closed_streams / secs,
          conns_failed);
  fflush(stderr);

  MAKE_VALGRIND_HAPPY();
  return 0;
}
