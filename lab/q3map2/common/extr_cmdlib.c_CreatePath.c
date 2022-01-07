
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Q_mkdir (char*) ;
 int _chdrive (int) ;
 int _getdrive () ;
 int memcpy (char*,char const*,int) ;
 char toupper (char const) ;

void CreatePath( const char *path ){
 const char *ofs;
 char c;
 char dir[1024];
 if ( path[1] == ':' ) {
  path += 2;
 }

 for ( ofs = path + 1 ; *ofs ; ofs++ )
 {
  c = *ofs;
  if ( c == '/' || c == '\\' ) {
   memcpy( dir, path, ofs - path );
   dir[ ofs - path ] = 0;
   Q_mkdir( dir );
  }
 }






}
