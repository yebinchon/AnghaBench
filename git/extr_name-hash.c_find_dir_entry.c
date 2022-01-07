
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct index_state {int dummy; } ;
struct dir_entry {int dummy; } ;


 struct dir_entry* find_dir_entry__hash (struct index_state*,char const*,unsigned int,int ) ;
 int memihash (char const*,unsigned int) ;

__attribute__((used)) static struct dir_entry *find_dir_entry(struct index_state *istate,
  const char *name, unsigned int namelen)
{
 return find_dir_entry__hash(istate, name, namelen, memihash(name, namelen));
}
