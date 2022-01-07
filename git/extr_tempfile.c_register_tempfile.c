
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tempfile {int filename; } ;


 int activate_tempfile (struct tempfile*) ;
 struct tempfile* new_tempfile () ;
 int strbuf_add_absolute_path (int *,char const*) ;

struct tempfile *register_tempfile(const char *path)
{
 struct tempfile *tempfile = new_tempfile();
 strbuf_add_absolute_path(&tempfile->filename, path);
 activate_tempfile(tempfile);
 return tempfile;
}
