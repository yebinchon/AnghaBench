
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*,int ,long,int ,int ,int ) ;
 int rd_bytes ;
 int rd_rec ;
 scalar_t__ rend ;
 scalar_t__ rptr ;
 int stderr ;
 int wr_bytes ;
 int wr_rec ;

void output_stats (void) {
  fprintf (stderr,
    "read: %lld bytes (%ld remaining), %lld records\n"
    "written: %lld bytes, %lld records\n",
    rd_bytes, (long)(rend - rptr), rd_rec, wr_bytes, wr_rec);
}
