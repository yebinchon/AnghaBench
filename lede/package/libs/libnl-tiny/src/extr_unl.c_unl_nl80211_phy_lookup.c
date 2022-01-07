
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int O_RDONLY ;
 int atoi (char*) ;
 int close (int) ;
 int open (char*,int ) ;
 int read (int,char*,int) ;
 int snprintf (char*,int,char*,char const*) ;

int unl_nl80211_phy_lookup(const char *name)
{
 char buf[32];
 int fd, pos;

 snprintf(buf, sizeof(buf), "/sys/class/ieee80211/%s/index", name);

 fd = open(buf, O_RDONLY);
 if (fd < 0)
  return -1;
 pos = read(fd, buf, sizeof(buf) - 1);
 if (pos < 0) {
  close(fd);
  return -1;
 }
 buf[pos] = '\0';
 close(fd);
 return atoi(buf);
}
