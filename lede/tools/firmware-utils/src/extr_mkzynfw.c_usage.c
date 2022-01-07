
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct board_info {char* name; char* desc; } ;
typedef int FILE ;


 int EXIT_SUCCESS ;
 struct board_info* boards ;
 int exit (int) ;
 int fprintf (int *,char*,...) ;
 char* progname ;
 int * stderr ;
 int * stdout ;

void
usage(int status)
{
 FILE *stream = (status != EXIT_SUCCESS) ? stderr : stdout;
 struct board_info *board;

 fprintf(stream, "Usage: %s [OPTIONS...]\n", progname);
 fprintf(stream,
"\n"
"Options:\n"
"  -B <board>      create image for the board specified with <board>.\n"
"                  valid <board> values:\n"
 );
 for (board = boards; board->name != ((void*)0); board++){
  fprintf(stream,
"                    %-12s= %s\n",
   board->name, board->desc);
 };
 fprintf(stream,
"  -b <file>[:<align>]\n"
"                  add boot extension block to the image\n"
"  -r <file>[:<align>]\n"
"                  add raw block to the image\n"
"  -o <file>       write output to the file <file>\n"
"  -h              show this screen\n"
 );

 exit(status);
}
