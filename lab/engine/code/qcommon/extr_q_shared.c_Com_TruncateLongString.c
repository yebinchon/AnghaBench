
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Q_strcat (char*,int,char const*) ;
 int Q_strncpyz (char*,char const*,int) ;
 int TRUNCATE_LENGTH ;
 int strlen (char const*) ;

void Com_TruncateLongString( char *buffer, const char *s )
{
 int length = strlen( s );

 if( length <= TRUNCATE_LENGTH )
  Q_strncpyz( buffer, s, TRUNCATE_LENGTH );
 else
 {
  Q_strncpyz( buffer, s, ( TRUNCATE_LENGTH / 2 ) - 3 );
  Q_strcat( buffer, TRUNCATE_LENGTH, " ... " );
  Q_strcat( buffer, TRUNCATE_LENGTH, s + length - ( TRUNCATE_LENGTH / 2 ) + 3 );
 }
}
