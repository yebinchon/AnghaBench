
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;


 int ARRAY_SIZE (int *) ;
 int * disk_events_strs ;
 int sprintf (char*,char*,...) ;

__attribute__((used)) static ssize_t __disk_events_show(unsigned int events, char *buf)
{
 const char *delim = "";
 ssize_t pos = 0;
 int i;

 for (i = 0; i < ARRAY_SIZE(disk_events_strs); i++)
  if (events & (1 << i)) {
   pos += sprintf(buf + pos, "%s%s",
           delim, disk_events_strs[i]);
   delim = " ";
  }
 if (pos)
  pos += sprintf(buf + pos, "\n");
 return pos;
}
