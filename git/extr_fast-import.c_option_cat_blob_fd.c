
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ INT_MAX ;
 int cat_blob_fd ;
 int die (char*,scalar_t__) ;
 unsigned long ulong_arg (char*,char const*) ;

__attribute__((used)) static void option_cat_blob_fd(const char *fd)
{
 unsigned long n = ulong_arg("--cat-blob-fd", fd);
 if (n > (unsigned long) INT_MAX)
  die("--cat-blob-fd cannot exceed %d", INT_MAX);
 cat_blob_fd = (int) n;
}
