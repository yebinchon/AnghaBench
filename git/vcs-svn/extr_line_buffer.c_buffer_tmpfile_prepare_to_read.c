
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct line_buffer {int infile; } ;


 int SEEK_SET ;
 long error_errno (char*) ;
 scalar_t__ fseek (int ,int ,int ) ;
 long ftell (int ) ;

long buffer_tmpfile_prepare_to_read(struct line_buffer *buf)
{
 long pos = ftell(buf->infile);
 if (pos < 0)
  return error_errno("ftell error");
 if (fseek(buf->infile, 0, SEEK_SET))
  return error_errno("seek error");
 return pos;
}
