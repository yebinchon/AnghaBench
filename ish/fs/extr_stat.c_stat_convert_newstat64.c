
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct statbuf {int ctime_nsec; int ctime; int mtime_nsec; int mtime; int atime_nsec; int atime; int blocks; int blksize; int size; int rdev; int gid; int uid; int nlink; int mode; int inode; int dev; } ;
struct newstat64 {int ctime_nsec; int ctime; int mtime_nsec; int mtime; int atime_nsec; int atime; int blocks; int blksize; int size; int rdev; int gid; int uid; int nlink; int mode; int ino; int fucked_ino; int dev; } ;



struct newstat64 stat_convert_newstat64(struct statbuf stat) {
    struct newstat64 newstat;
    newstat.dev = stat.dev;
    newstat.fucked_ino = stat.inode;
    newstat.ino = stat.inode;
    newstat.mode = stat.mode;
    newstat.nlink = stat.nlink;
    newstat.uid = stat.uid;
    newstat.gid = stat.gid;
    newstat.rdev = stat.rdev;
    newstat.size = stat.size;
    newstat.blksize = stat.blksize;
    newstat.blocks = stat.blocks;
    newstat.atime = stat.atime;
    newstat.atime_nsec = stat.atime_nsec;
    newstat.mtime = stat.mtime;
    newstat.mtime_nsec = stat.mtime_nsec;
    newstat.ctime = stat.ctime;
    newstat.ctime_nsec = stat.ctime_nsec;
    return newstat;
}
