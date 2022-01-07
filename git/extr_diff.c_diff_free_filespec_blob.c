
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct diff_filespec {int * data; scalar_t__ should_munmap; scalar_t__ should_free; int size; } ;


 int free (int *) ;
 int munmap (int *,int ) ;

void diff_free_filespec_blob(struct diff_filespec *s)
{
 if (s->should_free)
  free(s->data);
 else if (s->should_munmap)
  munmap(s->data, s->size);

 if (s->should_free || s->should_munmap) {
  s->should_free = s->should_munmap = 0;
  s->data = ((void*)0);
 }
}
