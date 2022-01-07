
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atoi (int ) ;
 int entity_idx ;
 int getopt (int,char**,char*) ;
 int optarg ;
 int out_path ;

__attribute__((used)) static void oseama_extract_parse_options(int argc, char **argv) {
 int c;

 while ((c = getopt(argc, argv, "e:o:")) != -1) {
  switch (c) {
  case 'e':
   entity_idx = atoi(optarg);
   break;
  case 'o':
   out_path = optarg;
   break;
  }
 }
}
