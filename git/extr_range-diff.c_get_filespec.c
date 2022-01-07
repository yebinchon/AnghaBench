
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct diff_filespec {char* data; int is_stdin; int * driver; scalar_t__ should_munmap; int size; } ;


 struct diff_filespec* alloc_filespec (char const*) ;
 int fill_filespec (struct diff_filespec*,int *,int ,int) ;
 int null_oid ;
 int section_headers ;
 int strlen (char const*) ;

__attribute__((used)) static struct diff_filespec *get_filespec(const char *name, const char *p)
{
 struct diff_filespec *spec = alloc_filespec(name);

 fill_filespec(spec, &null_oid, 0, 0100644);
 spec->data = (char *)p;
 spec->size = strlen(p);
 spec->should_munmap = 0;
 spec->is_stdin = 1;
 spec->driver = &section_headers;

 return spec;
}
