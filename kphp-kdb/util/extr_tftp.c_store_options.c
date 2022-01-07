
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ sprintf (char*,char*,long long) ;
 int strcpy (char*,char*) ;

__attribute__((used)) static char *store_options (char *wptr, int block_size, int timeout, long long tsize) {
  if (block_size > 0) {
    strcpy (wptr, "blksize");
    wptr += 8;
    wptr += sprintf (wptr, "%d", block_size) + 1;
  }
  if (timeout > 0) {
    strcpy (wptr, "timeout");
    wptr += 8;
    wptr += sprintf (wptr, "%d", timeout) + 1;
  }
  if (tsize >= 0) {
    strcpy (wptr, "tsize");
    wptr += 6;
    wptr += sprintf (wptr, "%lld", tsize) + 1;
  }
  return wptr;
}
