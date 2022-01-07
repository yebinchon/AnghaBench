
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ptls_t ;


 int PTLS_ALERT_DECODE_ERROR ;
 int PTLS_ALERT_TO_PEER_ERROR (int ) ;

__attribute__((used)) static int handle_alert(ptls_t *tls, const uint8_t *src, size_t len)
{
    if (len != 2)
        return PTLS_ALERT_DECODE_ERROR;

    uint8_t desc = src[1];


    return PTLS_ALERT_TO_PEER_ERROR(desc);
}
