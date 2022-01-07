
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_dev; } ;
typedef int dev_t ;


 int _ (char*) ;
 int die_errno (int ,int,char const*,char*,char const*) ;
 scalar_t__ stat (char const*,struct stat*) ;

__attribute__((used)) static dev_t get_device_or_die(const char *path, const char *prefix, int prefix_len)
{
 struct stat buf;
 if (stat(path, &buf)) {
  die_errno(_("failed to stat '%*s%s%s'"),
    prefix_len,
    prefix ? prefix : "",
    prefix ? "/" : "", path);
 }
 return buf.st_dev;
}
