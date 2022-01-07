
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int die (char*,...) ;
 int pack (int,char const**) ;
 int strcmp (char const*,char*) ;
 int unpack () ;
 int unpack_sideband () ;

int cmd__pkt_line(int argc, const char **argv)
{
 if (argc < 2)
  die("too few arguments");

 if (!strcmp(argv[1], "pack"))
  pack(argc - 2, argv + 2);
 else if (!strcmp(argv[1], "unpack"))
  unpack();
 else if (!strcmp(argv[1], "unpack-sideband"))
  unpack_sideband();
 else
  die("invalid argument '%s'", argv[1]);

 return 0;
}
