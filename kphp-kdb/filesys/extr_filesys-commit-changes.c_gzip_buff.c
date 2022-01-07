
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uLongf ;


 scalar_t__ Z_OK ;
 scalar_t__ compress2 (unsigned char*,int*,unsigned char*,int,int ) ;
 int compressBound (int) ;
 int compress_level ;
 unsigned char* ztmalloc (int) ;

__attribute__((used)) static int gzip_buff (unsigned char *a, int n, unsigned char **b, int *m) {
  *b = ((void*)0);
  if (!compress_level) { return -1; }
  uLongf dest = compressBound (n);
  *b = ztmalloc (dest);
  if (compress2 (*b, &dest, a, n, compress_level) != Z_OK) {
    return -2;
  }
  *m = dest;
  return 0;
}
