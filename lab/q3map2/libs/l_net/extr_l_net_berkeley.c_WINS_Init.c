
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_short ;
struct sockaddr_s {int dummy; } ;
struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {int sin_port; TYPE_1__ sin_addr; int sin_family; } ;
struct hostent {scalar_t__* h_addr_list; } ;
typedef int WORD ;


 int AF_INET ;
 scalar_t__ DEFAULTnet_hostport ;
 int INADDR_BROADCAST ;
 int MAKEWORD (int,int) ;
 int MAXHOSTNAMELEN ;
 int SOCKET_ERROR ;
 int WINS_AddrToString (struct sockaddr_s*) ;
 int WINS_GetSocketAddr (int,struct sockaddr_s*) ;
 int WINS_OpenSocket (int ) ;
 int WSAStartup (int ,int *) ;
 int WinError (char*) ;
 int WinPrint (char*) ;
 int broadcastaddr ;
 struct hostent* gethostbyname (char*) ;
 int gethostname (char*,int) ;
 int htons (int ) ;
 int myAddr ;
 int my_tcpip_address ;
 int net_controlsocket ;
 scalar_t__ net_hostport ;
 int strcpy (int ,int ) ;
 char* strrchr (int ,char) ;
 int winsockdata ;

int WINS_Init( void ){
 int i;
 struct hostent *local;
 char buff[MAXHOSTNAMELEN];
 struct sockaddr_s addr;
 char *p;
 net_hostport = DEFAULTnet_hostport;
 gethostname( buff, MAXHOSTNAMELEN );
 local = gethostbyname( buff );


 if ( local == 0 ) {
  WinError( "WINS_Init: Unable to resolve hostname\n" );
  return 0;
 }

 myAddr = *(int *)local->h_addr_list[0];



 {

  for ( p = buff; *p; p++ )
   if ( ( *p < '0' || *p > '9' ) && *p != '.' ) {
    break;
   }


  if ( *p ) {
   for ( i = 0; i < 15; i++ )
    if ( buff[i] == '.' ) {
     break;
    }
   buff[i] = 0;
  }

 }


 if ( ( net_controlsocket = WINS_OpenSocket( 0 ) ) == SOCKET_ERROR ) {
  WinError( "WINS_Init: Unable to open control socket\n" );
 }

 ( (struct sockaddr_in *)&broadcastaddr )->sin_family = AF_INET;
 ( (struct sockaddr_in *)&broadcastaddr )->sin_addr.s_addr = INADDR_BROADCAST;
 ( (struct sockaddr_in *)&broadcastaddr )->sin_port = htons( (u_short)net_hostport );

 WINS_GetSocketAddr( net_controlsocket, &addr );
 strcpy( my_tcpip_address, WINS_AddrToString( &addr ) );
 p = strrchr( my_tcpip_address, ':' );
 if ( p ) {
  *p = 0;
 }
 WinPrint( "Winsock Initialized\n" );

 return net_controlsocket;
}
