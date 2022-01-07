
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct stat {int st_size; } ;
typedef int FILE ;


 int DNI_HDR_LEN ;
 int ERR (char*) ;
 int ERRS (char*,int *) ;
 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int basename (char*) ;
 char* board_id ;
 scalar_t__ errno ;
 int fclose (int *) ;
 int fflush (int *) ;
 int * fopen (int *,char*) ;
 int fread (char*,int,int,int *) ;
 int free (char*) ;
 int fwrite (char*,int,int,int *) ;
 int getopt (int,char**,char*) ;
 int * ifname ;
 char* kernel_size ;
 char* malloc (int) ;
 int memset (char*,int ,int) ;
 int * ofname ;
 void* optarg ;
 int progname ;
 char* region ;
 char* rootfs_size ;
 int snprintf (char*,int,char*,char*,char*,char*,char*,char*) ;
 int stat (int *,struct stat*) ;
 int unlink (int *) ;
 int usage (int) ;
 char* version ;

int main(int argc, char *argv[])
{
 int res = EXIT_FAILURE;
 int buflen;
 int err;
 struct stat st;
 char *buf;
 int i;
 uint8_t csum;

 FILE *outfile, *infile;

 progname = basename(argv[0]);

 while ( 1 ) {
  int c;

  c = getopt(argc, argv, "B:i:o:v:r:R:K:h");
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
  case 'v':
   version = optarg;
   break;
  case 'r':
   region = optarg;
   break;
  case 'R':
   rootfs_size = optarg;
   break;
  case 'K':
   kernel_size = optarg;
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

 if (rootfs_size == ((void*)0)) {
  ERR("no rootfs_size specified");
  goto err;
 }

 if (kernel_size == ((void*)0)) {
  ERR("no kernel_size specified");
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

 err = stat(ifname, &st);
 if (err){
  ERRS("stat failed on %s", ifname);
  goto err;
 }

 buflen = st.st_size + DNI_HDR_LEN + 1;
 buf = malloc(buflen);
 if (!buf) {
  ERR("no memory for buffer\n");
  goto err;
 }

 memset(buf, 0, DNI_HDR_LEN);
 snprintf(buf, DNI_HDR_LEN, "device:%s\nversion:%s\nregion:%s\n"
   "RootfsSize:%s\nKernelSize:%s\nInfoHeadSize:128\n",
   board_id, version, region, rootfs_size, kernel_size);
 buf[DNI_HDR_LEN - 2] = 0x12;
 buf[DNI_HDR_LEN - 1] = 0x32;

 infile = fopen(ifname, "r");
 if (infile == ((void*)0)) {
  ERRS("could not open \"%s\" for reading", ifname);
  goto err_free;
 }

 errno = 0;
 fread(buf + DNI_HDR_LEN, st.st_size, 1, infile);
 if (errno != 0) {
  ERRS("unable to read from file %s", ifname);
  goto err_close_in;
 }

 csum = 0;
 for (i = 0; i < (st.st_size + DNI_HDR_LEN); i++)
  csum += buf[i];

 csum = 0xff - csum;
 buf[st.st_size + DNI_HDR_LEN] = csum;

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
