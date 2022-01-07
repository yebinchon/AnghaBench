
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct diff_filepair {int two; int one; } ;


 int free (struct diff_filepair*) ;
 int free_filespec (int ) ;

void diff_free_filepair(struct diff_filepair *p)
{
 free_filespec(p->one);
 free_filespec(p->two);
 free(p);
}
