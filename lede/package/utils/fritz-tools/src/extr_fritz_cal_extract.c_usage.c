
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 int exit (int ) ;
 int fprintf (int ,char*) ;
 int stderr ;

__attribute__((used)) static void usage(void)
{
 fprintf(stderr, "Usage: fritz_cal_extract [-s seek offset] [-i skip] [-o output file] [-l limit] [infile] -e entry_id\n"
   "Finds and extracts zlib compressed calibration data in the EVA loader\n");
 exit(EXIT_FAILURE);
}
