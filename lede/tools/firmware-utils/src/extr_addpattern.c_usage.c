
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 int exit (int ) ;
 int fprintf (int ,char*) ;
 int stderr ;

void usage(void)
{
 fprintf(stderr, "Usage: addpattern [-i trxfile] [-o binfile] [-B board_id] [-p pattern] [-s serial] [-g] [-b] [-v v#.#.#] [-r #.#] [-{0|1|2|4|5}] -h\n");
 exit(EXIT_FAILURE);
}
