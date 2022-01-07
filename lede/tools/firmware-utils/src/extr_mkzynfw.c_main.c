
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int DBG (int,char*,int *) ;
 int ERR (char*,...) ;
 int ERRS (char*,int *) ;
 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int basename (char*) ;
 int * board ;
 int fclose (int *) ;
 int fflush (int *) ;
 int * fopen (int *,char*) ;
 int getopt (int,char**,char*) ;
 int * ofname ;
 int optarg ;
 scalar_t__ opterr ;
 int optind ;
 char* optopt ;
 int parse_opt_block (int,int ) ;
 int parse_opt_board (int,int ) ;
 int parse_opt_ofname (int,int ) ;
 scalar_t__ process_blocks () ;
 int progname ;
 int unlink (int *) ;
 int usage (int) ;
 int verblevel ;
 scalar_t__ write_out_image (int *) ;

int
main(int argc, char *argv[])
{
 int optinvalid = 0;
 int c;
 int res = EXIT_FAILURE;

 FILE *outfile;

 progname=basename(argv[0]);

 opterr = 0;
 while ( 1 ) {
  optinvalid = 0;

  c = getopt(argc, argv, "b:B:ho:r:v");
  if (c == -1)
   break;

  switch (c) {
  case 'b':
  case 'r':
   optinvalid = parse_opt_block(c,optarg);
   break;
  case 'B':
   optinvalid = parse_opt_board(c,optarg);
   break;
  case 'o':
   optinvalid = parse_opt_ofname(c,optarg);
   break;
  case 'v':
   verblevel++;
   break;
  case 'h':
   usage(EXIT_SUCCESS);
   break;
  default:
   optinvalid = 1;
   break;
  }
  if (optinvalid != 0 ) {
   ERR("invalid option: -%c", optopt);
   goto out;
  }
 }

 if (board == ((void*)0)) {
  ERR("no board specified");
  goto out;
 }

 if (ofname == ((void*)0)) {
  ERR("no output file specified");
  goto out;
 }

 if (optind < argc) {
  ERR("invalid option: %s", argv[optind]);
  goto out;
 }

 if (process_blocks() != 0) {
  goto out;
 }

 outfile = fopen(ofname, "w");
 if (outfile == ((void*)0)) {
  ERRS("could not open \"%s\" for writing", ofname);
  goto out;
 }

 if (write_out_image(outfile) != 0)
  goto out_flush;

 DBG(1,"Image file %s completed.", ofname);

 res = EXIT_SUCCESS;

out_flush:
 fflush(outfile);
 fclose(outfile);
 if (res != EXIT_SUCCESS) {
  unlink(ofname);
 }
out:
 return res;
}
