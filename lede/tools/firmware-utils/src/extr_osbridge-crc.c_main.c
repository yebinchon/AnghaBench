
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct stat {int st_size; } ;
typedef int FILE ;


 int ERR (char*) ;
 int ERRS (char*,int *) ;
 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int HOST_TO_LE32 (int ) ;
 int basename (char*) ;
 int crc32buf (char*,int) ;
 scalar_t__ errno ;
 int fclose (int *) ;
 int fflush (int *) ;
 int * fopen (int *,char*) ;
 int fread (char*,int,int,int *) ;
 int free (char*) ;
 int fwrite (char*,int,int,int *) ;
 int getopt (int,char**,char*) ;
 int * ifname ;
 char* malloc (int) ;
 int * ofname ;
 int * optarg ;
 int progname ;
 int stat (int *,struct stat*) ;
 int unlink (int *) ;
 int usage (int) ;

int main(int argc, char *argv[])
{
 int res = EXIT_FAILURE;
 int buflen;
 int err;
 struct stat st;
 char *buf;
 uint32_t *hdr;
 uint32_t crc;

 FILE *outfile, *infile;

 progname = basename(argv[0]);

 while ( 1 ) {
  int c;

  c = getopt(argc, argv, "i:o:h");
  if (c == -1)
   break;

  switch (c) {
  case 'i':
   ifname = optarg;
   break;
  case 'o':
   ofname = optarg;
   break;
  case 'h':
   usage(EXIT_SUCCESS);
   break;
  default:
   usage(EXIT_FAILURE);
   break;
  }
 }

 if (ifname == ((void*)0)) {
  ERR("no input file specified");
  goto err;
 }

 if (ofname == ((void*)0)) {
  ERR("no output file specified");
  goto err;
 }

 err = stat(ifname, &st);
 if (err){
  ERRS("stat failed on %s", ifname);
  goto err;
 }

 buflen = st.st_size;
 buf = malloc(buflen);
 if (!buf) {
  ERR("no memory for buffer\n");
  goto err;
 }

 infile = fopen(ifname, "r");
 if (infile == ((void*)0)) {
  ERRS("could not open \"%s\" for reading", ifname);
  goto err_free;
 }

 errno = 0;
 fread(buf, buflen, 1, infile);
 if (errno != 0) {
  ERRS("unable to read from file %s", ifname);
  goto err_close_in;
 }

 crc = crc32buf(buf, buflen);
 hdr = (uint32_t *)buf;
 *hdr = HOST_TO_LE32(crc);

 outfile = fopen(ofname, "w");
 if (outfile == ((void*)0)) {
  ERRS("could not open \"%s\" for writing", ofname);
  goto err_close_in;
 }

 errno = 0;
 fwrite(buf, buflen, 1, outfile);
 if (errno) {
  ERRS("unable to write to file %s", ofname);
  goto err_close_out;
 }

 res = EXIT_SUCCESS;

 out_flush:
 fflush(outfile);

 err_close_out:
 fclose(outfile);
 if (res != EXIT_SUCCESS) {
  unlink(ofname);
 }

 err_close_in:
 fclose(infile);

 err_free:
 free(buf);

 err:
 return res;
}
