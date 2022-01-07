
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned char rawsz; unsigned int hexsz; } ;


 int die (char*,unsigned char) ;
 int memcpy (char*,char const*,unsigned int) ;
 TYPE_1__* the_hash_algo ;

__attribute__((used)) static void construct_path_with_fanout(const char *hex_sha1,
  unsigned char fanout, char *path)
{
 unsigned int i = 0, j = 0;
 if (fanout >= the_hash_algo->rawsz)
  die("Too large fanout (%u)", fanout);
 while (fanout) {
  path[i++] = hex_sha1[j++];
  path[i++] = hex_sha1[j++];
  path[i++] = '/';
  fanout--;
 }
 memcpy(path + i, hex_sha1 + j, the_hash_algo->hexsz - j);
 path[i + the_hash_algo->hexsz - j] = '\0';
}
