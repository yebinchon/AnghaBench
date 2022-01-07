
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdrinfo {int dummy; } ;
typedef int FILE ;


 int HDRSIZE ;
 char* ascii1 ;
 char* ascii2 ;
 scalar_t__ fclose (int *) ;
 struct hdrinfo* find_hdrinfo (char*) ;
 int * fopen (char*,char*) ;
 int free (unsigned char*) ;
 int fwrite (unsigned char*,long,int,int *) ;
 int makehdr (unsigned char*,struct hdrinfo*,unsigned char*,long,int) ;
 int oferror (int *) ;
 unsigned char* read_file (char*,long*) ;
 int show_fwids () ;
 int showhelp () ;
 scalar_t__ strcmp (char*,char*) ;
 scalar_t__ strncmp (char*,char*,int) ;

int main(int argc, char *argv[])
{
 unsigned char hdr[HDRSIZE];
 unsigned char *data;
 FILE *of;
 char *outfile = ((void*)0);
 char *type;
 struct hdrinfo *info;
 long size;
 int last = 0;
 int n;
 for (n = 1; n < argc; n++)
 {
  if (strcmp(argv[n], "-1") == 0)
   ascii1 = argv[n+1];
  if (strcmp(argv[n], "-2") == 0)
   ascii2 = argv[n+1];
  if (strcmp(argv[n], "-o") == 0)
   outfile = argv[n+1];
  if (strcmp(argv[n], "-ids") == 0)
   show_fwids();
 }
 if (ascii1 == ((void*)0) || ascii2 == ((void*)0) || outfile == ((void*)0))
  showhelp();
 of = fopen(outfile, "w");
 if (of == ((void*)0))
  oferror(of);
 for (n = 1; n < argc; n++)
 {
  if (strncmp(argv[n], "-", 1) != 0)
  {
   type = argv[n++];
   if (n >= argc)
    showhelp();
   last = ((n + 1) >= argc);
   info = find_hdrinfo(type);
   if (info == ((void*)0))
    showhelp();
   data = read_file(argv[n], &size);
   if (data == ((void*)0))
    showhelp();
   makehdr(hdr, info, data, size, last);

   if (fwrite(hdr, HDRSIZE, 1, of) != 1)
    oferror(of);
   if (fwrite(data, size, 1, of) != 1)
    oferror(of);
   free(data);
  }
  else
   n++;
 }
 if (fclose(of) != 0)
  oferror(((void*)0));
 return 0;
}
