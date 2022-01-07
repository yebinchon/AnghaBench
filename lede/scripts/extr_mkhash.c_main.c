
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hash_type {int dummy; } ;


 struct hash_type* get_hash_type (char*) ;
 int getopt (int,char**,char*) ;
 int hash_file (struct hash_type*,char*,int) ;
 scalar_t__ optind ;
 int usage (char const*) ;

int main(int argc, char **argv)
{
 struct hash_type *t;
 const char *progname = argv[0];
 int i, ch;
 bool add_filename = 0;

 while ((ch = getopt(argc, argv, "n")) != -1) {
  switch (ch) {
  case 'n':
   add_filename = 1;
   break;
  default:
   return usage(progname);
  }
 }

 argc -= optind;
 argv += optind;

 if (argc < 1)
  return usage(progname);

 t = get_hash_type(argv[0]);
 if (!t)
  return usage(progname);

 if (argc < 2)
  return hash_file(t, ((void*)0), add_filename);

 for (i = 0; i < argc - 1; i++)
  hash_file(t, argv[1 + i], add_filename);

 return 0;
}
