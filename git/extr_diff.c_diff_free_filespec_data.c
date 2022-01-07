
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct diff_filespec {int cnt_data; } ;


 int FREE_AND_NULL (int ) ;
 int diff_free_filespec_blob (struct diff_filespec*) ;

void diff_free_filespec_data(struct diff_filespec *s)
{
 diff_free_filespec_blob(s);
 FREE_AND_NULL(s->cnt_data);
}
