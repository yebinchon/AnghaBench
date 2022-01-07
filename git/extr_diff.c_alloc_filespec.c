
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct diff_filespec {int count; int is_binary; } ;


 int FLEXPTR_ALLOC_STR (struct diff_filespec*,char const*,char const*) ;

struct diff_filespec *alloc_filespec(const char *path)
{
 struct diff_filespec *spec;

 FLEXPTR_ALLOC_STR(spec, path, path);
 spec->count = 1;
 spec->is_binary = -1;
 return spec;
}
