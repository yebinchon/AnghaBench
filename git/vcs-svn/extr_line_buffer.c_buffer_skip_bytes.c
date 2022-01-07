
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct line_buffer {int infile; } ;
typedef scalar_t__ off_t ;


 int COPY_BUFFER_LEN ;
 int feof (int ) ;
 int ferror (int ) ;
 scalar_t__ fread (char*,int,size_t,int ) ;

off_t buffer_skip_bytes(struct line_buffer *buf, off_t nbytes)
{
 char byte_buffer[COPY_BUFFER_LEN];
 off_t done = 0;
 while (done < nbytes && !feof(buf->infile) && !ferror(buf->infile)) {
  off_t len = nbytes - done;
  size_t in = len < COPY_BUFFER_LEN ? len : COPY_BUFFER_LEN;
  done += fread(byte_buffer, 1, in, buf->infile);
 }
 return done;
}
