
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct line_buffer {int dummy; } ;


 struct line_buffer LINE_BUFFER_INIT ;
 scalar_t__ buffer_deinit (struct line_buffer*) ;
 scalar_t__ buffer_fdinit (struct line_buffer*,int ) ;
 scalar_t__ buffer_init (struct line_buffer*,char const*) ;
 char* buffer_read_line (struct line_buffer*) ;
 int die (char*,...) ;
 int die_errno (char*,...) ;
 scalar_t__ ferror (int ) ;
 int handle_line (char*,struct line_buffer*) ;
 int stdout ;
 int strtouint32 (char const*) ;
 int usage (char*) ;

int cmd_main(int argc, const char **argv)
{
 struct line_buffer stdin_buf = LINE_BUFFER_INIT;
 struct line_buffer file_buf = LINE_BUFFER_INIT;
 struct line_buffer *input = &stdin_buf;
 const char *filename;
 char *s;

 if (argc == 1)
  filename = ((void*)0);
 else if (argc == 2)
  filename = argv[1];
 else
  usage("test-line-buffer [file | &fd] < script");

 if (buffer_init(&stdin_buf, ((void*)0)))
  die_errno("open error");
 if (filename) {
  if (*filename == '&') {
   if (buffer_fdinit(&file_buf, strtouint32(filename + 1)))
    die_errno("error opening fd %s", filename + 1);
  } else {
   if (buffer_init(&file_buf, filename))
    die_errno("error opening %s", filename);
  }
  input = &file_buf;
 }

 while ((s = buffer_read_line(&stdin_buf)))
  handle_line(s, input);

 if (filename && buffer_deinit(&file_buf))
  die("error reading from %s", filename);
 if (buffer_deinit(&stdin_buf))
  die("input error");
 if (ferror(stdout))
  die("output error");
 return 0;
}
