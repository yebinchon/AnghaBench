
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct untracked_cache_dir {int valid; int stat_data; } ;
struct stat_data {int dummy; } ;
struct read_data {scalar_t__ data; scalar_t__ end; struct untracked_cache_dir** ucd; } ;


 int stat_data_from_disk (int *,scalar_t__) ;

__attribute__((used)) static void read_stat(size_t pos, void *cb)
{
 struct read_data *rd = cb;
 struct untracked_cache_dir *ud = rd->ucd[pos];
 if (rd->data + sizeof(struct stat_data) > rd->end) {
  rd->data = rd->end + 1;
  return;
 }
 stat_data_from_disk(&ud->stat_data, rd->data);
 rd->data += sizeof(struct stat_data);
 ud->valid = 1;
}
