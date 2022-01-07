
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;


 int sha1_pack_index_name (unsigned char const*) ;
 scalar_t__ stat (int ,struct stat*) ;

int has_pack_index(const unsigned char *sha1)
{
 struct stat st;
 if (stat(sha1_pack_index_name(sha1), &st))
  return 0;
 return 1;
}
