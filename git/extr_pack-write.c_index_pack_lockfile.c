
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int hexsz; } ;


 int GIT_MAX_HEXSZ ;
 int get_object_directory () ;
 int const read_in_full (int,char*,int const) ;
 scalar_t__ skip_prefix (char*,char*,char const**) ;
 TYPE_1__* the_hash_algo ;
 char* xstrfmt (char*,int ,char const*) ;

char *index_pack_lockfile(int ip_out)
{
 char packname[GIT_MAX_HEXSZ + 6];
 const int len = the_hash_algo->hexsz + 6;
 if (read_in_full(ip_out, packname, len) == len && packname[len-1] == '\n') {
  const char *name;
  packname[len-1] = 0;
  if (skip_prefix(packname, "keep\t", &name))
   return xstrfmt("%s/pack/pack-%s.keep",
           get_object_directory(), name);
 }
 return ((void*)0);
}
