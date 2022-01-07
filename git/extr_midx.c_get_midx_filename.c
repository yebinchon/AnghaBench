
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* xstrfmt (char*,char const*) ;

__attribute__((used)) static char *get_midx_filename(const char *object_dir)
{
 return xstrfmt("%s/pack/multi-pack-index", object_dir);
}
