
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p_header95 {int dummy; } ;
struct p_header80 {int dummy; } ;
struct p_header100 {int dummy; } ;
struct drbd_connection {int agreed_pro_version; } ;


 int BUILD_BUG_ON (int) ;
 int IS_ALIGNED (int,int) ;

unsigned int drbd_header_size(struct drbd_connection *connection)
{
 if (connection->agreed_pro_version >= 100) {
  BUILD_BUG_ON(!IS_ALIGNED(sizeof(struct p_header100), 8));
  return sizeof(struct p_header100);
 } else {
  BUILD_BUG_ON(sizeof(struct p_header80) !=
        sizeof(struct p_header95));
  BUILD_BUG_ON(!IS_ALIGNED(sizeof(struct p_header80), 8));
  return sizeof(struct p_header80);
 }
}
