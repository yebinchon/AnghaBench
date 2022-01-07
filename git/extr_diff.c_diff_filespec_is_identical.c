
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct repository {int dummy; } ;
struct diff_filespec {int size; int data; int mode; } ;


 scalar_t__ S_ISGITLINK (int ) ;
 scalar_t__ diff_populate_filespec (struct repository*,struct diff_filespec*,int ) ;
 int memcmp (int ,int ,int ) ;

__attribute__((used)) static int diff_filespec_is_identical(struct repository *r,
          struct diff_filespec *one,
          struct diff_filespec *two)
{
 if (S_ISGITLINK(one->mode))
  return 0;
 if (diff_populate_filespec(r, one, 0))
  return 0;
 if (diff_populate_filespec(r, two, 0))
  return 0;
 return !memcmp(one->data, two->data, one->size);
}
