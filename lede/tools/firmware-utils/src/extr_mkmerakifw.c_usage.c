
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct board_info {char* id; int description; } ;
typedef int FILE ;


 int EXIT_SUCCESS ;
 struct board_info* boards ;
 int exit (int) ;
 int fprintf (int *,char*,...) ;
 char* progname ;
 int * stderr ;
 int * stdout ;

__attribute__((used)) static void usage(int status)
{
 FILE *stream = (status != EXIT_SUCCESS) ? stderr : stdout;
 const struct board_info *board;

 fprintf(stream, "Usage: %s [OPTIONS...]\n", progname);
 fprintf(stream,
"\n"
"Options:\n"
"  -B <board>      create image for the board specified with <board>\n"
"  -i <file>       read kernel image from the file <file>\n"
"  -o <file>       write output to the file <file>\n"
"  -s              strip padding from the end of the image\n"
"  -h              show this screen\n"
 );

 fprintf(stream, "\nBoards:\n");
 for (board = boards; board->id != ((void*)0); board++)
  fprintf(stream, "  %-16s%s\n", board->id, board->description);

 exit(status);
}
