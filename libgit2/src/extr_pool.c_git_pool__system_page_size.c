
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_pool_page ;


 scalar_t__ git__page_size (size_t*) ;

size_t git_pool__system_page_size(void)
{
 static size_t size = 0;

 if (!size) {
  size_t page_size;
  if (git__page_size(&page_size) < 0)
   page_size = 4096;

  size = (page_size - (2 * sizeof(void *)) - sizeof(git_pool_page));
 }

 return size;
}
