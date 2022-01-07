
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int EXIT_SUCCESS ;
 int exit (int) ;
 int fprintf (int *,char*,...) ;
 char* progname ;
 int * stderr ;
 int * stdout ;

void usage(int status)
{
 FILE *stream = (status != EXIT_SUCCESS) ? stderr : stdout;

 fprintf(stream, "Usage: %s [OPTIONS...]\n", progname);
 fprintf(stream,
"\n"
"Options:\n"
"  -d              decrypt instead of encrypt\n"
"  -i <file>       read input from the file <file>\n"
"  -o <file>       write output to the file <file>\n"
"  -l              use longstate {en,de}cryption method\n"
"  -k <key>        use <key> for encryption (default: Buffalo)\n"
"  -m <magic>      set magic to <magic>\n"
"  -p <product>    set product name to <product>\n"
"  -v <version>    set version to <version>\n"
"  -h              show this screen\n"
"  -O              Offset of encrypted data in file (decryption)\n"
"  -S              Size of unencrypted data in file (encryption)\n"
 );

 exit(status);
}
