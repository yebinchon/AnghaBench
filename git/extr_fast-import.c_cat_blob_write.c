
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cat_blob_fd ;
 int die_errno (char*) ;
 scalar_t__ write_in_full (int ,char const*,unsigned long) ;

__attribute__((used)) static void cat_blob_write(const char *buf, unsigned long size)
{
 if (write_in_full(cat_blob_fd, buf, size) < 0)
  die_errno("Write to frontend failed");
}
