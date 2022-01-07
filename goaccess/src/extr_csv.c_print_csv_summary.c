
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef char* intmax_t ;
struct TYPE_3__ {int processed; int valid; int invalid; int excluded_ip; char* resp_size; } ;
typedef TYPE_1__ GLog ;
typedef int FILE ;


 int DATE_TIME ;
 int GENER_ID ;
 int NOT_FOUND ;
 int OVERALL_BANDWIDTH ;
 int OVERALL_DATETIME ;
 int OVERALL_EXCL_HITS ;
 int OVERALL_FAILED ;
 int OVERALL_FILES ;
 int OVERALL_GENTIME ;
 int OVERALL_LOG ;
 int OVERALL_LOGSIZE ;
 int OVERALL_NOTFOUND ;
 int OVERALL_REF ;
 int OVERALL_REQ ;
 int OVERALL_STATIC ;
 int OVERALL_VALID ;
 int OVERALL_VISITORS ;
 int REFERRERS ;
 int REQUESTS ;
 int REQUESTS_STATIC ;
 int VISITORS ;
 scalar_t__ end_proc ;
 int fprintf (int *,char const*,int ,int ,...) ;
 int free (char*) ;
 int generate_time () ;
 scalar_t__ get_log_sizes () ;
 char* get_log_source_str (int ) ;
 int ht_get_size_datamap (int ) ;
 int ht_get_size_uniqmap (int ) ;
 int now_tm ;
 long long start_proc ;
 int strftime (char*,int,char*,int ) ;

__attribute__((used)) static void
print_csv_summary (FILE * fp, GLog * glog)
{
  char now[DATE_TIME];
  char *source = ((void*)0);
  const char *fmt;
  int i = 0, total = 0;
  long long t = 0LL;

  generate_time ();
  strftime (now, DATE_TIME, "%Y-%m-%d %H:%M:%S %z", now_tm);


  fmt = "\"%d\",,\"%s\",,,,,,,,\"%s\",\"%s\"\r\n";
  fprintf (fp, fmt, i++, GENER_ID, now, OVERALL_DATETIME);


  fmt = "\"%d\",,\"%s\",,,,,,,,\"%d\",\"%s\"\r\n";
  total = glog->processed;
  fprintf (fp, fmt, i++, GENER_ID, total, OVERALL_REQ);


  fmt = "\"%d\",,\"%s\",,,,,,,,\"%d\",\"%s\"\r\n";
  total = glog->valid;
  fprintf (fp, fmt, i++, GENER_ID, total, OVERALL_VALID);


  total = glog->invalid;
  fprintf (fp, fmt, i++, GENER_ID, total, OVERALL_FAILED);


  fmt = "\"%d\",,\"%s\",,,,,,,,\"%lld\",\"%s\"\r\n";
  t = (long long) end_proc - start_proc;
  fprintf (fp, fmt, i++, GENER_ID, t, OVERALL_GENTIME);


  fmt = "\"%d\",,\"%s\",,,,,,,,\"%d\",\"%s\"\r\n";
  total = ht_get_size_uniqmap (VISITORS);
  fprintf (fp, fmt, i++, GENER_ID, total, OVERALL_VISITORS);


  total = ht_get_size_datamap (REQUESTS);
  fprintf (fp, fmt, i++, GENER_ID, total, OVERALL_FILES);


  total = glog->excluded_ip;
  fprintf (fp, fmt, i++, GENER_ID, total, OVERALL_EXCL_HITS);


  total = ht_get_size_datamap (REFERRERS);
  fprintf (fp, fmt, i++, GENER_ID, total, OVERALL_REF);


  total = ht_get_size_datamap (NOT_FOUND);
  fprintf (fp, fmt, i++, GENER_ID, total, OVERALL_NOTFOUND);


  total = ht_get_size_datamap (REQUESTS_STATIC);
  fprintf (fp, fmt, i++, GENER_ID, total, OVERALL_STATIC);


  fmt = "\"%d\",,\"%s\",,,,,,,,\"%jd\",\"%s\"\r\n";
  fprintf (fp, fmt, i++, GENER_ID, (intmax_t) get_log_sizes (),
           OVERALL_LOGSIZE);


  fmt = "\"%d\",,\"%s\",,,,,,,,\"%llu\",\"%s\"\r\n";
  fprintf (fp, fmt, i++, GENER_ID, glog->resp_size, OVERALL_BANDWIDTH);


  source = get_log_source_str (0);
  fmt = "\"%d\",,\"%s\",,,,,,,,\"%s\",\"%s\"\r\n";
  fprintf (fp, fmt, i++, GENER_ID, source, OVERALL_LOG);
  free (source);
}
