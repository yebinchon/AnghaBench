
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_s {int dummy; } ;
struct sockaddr_in {int sin_addr; } ;
struct in_addr {int dummy; } ;
struct hostent {scalar_t__ h_name; } ;


 int AF_INET ;
 scalar_t__ NET_NAMELEN ;
 int WINS_AddrToString (struct sockaddr_s*) ;
 struct hostent* gethostbyaddr (char*,int,int ) ;
 int strcpy (char*,int ) ;
 int strncpy (char*,char*,scalar_t__) ;

int WINS_GetNameFromAddr( struct sockaddr_s *addr, char *name ){
 struct hostent *hostentry;

 hostentry = gethostbyaddr( (char *)&( (struct sockaddr_in *)addr )->sin_addr, sizeof( struct in_addr ), AF_INET );
 if ( hostentry ) {
  strncpy( name, (char *)hostentry->h_name, NET_NAMELEN - 1 );
  return 0;
 }

 strcpy( name, WINS_AddrToString( addr ) );
 return 0;
}
