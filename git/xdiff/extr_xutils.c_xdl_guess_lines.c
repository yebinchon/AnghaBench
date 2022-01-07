
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mmfile_t ;


 char* memchr (char const*,char,int) ;
 char* xdl_mmfile_first (int *,long*) ;
 long xdl_mmfile_size (int *) ;

long xdl_guess_lines(mmfile_t *mf, long sample) {
 long nl = 0, size, tsize = 0;
 char const *data, *cur, *top;

 if ((cur = data = xdl_mmfile_first(mf, &size)) != ((void*)0)) {
  for (top = data + size; nl < sample && cur < top; ) {
   nl++;
   if (!(cur = memchr(cur, '\n', top - cur)))
    cur = top;
   else
    cur++;
  }
  tsize += (long) (cur - data);
 }

 if (nl && tsize)
  nl = xdl_mmfile_size(mf) / (tsize / nl);

 return nl + 1;
}
