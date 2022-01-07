
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Q_strncasecmp (char*,char*,int) ;

int Q_stricmp (char *s1, char *s2)
{
 return Q_strncasecmp (s1, s2, 99999);
}
