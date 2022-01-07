
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct line_buffer {scalar_t__ infile; } ;


 int fclose (scalar_t__) ;
 int ferror (scalar_t__) ;
 scalar_t__ stdin ;

int buffer_deinit(struct line_buffer *buf)
{
 int err;
 if (buf->infile == stdin)
  return ferror(buf->infile);
 err = ferror(buf->infile);
 err |= fclose(buf->infile);
 return err;
}
