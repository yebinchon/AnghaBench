
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct repository {int dummy; } ;
struct diff_filespec {char* data; int size; int oid; } ;


 int ALLOC_ARRAY (unsigned long*,int) ;
 int ALLOC_GROW (unsigned long*,long,int) ;
 int REALLOC_ARRAY (unsigned long*,long) ;
 int die (char*,int ) ;
 scalar_t__ diff_populate_filespec (struct repository*,struct diff_filespec*,int ) ;
 int oid_to_hex (int *) ;

__attribute__((used)) static void fill_line_ends(struct repository *r,
      struct diff_filespec *spec,
      long *lines,
      unsigned long **line_ends)
{
 int num = 0, size = 50;
 long cur = 0;
 unsigned long *ends = ((void*)0);
 char *data = ((void*)0);

 if (diff_populate_filespec(r, spec, 0))
  die("Cannot read blob %s", oid_to_hex(&spec->oid));

 ALLOC_ARRAY(ends, size);
 ends[cur++] = 0;
 data = spec->data;
 while (num < spec->size) {
  if (data[num] == '\n' || num == spec->size - 1) {
   ALLOC_GROW(ends, (cur + 1), size);
   ends[cur++] = num;
  }
  num++;
 }


 REALLOC_ARRAY(ends, cur);
 *lines = cur-1;
 *line_ends = ends;
}
