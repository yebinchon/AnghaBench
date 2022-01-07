
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
struct utimbuf {int modtime; int actime; } ;
struct stat {int st_mode; int st_uid; int st_gid; int st_mtime; int st_atime; } ;
typedef int gid_t ;


 char* PrintablePath (char const*) ;
 int S_IRWXG ;
 int S_IRWXO ;
 int S_IRWXU ;
 int chmod (char const*,int) ;
 int chown (char const*,int ,int ) ;
 int errno ;
 int fprintf (int ,char*,char*,char*) ;
 scalar_t__ stat (char const*,struct stat*) ;
 int stderr ;
 char* strerror (int ) ;
 int utime (char const*,struct utimbuf*) ;

__attribute__((used)) static void CopyStat(const char* input_path, const char* output_path) {
  struct stat statbuf;
  struct utimbuf times;
  int res;
  if (input_path == 0 || output_path == 0) {
    return;
  }
  if (stat(input_path, &statbuf) != 0) {
    return;
  }
  times.actime = statbuf.st_atime;
  times.modtime = statbuf.st_mtime;
  utime(output_path, &times);
  res = chmod(output_path, statbuf.st_mode & (S_IRWXU | S_IRWXG | S_IRWXO));
  if (res != 0) {
    fprintf(stderr, "setting access bits failed for [%s]: %s\n",
            PrintablePath(output_path), strerror(errno));
  }
  res = chown(output_path, (uid_t)-1, statbuf.st_gid);
  if (res != 0) {
    fprintf(stderr, "setting group failed for [%s]: %s\n",
            PrintablePath(output_path), strerror(errno));
  }
  res = chown(output_path, statbuf.st_uid, (gid_t)-1);
  if (res != 0) {
    fprintf(stderr, "setting user failed for [%s]: %s\n",
            PrintablePath(output_path), strerror(errno));
  }
}
