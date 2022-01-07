
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {void* nsec; void* sec; } ;
struct TYPE_3__ {void* nsec; void* sec; } ;
struct stat_data {void* sd_size; void* sd_gid; void* sd_uid; void* sd_ino; void* sd_dev; TYPE_2__ sd_mtime; TYPE_1__ sd_ctime; } ;


 void* htonl (void*) ;

__attribute__((used)) static void stat_data_to_disk(struct stat_data *to, const struct stat_data *from)
{
 to->sd_ctime.sec = htonl(from->sd_ctime.sec);
 to->sd_ctime.nsec = htonl(from->sd_ctime.nsec);
 to->sd_mtime.sec = htonl(from->sd_mtime.sec);
 to->sd_mtime.nsec = htonl(from->sd_mtime.nsec);
 to->sd_dev = htonl(from->sd_dev);
 to->sd_ino = htonl(from->sd_ino);
 to->sd_uid = htonl(from->sd_uid);
 to->sd_gid = htonl(from->sd_gid);
 to->sd_size = htonl(from->sd_size);
}
