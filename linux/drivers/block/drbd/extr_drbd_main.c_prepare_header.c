
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drbd_connection {int agreed_pro_version; } ;
typedef enum drbd_packet { ____Placeholder_drbd_packet } drbd_packet ;


 int DRBD_MAX_SIZE_H80_PACKET ;
 unsigned int prepare_header100 (void*,int,int,int) ;
 unsigned int prepare_header80 (void*,int,int) ;
 unsigned int prepare_header95 (void*,int,int) ;

__attribute__((used)) static unsigned int prepare_header(struct drbd_connection *connection, int vnr,
       void *buffer, enum drbd_packet cmd, int size)
{
 if (connection->agreed_pro_version >= 100)
  return prepare_header100(buffer, cmd, size, vnr);
 else if (connection->agreed_pro_version >= 95 &&
   size > DRBD_MAX_SIZE_H80_PACKET)
  return prepare_header95(buffer, cmd, size);
 else
  return prepare_header80(buffer, cmd, size);
}
