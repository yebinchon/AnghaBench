
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int * _bgzf_file_t ;
struct TYPE_5__ {int * fp; } ;
typedef int FILE ;
typedef TYPE_1__ BGZF ;


 int * _bgzf_dopen (int,char*) ;
 TYPE_1__* bgzf_read_init () ;
 TYPE_1__* bgzf_write_init (int ) ;
 int * fdopen (int,char*) ;
 int mode2level (char const*) ;
 scalar_t__ strchr (char const*,char) ;

BGZF *bgzf_dopen(int fd, const char *mode)
{
 BGZF *fp = 0;
 if (strchr(mode, 'r') || strchr(mode, 'R')) {
  _bgzf_file_t fpr;
  if ((fpr = _bgzf_dopen(fd, "r")) == 0) return 0;
  fp = bgzf_read_init();
  fp->fp = fpr;
 } else if (strchr(mode, 'w') || strchr(mode, 'W')) {
  FILE *fpw;
  if ((fpw = fdopen(fd, "w")) == 0) return 0;
  fp = bgzf_write_init(mode2level(mode));
  fp->fp = fpw;
 }
 return fp;
}
