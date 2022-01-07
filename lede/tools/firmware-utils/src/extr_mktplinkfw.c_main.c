
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct fw_header {int dummy; } ;
struct TYPE_6__ {void* file_name; } ;
struct TYPE_5__ {void* file_name; } ;
struct TYPE_4__ {void* file_name; } ;


 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int add_jffs2_eof ;
 int basename (char*) ;
 int build_fw (int) ;
 int check_options () ;
 int combined ;
 void* country ;
 int endian_swap ;
 int extract ;
 void* fw_ver ;
 int getopt (int,char**,char*) ;
 int inspect_fw () ;
 TYPE_3__ inspect_info ;
 int kernel_ep ;
 TYPE_2__ kernel_info ;
 int kernel_la ;
 void* layout_id ;
 void* ofname ;
 int opt_hdr_ver ;
 void* opt_hw_id ;
 void* opt_hw_rev ;
 void* optarg ;
 int progname ;
 int reserved_space ;
 int rootfs_align ;
 TYPE_1__ rootfs_info ;
 int rootfs_ofs ;
 int rootfs_ofs_calc ;
 int sscanf (void*,char*,int *) ;
 int strip_padding ;
 int usage (int) ;
 void* vendor ;
 void* version ;

int main(int argc, char *argv[])
{
 int ret = EXIT_FAILURE;

 progname = basename(argv[0]);

 while ( 1 ) {
  int c;

  c = getopt(argc, argv, "a:H:E:F:L:m:V:N:W:C:ci:k:r:R:o:OxX:ehsjv:");
  if (c == -1)
   break;

  switch (c) {
  case 'a':
   sscanf(optarg, "0x%x", &rootfs_align);
   break;
  case 'H':
   opt_hw_id = optarg;
   break;
  case 'E':
   sscanf(optarg, "0x%x", &kernel_ep);
   break;
  case 'F':
   layout_id = optarg;
   break;
  case 'W':
   opt_hw_rev = optarg;
   break;
  case 'C':
   country = optarg;
   break;
  case 'L':
   sscanf(optarg, "0x%x", &kernel_la);
   break;
  case 'm':
   sscanf(optarg, "%u", &opt_hdr_ver);
   break;
  case 'V':
   version = optarg;
   break;
  case 'v':
   fw_ver = optarg;
   break;
  case 'N':
   vendor = optarg;
   break;
  case 'c':
   combined++;
   break;
  case 'k':
   kernel_info.file_name = optarg;
   break;
  case 'r':
   rootfs_info.file_name = optarg;
   break;
  case 'R':
   sscanf(optarg, "0x%x", &rootfs_ofs);
   break;
  case 'o':
   ofname = optarg;
   break;
  case 'O':
   rootfs_ofs_calc = 1;
   break;
  case 's':
   strip_padding = 1;
   break;
  case 'i':
   inspect_info.file_name = optarg;
   break;
  case 'j':
   add_jffs2_eof = 1;
   break;
  case 'x':
   extract = 1;
   break;
  case 'e':
   endian_swap = 1;
   break;
  case 'h':
   usage(EXIT_SUCCESS);
   break;
  case 'X':
   sscanf(optarg, "0x%x", &reserved_space);
   break;
  default:
   usage(EXIT_FAILURE);
   break;
  }
 }

 ret = check_options();
 if (ret)
  goto out;

 if (!inspect_info.file_name)
  ret = build_fw(sizeof(struct fw_header));
 else
  ret = inspect_fw();

 out:
 return ret;
}
