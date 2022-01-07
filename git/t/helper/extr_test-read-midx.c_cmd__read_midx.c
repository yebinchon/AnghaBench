
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int read_midx_file (char const*) ;
 int usage (char*) ;

int cmd__read_midx(int argc, const char **argv)
{
 if (argc != 2)
  usage("read-midx <object-dir>");

 return read_midx_file(argv[1]);
}
