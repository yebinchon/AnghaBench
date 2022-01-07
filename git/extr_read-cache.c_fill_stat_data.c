
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {unsigned int sec; int nsec; } ;
struct TYPE_3__ {unsigned int sec; int nsec; } ;
struct stat_data {int sd_size; int sd_gid; int sd_uid; int sd_ino; int sd_dev; TYPE_2__ sd_mtime; TYPE_1__ sd_ctime; } ;
struct stat {int st_size; int st_gid; int st_uid; int st_ino; int st_dev; scalar_t__ st_mtime; scalar_t__ st_ctime; } ;


 int ST_CTIME_NSEC (struct stat) ;
 int ST_MTIME_NSEC (struct stat) ;

void fill_stat_data(struct stat_data *sd, struct stat *st)
{
 sd->sd_ctime.sec = (unsigned int)st->st_ctime;
 sd->sd_mtime.sec = (unsigned int)st->st_mtime;
 sd->sd_ctime.nsec = ST_CTIME_NSEC(*st);
 sd->sd_mtime.nsec = ST_MTIME_NSEC(*st);
 sd->sd_dev = st->st_dev;
 sd->sd_ino = st->st_ino;
 sd->sd_uid = st->st_uid;
 sd->sd_gid = st->st_gid;
 sd->sd_size = st->st_size;
}
