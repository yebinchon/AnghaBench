
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int basename (char*) ;
 int check_params () ;
 void* crypt_key ;
 int decrypt_file () ;
 int do_decrypt ;
 int encrypt_file () ;
 int getopt (int,char**,char*) ;
 void* ifname ;
 int longstate ;
 void* magic ;
 void* offset ;
 void* ofname ;
 void* optarg ;
 void* product ;
 int progname ;
 void* seed ;
 void* size ;
 void* strtoul (void*,int *,int) ;
 int usage (int) ;
 void* version ;

int main(int argc, char *argv[])
{
 int res = EXIT_FAILURE;
 int err;

 progname = basename(argv[0]);

 while ( 1 ) {
  int c;

  c = getopt(argc, argv, "adi:m:o:hlp:v:k:O:r:s:S:");
  if (c == -1)
   break;

  switch (c) {
  case 'd':
   do_decrypt = 1;
   break;
  case 'i':
   ifname = optarg;
   break;
  case 'l':
   longstate = 1;
   break;
  case 'm':
   magic = optarg;
   break;
  case 'o':
   ofname = optarg;
   break;
  case 'p':
   product = optarg;
   break;
  case 'v':
   version = optarg;
   break;
  case 'k':
   crypt_key = optarg;
   break;
  case 's':
   seed = strtoul(optarg, ((void*)0), 16);
   break;
  case 'O':
   offset = strtoul(optarg, ((void*)0), 0);
   break;
  case 'S':
   size = strtoul(optarg, ((void*)0), 0);
   break;
  case 'h':
   usage(EXIT_SUCCESS);
   break;
  default:
   usage(EXIT_FAILURE);
   break;
  }
 }

 err = check_params();
 if (err)
  goto out;

 if (do_decrypt)
  err = decrypt_file();
 else
  err = encrypt_file();

 if (err)
  goto out;

 res = EXIT_SUCCESS;

out:
 return res;
}
