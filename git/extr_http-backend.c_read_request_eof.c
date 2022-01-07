
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ssize_t ;


 int REALLOC_ARRAY (unsigned char*,size_t) ;
 size_t alloc_nr (size_t) ;
 int die (char*,size_t) ;
 int free (unsigned char*) ;
 size_t max_request_buffer ;
 scalar_t__ read_in_full (int,unsigned char*,size_t) ;
 unsigned char* xmalloc (size_t) ;

__attribute__((used)) static ssize_t read_request_eof(int fd, unsigned char **out)
{
 size_t len = 0, alloc = 8192;
 unsigned char *buf = xmalloc(alloc);

 if (max_request_buffer < alloc)
  max_request_buffer = alloc;

 while (1) {
  ssize_t cnt;

  cnt = read_in_full(fd, buf + len, alloc - len);
  if (cnt < 0) {
   free(buf);
   return -1;
  }


  len += cnt;
  if (len < alloc) {
   *out = buf;
   return len;
  }


  if (alloc == max_request_buffer)
   die("request was larger than our maximum size (%lu);"
       " try setting GIT_HTTP_MAX_REQUEST_BUFFER",
       max_request_buffer);

  alloc = alloc_nr(alloc);
  if (alloc > max_request_buffer)
   alloc = max_request_buffer;
  REALLOC_ARRAY(buf, alloc);
 }
}
