
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_ERROR_OS ;
 int _SC_PAGE_SIZE ;
 int git_error_set (int ,char*) ;
 long sysconf (int ) ;

int git__page_size(size_t *page_size)
{
 long sc_page_size = sysconf(_SC_PAGE_SIZE);
 if (sc_page_size < 0) {
  git_error_set(GIT_ERROR_OS, "can't determine system page size");
  return -1;
 }
 *page_size = (size_t) sc_page_size;
 return 0;
}
