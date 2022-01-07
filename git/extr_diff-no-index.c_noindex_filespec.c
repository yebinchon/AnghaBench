
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct diff_filespec {int dummy; } ;


 struct diff_filespec* alloc_filespec (char const*) ;
 char const* file_from_standard_input ;
 int fill_filespec (struct diff_filespec*,int *,int ,int) ;
 int null_oid ;
 int populate_from_stdin (struct diff_filespec*) ;

__attribute__((used)) static struct diff_filespec *noindex_filespec(const char *name, int mode)
{
 struct diff_filespec *s;

 if (!name)
  name = "/dev/null";
 s = alloc_filespec(name);
 fill_filespec(s, &null_oid, 0, mode);
 if (name == file_from_standard_input)
  populate_from_stdin(s);
 return s;
}
