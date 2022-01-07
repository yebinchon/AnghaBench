
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fputs (char const*,int *) ;
 int fwrite (char*,int,int,int *) ;
 char* get_nth_line (long,unsigned long*,void*) ;
 int putc (char,int *) ;

__attribute__((used)) static void print_line(const char *prefix, char first,
         long line, unsigned long *ends, void *data,
         const char *color, const char *reset, FILE *file)
{
 char *begin = get_nth_line(line, ends, data);
 char *end = get_nth_line(line+1, ends, data);
 int had_nl = 0;

 if (end > begin && end[-1] == '\n') {
  end--;
  had_nl = 1;
 }

 fputs(prefix, file);
 fputs(color, file);
 putc(first, file);
 fwrite(begin, 1, end-begin, file);
 fputs(reset, file);
 putc('\n', file);
 if (!had_nl)
  fputs("\\ No newline at end of file\n", file);
}
