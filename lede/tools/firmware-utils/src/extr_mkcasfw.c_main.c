
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int DBG (int,char*,char*) ;
 int ERR (char*,...) ;
 int ERRS (char*,char*) ;
 int ERR_FATAL ;
 int ERR_INVALID_IMAGE ;
 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int WARN (char*,char*) ;
 int basename (char*) ;
 int * board ;
 int fclose (int *) ;
 int fflush (int *) ;
 int * fopen (char*,char*) ;
 int getopt (int,char**,char*) ;
 scalar_t__ invalid_causes_error ;
 scalar_t__ keep_invalid_images ;
 char* ofname ;
 int optarg ;
 scalar_t__ opterr ;
 int optind ;
 char* optopt ;
 int parse_opt_board (int,int ) ;
 int parse_opt_image (int,int ) ;
 int process_images () ;
 int progname ;
 int unlink (char*) ;
 int usage (int) ;
 int verblevel ;
 scalar_t__ write_out_header (int *) ;
 scalar_t__ write_out_images (int *) ;

int
main(int argc, char *argv[])
{
 int optinvalid = 0;
 int c;
 int res = ERR_FATAL;

 FILE *outfile;

 progname=basename(argv[0]);

 opterr = 0;
 while ( 1 ) {
  optinvalid = 0;

  c = getopt(argc, argv, "B:C:dhK:r:vw:x:");
  if (c == -1)
   break;

  switch (c) {
  case 'B':
   optinvalid = parse_opt_board(c,optarg);
   break;
  case 'd':
   invalid_causes_error = 0;
   break;
  case 'C':
  case 'K':
   optinvalid = parse_opt_image(c,optarg);
   break;
  case 'k':
   keep_invalid_images = 1;
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
  if (optinvalid != 0 ){
   ERR("invalid option: -%c", optopt);
   goto out;
  }
 }

 if (board == ((void*)0)) {
  ERR("no board specified");
  goto out;
 }

 if (optind == argc) {
  ERR("no output file specified");
  goto out;
 }

 ofname = argv[optind++];

 if (optind < argc) {
  ERR("invalid option: %s", argv[optind]);
  goto out;
 }

 res = process_images();
 if (res == ERR_FATAL)
  goto out;

 if (res == ERR_INVALID_IMAGE) {
  if (invalid_causes_error)
   res = ERR_FATAL;

  if (keep_invalid_images == 0) {
   WARN("generation of invalid images \"%s\" disabled", ofname);
   goto out;
  }

  WARN("generating invalid image: \"%s\"", ofname);
 }

 outfile = fopen(ofname, "w");
 if (outfile == ((void*)0)) {
  ERRS("could not open \"%s\" for writing", ofname);
  res = ERR_FATAL;
  goto out;
 }

 if (write_out_header(outfile) != 0) {
  res = ERR_FATAL;
  goto out_flush;
 }

 if (write_out_images(outfile) != 0) {
  res = ERR_FATAL;
  goto out_flush;
 }

 if (write_out_header(outfile) != 0) {
  res = ERR_FATAL;
  goto out_flush;
 }

 DBG(1,"Image file %s completed.", ofname);

out_flush:
 fflush(outfile);
 fclose(outfile);
 if (res == ERR_FATAL) {
  unlink(ofname);
 }
out:
 if (res == ERR_FATAL)
  return EXIT_FAILURE;

 return EXIT_SUCCESS;
}
