
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct repository {int dummy; } ;
struct diff_filespec {unsigned long size; } ;


 int CHECK_SIZE_ONLY ;
 int DIFF_FILE_VALID (struct diff_filespec*) ;
 int diff_populate_filespec (struct repository*,struct diff_filespec*,int ) ;

__attribute__((used)) static unsigned long diff_filespec_size(struct repository *r,
     struct diff_filespec *one)
{
 if (!DIFF_FILE_VALID(one))
  return 0;
 diff_populate_filespec(r, one, CHECK_SIZE_ONLY);
 return one->size;
}
