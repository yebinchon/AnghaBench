
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; scalar_t__ len; int ptr; } ;
struct parse {long long len; TYPE_1__ lex; int text; scalar_t__ line_pos; scalar_t__ line; scalar_t__ pos; } ;


 int O_RDONLY ;
 int SEEK_END ;
 int SEEK_SET ;
 int assert (int) ;
 int fprintf (int ,char*,...) ;
 int lex_none ;
 long long lseek (int,int ,int ) ;
 int open (char const*,int ) ;
 long long read (int,int ,long long) ;
 int stderr ;
 int zmalloc (long long) ;

struct parse *tl_init_parse_file (const char *fname) {
  int fd = open (fname, O_RDONLY);
  if (fd < 0) {
    fprintf (stderr, "Error %m\n");
    assert (0);
    return 0;
  }
  long long size = lseek (fd, 0, SEEK_END);
  if (size <= 0) {
    fprintf (stderr, "size is %lld. Too small.\n", size);
    return 0;
  }
  static struct parse save;
  save.text = zmalloc (size);
  lseek (fd, 0, SEEK_SET);
  save.len = read (fd, save.text, size);
  assert (save.len == size);
  save.pos = 0;
  save.line = 0;
  save.line_pos = 0;
  save.lex.ptr = save.text;
  save.lex.len = 0;
  save.lex.type = lex_none;
  return &save;
}
