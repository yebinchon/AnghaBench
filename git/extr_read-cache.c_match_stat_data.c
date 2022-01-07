
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {unsigned int sec; scalar_t__ nsec; } ;
struct TYPE_3__ {unsigned int sec; scalar_t__ nsec; } ;
struct stat_data {unsigned int sd_uid; unsigned int sd_gid; unsigned int sd_ino; unsigned int sd_dev; unsigned int sd_size; TYPE_2__ sd_ctime; TYPE_1__ sd_mtime; } ;
struct stat {scalar_t__ st_size; scalar_t__ st_dev; scalar_t__ st_ino; scalar_t__ st_gid; scalar_t__ st_uid; scalar_t__ st_ctime; scalar_t__ st_mtime; } ;


 int CTIME_CHANGED ;
 int DATA_CHANGED ;
 int INODE_CHANGED ;
 int MTIME_CHANGED ;
 int OWNER_CHANGED ;
 scalar_t__ ST_CTIME_NSEC (struct stat) ;
 scalar_t__ ST_MTIME_NSEC (struct stat) ;
 scalar_t__ check_stat ;
 scalar_t__ trust_ctime ;

int match_stat_data(const struct stat_data *sd, struct stat *st)
{
 int changed = 0;

 if (sd->sd_mtime.sec != (unsigned int)st->st_mtime)
  changed |= MTIME_CHANGED;
 if (trust_ctime && check_stat &&
     sd->sd_ctime.sec != (unsigned int)st->st_ctime)
  changed |= CTIME_CHANGED;
 if (check_stat) {
  if (sd->sd_uid != (unsigned int) st->st_uid ||
   sd->sd_gid != (unsigned int) st->st_gid)
   changed |= OWNER_CHANGED;
  if (sd->sd_ino != (unsigned int) st->st_ino)
   changed |= INODE_CHANGED;
 }
 if (sd->sd_size != (unsigned int) st->st_size)
  changed |= DATA_CHANGED;

 return changed;
}
