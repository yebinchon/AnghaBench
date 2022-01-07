
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int adj_rec ;
 int fprintf (int ,char*,int ,int ,int ,int ) ;
 int line_no ;
 int rd_bytes ;
 int stderr ;
 int wr_bytes ;

void output_stats (void) {
  fprintf (stderr,
    "read: %lld bytes, %d records read, %d processed\n"
    "written: %lld bytes\n",
    rd_bytes, line_no, adj_rec, wr_bytes);
}
