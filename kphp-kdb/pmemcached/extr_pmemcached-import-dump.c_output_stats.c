
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*,double,double,double,...) ;
 scalar_t__ line_no ;
 int rd_bytes ;
 int stderr ;
 scalar_t__ total_base62_number_len ;
 int total_keys ;
 scalar_t__ total_urls_hash_len ;
 scalar_t__ total_urls_len ;
 int wr_bytes ;

void output_stats (void) {
  fprintf (stderr,
      "read: %lld bytes, %d records read\n"
      "written: %lld bytes\n"
      "stored keys: %lld\n",
      rd_bytes, line_no, wr_bytes,
      total_keys
      );
  if (total_urls_len && line_no) {
    fprintf (stderr, "average url length: %.3lf\n"
         "average url hash length: %.3lf\n"
         "average id in base62 length: %.3lf\n",
         ((double) (total_urls_len)) / ((double) (line_no)),
         ((double) (total_urls_hash_len)) / ((double) (line_no)),
         ((double) (total_base62_number_len)) / ((double) (line_no))
         );
  }
}
