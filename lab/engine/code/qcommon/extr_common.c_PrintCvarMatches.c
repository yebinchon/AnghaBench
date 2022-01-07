
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Com_Printf (char*,char const*,char*) ;
 int Com_TruncateLongString (char*,int ) ;
 int Cvar_VariableString (char const*) ;
 int Q_stricmpn (char const*,int ,int ) ;
 int TRUNCATE_LENGTH ;
 int shortestMatch ;
 int strlen (int ) ;

__attribute__((used)) static void PrintCvarMatches( const char *s ) {
 char value[ TRUNCATE_LENGTH ];

 if ( !Q_stricmpn( s, shortestMatch, strlen( shortestMatch ) ) ) {
  Com_TruncateLongString( value, Cvar_VariableString( s ) );
  Com_Printf( "    %s = \"%s\"\n", s, value );
 }
}
