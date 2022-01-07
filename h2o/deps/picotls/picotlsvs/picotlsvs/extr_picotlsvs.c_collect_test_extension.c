
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
struct st_ptls_handshake_properties_t {int dummy; } ;
typedef int ptls_t ;


 scalar_t__ PICOTLS_VS_TEST_EXTENSION ;

int collect_test_extension(ptls_t *tls, struct st_ptls_handshake_properties_t *properties, uint16_t type)
{
 return type == PICOTLS_VS_TEST_EXTENSION;
}
