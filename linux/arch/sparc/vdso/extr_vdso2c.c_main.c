
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int PROT_READ ;
 int err (int,char*,char*) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int go (void*,size_t,void*,size_t,int *,char*) ;
 int map_input (char*,void**,size_t*,int ) ;
 int munmap (void*,size_t) ;
 char* outfilename ;
 int printf (char*) ;
 char* strchr (char*,char) ;
 int strcmp (char*,char*) ;
 char* strdup (char*) ;
 int strlen (char*) ;
 char* strrchr (char*,char) ;

int main(int argc, char **argv)
{
 size_t raw_len, stripped_len;
 void *raw_addr, *stripped_addr;
 FILE *outfile;
 char *name, *tmp;
 int namelen;

 if (argc != 4) {
  printf("Usage: vdso2c RAW_INPUT STRIPPED_INPUT OUTPUT\n");
  return 1;
 }





 name = strdup(argv[3]);
 namelen = strlen(name);
 if (namelen >= 3 && !strcmp(name + namelen - 3, ".so")) {
  name = ((void*)0);
 } else {
  tmp = strrchr(name, '/');
  if (tmp)
   name = tmp + 1;
  tmp = strchr(name, '.');
  if (tmp)
   *tmp = '\0';
  for (tmp = name; *tmp; tmp++)
   if (*tmp == '-')
    *tmp = '_';
 }

 map_input(argv[1], &raw_addr, &raw_len, PROT_READ);
 map_input(argv[2], &stripped_addr, &stripped_len, PROT_READ);

 outfilename = argv[3];
 outfile = fopen(outfilename, "w");
 if (!outfile)
  err(1, "%s", argv[2]);

 go(raw_addr, raw_len, stripped_addr, stripped_len, outfile, name);

 munmap(raw_addr, raw_len);
 munmap(stripped_addr, stripped_len);
 fclose(outfile);

 return 0;
}
