
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ignore_case ;
 unsigned int strhash (char const*) ;
 unsigned int strihash (char const*) ;

__attribute__((used)) static unsigned int path_hash(const char *path)
{
 return ignore_case ? strihash(path) : strhash(path);
}
