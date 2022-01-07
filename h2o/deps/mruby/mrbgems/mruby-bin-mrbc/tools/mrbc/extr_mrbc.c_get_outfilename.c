
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_state ;


 int memcpy (char*,char const*,size_t) ;
 scalar_t__ mrb_malloc (int *,size_t) ;
 size_t strlen (char const*) ;
 char* strrchr (char*,char) ;

__attribute__((used)) static char *
get_outfilename(mrb_state *mrb, char *infile, const char *ext)
{
  size_t infilelen;
  size_t extlen;
  char *outfile;
  char *p;

  infilelen = strlen(infile);
  extlen = strlen(ext);
  outfile = (char*)mrb_malloc(mrb, infilelen + extlen + 1);
  memcpy(outfile, infile, infilelen + 1);
  if (*ext) {
    if ((p = strrchr(outfile, '.')) == ((void*)0))
      p = outfile + infilelen;
    memcpy(p, ext, extlen + 1);
  }

  return outfile;
}
