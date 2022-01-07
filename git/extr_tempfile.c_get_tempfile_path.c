
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char const* buf; } ;
struct tempfile {TYPE_1__ filename; } ;


 int BUG (char*) ;
 int is_tempfile_active (struct tempfile*) ;

const char *get_tempfile_path(struct tempfile *tempfile)
{
 if (!is_tempfile_active(tempfile))
  BUG("get_tempfile_path() called for inactive object");
 return tempfile->filename.buf;
}
