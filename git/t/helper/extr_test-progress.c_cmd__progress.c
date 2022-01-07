
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct strbuf {int buf; } ;
struct progress {int dummy; } ;
struct option {int dummy; } ;


 scalar_t__ EOF ;
 struct option OPT_END () ;
 struct option OPT_INTEGER (int ,char*,int*,char*) ;
 struct strbuf STRBUF_INIT ;
 int die (char*,...) ;
 int display_progress (struct progress*,int) ;
 int display_throughput (struct progress*,int) ;
 int parse_options (int,char const**,int *,struct option*,char const**,int ) ;
 int progress_test_force_update () ;
 int progress_test_ns ;
 int progress_testing ;
 scalar_t__ skip_prefix (int ,char*,char const**) ;
 struct progress* start_progress (char const*,int) ;
 int stdin ;
 int stop_progress (struct progress**) ;
 scalar_t__ strbuf_getline (struct strbuf*,int ) ;
 int strcmp (int ,char*) ;
 int strtoull (char*,char**,int) ;

int cmd__progress(int argc, const char **argv)
{
 int total = 0;
 const char *title;
 struct strbuf line = STRBUF_INIT;
 struct progress *progress;

 const char *usage[] = {
  "test-tool progress [--total=<n>] <progress-title>",
  ((void*)0)
 };
 struct option options[] = {
  OPT_INTEGER(0, "total", &total, "total number of items"),
  OPT_END(),
 };

 argc = parse_options(argc, argv, ((void*)0), options, usage, 0);
 if (argc != 1)
  die("need a title for the progress output");
 title = argv[0];

 progress_testing = 1;
 progress = start_progress(title, total);
 while (strbuf_getline(&line, stdin) != EOF) {
  char *end;

  if (skip_prefix(line.buf, "progress ", (const char **) &end)) {
   uint64_t item_count = strtoull(end, &end, 10);
   if (*end != '\0')
    die("invalid input: '%s'\n", line.buf);
   display_progress(progress, item_count);
  } else if (skip_prefix(line.buf, "throughput ",
           (const char **) &end)) {
   uint64_t byte_count, test_ms;

   byte_count = strtoull(end, &end, 10);
   if (*end != ' ')
    die("invalid input: '%s'\n", line.buf);
   test_ms = strtoull(end + 1, &end, 10);
   if (*end != '\0')
    die("invalid input: '%s'\n", line.buf);
   progress_test_ns = test_ms * 1000 * 1000;
   display_throughput(progress, byte_count);
  } else if (!strcmp(line.buf, "update"))
   progress_test_force_update();
  else
   die("invalid input: '%s'\n", line.buf);
 }
 stop_progress(&progress);

 return 0;
}
