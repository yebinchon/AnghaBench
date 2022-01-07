
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct diff_filespec {int count; } ;


 int diff_free_filespec_data (struct diff_filespec*) ;
 int free (struct diff_filespec*) ;

void free_filespec(struct diff_filespec *spec)
{
 if (!--spec->count) {
  diff_free_filespec_data(spec);
  free(spec);
 }
}
