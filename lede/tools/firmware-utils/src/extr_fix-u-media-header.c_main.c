
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* file_name; } ;


 int ERR (char*,char*,void*) ;
 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int basename (char*) ;
 int board_id ;
 int check_options () ;
 int factory_defaults ;
 int fix_header () ;
 int getopt (int,char**,char*) ;
 TYPE_1__ if_info ;
 int image_type ;
 void* ofname ;
 void* optarg ;
 int progname ;
 int str2u32 (void*,int *) ;
 int str2u8 (void*,int *) ;
 int usage (int) ;

int main(int argc, char *argv[])
{
 int ret = EXIT_FAILURE;

 progname = basename(argv[0]);

 while (1) {
  int c;

  c = getopt(argc, argv, "B:Fi:o:T:h");
  if (c == -1)
   break;

  switch (c) {
  case 'B':
   if (str2u32(optarg, &board_id)) {
    ERR("%s is invalid '%s'",
        "board ID", optarg);
    goto out;
   }
   break;
  case 'T':
   if (str2u8(optarg, &image_type)) {
    ERR("%s is invalid '%s'",
        "image type", optarg);
    goto out;
   }
   break;
  case 'F':
   factory_defaults = 1;
   break;
  case 'i':
   if_info.file_name = optarg;
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

 ret = check_options();
 if (ret)
  goto out;

 ret = fix_header();

out:
 return ret;
}
