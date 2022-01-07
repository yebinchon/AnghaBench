
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {float tv_usec; scalar_t__ tv_sec; } ;
struct http_parser {int dummy; } ;


 int HTTP_REQUEST ;
 int assert (int) ;
 int data ;
 size_t data_len ;
 int fflush (int ) ;
 int fprintf (int ,char*,...) ;
 int gettimeofday (struct timeval*,int *) ;
 size_t http_parser_execute (struct http_parser*,int *,int ,size_t) ;
 int http_parser_init (struct http_parser*,int ) ;
 int settings ;
 int stderr ;
 int stdout ;

int bench(int iter_count, int silent) {
  struct http_parser parser;
  int i;
  int err;
  struct timeval start;
  struct timeval end;

  if (!silent) {
    err = gettimeofday(&start, ((void*)0));
    assert(err == 0);
  }

  fprintf(stderr, "req_len=%d\n", (int) data_len);
  for (i = 0; i < iter_count; i++) {
    size_t parsed;
    http_parser_init(&parser, HTTP_REQUEST);

    parsed = http_parser_execute(&parser, &settings, data, data_len);
    assert(parsed == data_len);
  }

  if (!silent) {
    double elapsed;
    double bw;
    double total;

    err = gettimeofday(&end, ((void*)0));
    assert(err == 0);

    fprintf(stdout, "Benchmark result:\n");

    elapsed = (double) (end.tv_sec - start.tv_sec) +
              (end.tv_usec - start.tv_usec) * 1e-6f;

    total = (double) iter_count * data_len;
    bw = (double) total / elapsed;

    fprintf(stdout, "%.2f mb | %.2f mb/s | %.2f req/sec | %.2f s\n",
        (double) total / (1024 * 1024),
        bw / (1024 * 1024),
        (double) iter_count / elapsed,
        elapsed);

    fflush(stdout);
  }

  return 0;
}
