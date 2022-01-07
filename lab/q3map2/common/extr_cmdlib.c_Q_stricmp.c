
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Q_strncasecmp (char const*,char const*,int) ;

int Q_stricmp( const char *s1, const char *s2 ){
 return Q_strncasecmp( s1, s2, 99999 );
}
