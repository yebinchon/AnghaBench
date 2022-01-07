
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int ERR (char*,...) ;
 int ERRS (char*,char*) ;
 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int SEEK_END ;
 int basename (char*) ;
 int * board ;
 int * board_id ;
 int fclose (int *) ;
 int * find_board (int *) ;
 int * fopen (char*,char*) ;
 int fseek (int *,int ,int ) ;
 size_t ftell (int *) ;
 int getopt (int,char**,char*) ;
 int meraki_build_hdr (int *,size_t,int *,int *) ;
 void* optarg ;
 int progname ;
 int rewind (int *) ;
 int strip_padding ;
 int usage (int) ;

int main(int argc, char *argv[])
{
 int ret = EXIT_FAILURE;
 char *ofname = ((void*)0), *ifname = ((void*)0);
 FILE *out, *in;
 size_t klen;

 progname = basename(argv[0]);

 while (1) {
  int c;

  c = getopt(argc, argv, "B:i:o:sh");
  if (c == -1)
   break;

  switch (c) {
  case 'B':
   board_id = optarg;
   break;
  case 'i':
   ifname = optarg;
   break;
  case 'o':
   ofname = optarg;
   break;
  case 's':
   strip_padding = 1;
   break;
  case 'h':
   usage(EXIT_SUCCESS);
   break;
  default:
   usage(EXIT_FAILURE);
   break;
  }
 }

 if (board_id == ((void*)0)) {
  ERR("no board specified");
  goto err;
 }

 board = find_board(board_id);
 if (board == ((void*)0)) {
  ERR("unknown board \"%s\"", board_id);
  goto err;
 }

 if (ifname == ((void*)0)) {
  ERR("no input file specified");
  goto err;
 }

 if (ofname == ((void*)0)) {
  ERR("no output file specified");
  goto err;
 }

 in = fopen(ifname, "r");
 if (in == ((void*)0)) {
  ERRS("could not open \"%s\" for reading: %s", ifname);
  goto err;
 }


 fseek(in, 0, SEEK_END);
 klen = ftell(in);
 rewind(in);

 out = fopen(ofname, "w");
 if (out == ((void*)0)) {
  ERRS("could not open \"%s\" for writing: %s", ofname);
  goto err_close_in;
 }

 ret = meraki_build_hdr(board, klen, out, in);
 fclose(out);

err_close_in:
 fclose(in);

err:
 return ret;
}
