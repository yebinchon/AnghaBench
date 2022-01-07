
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pathspec {TYPE_1__* items; } ;
struct index_state {int dummy; } ;
struct dir_struct {int dummy; } ;
struct TYPE_2__ {char* match; } ;


 size_t common_prefix_len (struct pathspec const*) ;
 int read_directory (struct dir_struct*,struct index_state*,char const*,size_t,struct pathspec const*) ;

int fill_directory(struct dir_struct *dir,
     struct index_state *istate,
     const struct pathspec *pathspec)
{
 const char *prefix;
 size_t prefix_len;





 prefix_len = common_prefix_len(pathspec);
 prefix = prefix_len ? pathspec->items[0].match : "";


 read_directory(dir, istate, prefix, prefix_len, pathspec);

 return prefix_len;
}
