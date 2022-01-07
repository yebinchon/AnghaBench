
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned char rawsz; } ;


 scalar_t__ FANOUT_PATH_MAX ;
 int assert (int) ;
 char* hash_to_hex (unsigned char const*) ;
 TYPE_1__* the_hash_algo ;
 int xsnprintf (char*,scalar_t__,char*,char const*) ;

__attribute__((used)) static void construct_path_with_fanout(const unsigned char *hash,
  unsigned char fanout, char *path)
{
 unsigned int i = 0, j = 0;
 const char *hex_hash = hash_to_hex(hash);
 assert(fanout < the_hash_algo->rawsz);
 while (fanout) {
  path[i++] = hex_hash[j++];
  path[i++] = hex_hash[j++];
  path[i++] = '/';
  fanout--;
 }
 xsnprintf(path + i, FANOUT_PATH_MAX - i, "%s", hex_hash + j);
}
