
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct untracked_cache_dir {int check_only; } ;
struct read_data {struct untracked_cache_dir** ucd; } ;



__attribute__((used)) static void set_check_only(size_t pos, void *cb)
{
 struct read_data *rd = cb;
 struct untracked_cache_dir *ud = rd->ucd[pos];
 ud->check_only = 1;
}
