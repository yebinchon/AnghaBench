
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atoi (int ) ;
 int entity_idx ;
 int getopt (int,char**,char*) ;
 int optarg ;

__attribute__((used)) static void oseama_info_parse_options(int argc, char **argv) {
 int c;

 while ((c = getopt(argc, argv, "e:")) != -1) {
  switch (c) {
  case 'e':
   entity_idx = atoi(optarg);
   break;
  }
 }
}
