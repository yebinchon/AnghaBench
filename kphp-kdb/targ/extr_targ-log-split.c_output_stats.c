
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*,int ,int ,int ,int ,int ,int ,int ) ;
 int log_cur_pos () ;
 int rd_bytes ;
 int rd_rec ;
 int rd_views_rec ;
 int stderr ;
 int wr_bytes ;
 int wr_rec ;
 int wr_views_rec ;

void output_stats (void) {
  fprintf (stderr,
    "read: %lld bytes (reported binlog position %lld), %lld records, out of them %lld ad_view\n"
    "written: %lld bytes, %lld records, out of them %lld ad_view\n",
    rd_bytes, log_cur_pos(), rd_rec, rd_views_rec, wr_bytes, wr_rec, wr_views_rec);
}
