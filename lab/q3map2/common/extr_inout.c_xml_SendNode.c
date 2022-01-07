
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int xmlNodePtr ;
typedef TYPE_1__* xmlBufferPtr ;
struct TYPE_8__ {int children; } ;
struct TYPE_7__ {int use; char* content; } ;


 int MAX_NETMESSAGE ;
 int NMSG_Clear (int *) ;
 int NMSG_WriteString (int *,char*) ;
 int Net_Send (scalar_t__,int *) ;
 int SYS_NOXML ;
 int Sys_FPrintf (int ,char*,...) ;
 scalar_t__ brdcst_socket ;
 TYPE_3__* doc ;
 int memcpy (char*,char*,int) ;
 int msg ;
 int xmlAddChild (int ,int ) ;
 TYPE_1__* xmlBufferCreate () ;
 int xmlBufferFree (TYPE_1__*) ;
 int xmlNodeDump (TYPE_1__*,TYPE_3__*,int ,int ,int ) ;

void xml_SendNode( xmlNodePtr node ){
 xmlBufferPtr xml_buf;
 char xmlbuf[MAX_NETMESSAGE];

 int pos = 0;
 int size;

 xmlAddChild( doc->children, node );

 if ( brdcst_socket ) {
  xml_buf = xmlBufferCreate();
  xmlNodeDump( xml_buf, doc, node, 0, 0 );





  while ( pos < xml_buf->use )
  {

   ( xml_buf->use - pos < MAX_NETMESSAGE - 10 ) ? ( size = xml_buf->use - pos ) : ( size = MAX_NETMESSAGE - 10 );

   if ( size == MAX_NETMESSAGE - 10 ) {
    Sys_FPrintf( SYS_NOXML, "Got to split the buffer\n" );
   }
   memcpy( xmlbuf, xml_buf->content + pos, size );
   xmlbuf[size] = '\0';
   NMSG_Clear( &msg );
   NMSG_WriteString( &msg, xmlbuf );
   Net_Send( brdcst_socket, &msg );

   pos += size;
  }
  xmlBufferFree( xml_buf );
 }
}
