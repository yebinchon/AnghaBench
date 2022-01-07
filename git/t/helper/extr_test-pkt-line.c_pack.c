
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int line ;


 int LARGE_PACKET_MAX ;
 scalar_t__ fgets (char*,int,int ) ;
 int pack_line (char const*) ;
 int stdin ;

__attribute__((used)) static void pack(int argc, const char **argv)
{
 if (argc) {
  int i;
  for (i = 0; i < argc; i++)
   pack_line(argv[i]);
 } else {
  char line[LARGE_PACKET_MAX];
  while (fgets(line, sizeof(line), stdin)) {
   pack_line(line);
  }
 }
}
