
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int repository_format_partial_clone ;
 int xstrdup_or_null (char*) ;

void set_repository_format_partial_clone(char *partial_clone)
{
 repository_format_partial_clone = xstrdup_or_null(partial_clone);
}
