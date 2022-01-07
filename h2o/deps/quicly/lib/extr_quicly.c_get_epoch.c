
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int QUICLY_EPOCH_0RTT ;
 int QUICLY_EPOCH_1RTT ;
 int QUICLY_EPOCH_HANDSHAKE ;
 int QUICLY_EPOCH_INITIAL ;
 int QUICLY_PACKET_IS_LONG_HEADER (int) ;

 int QUICLY_PACKET_TYPE_BITMASK ;


 int assert (int) ;

__attribute__((used)) static inline uint8_t get_epoch(uint8_t first_byte)
{
    if (!QUICLY_PACKET_IS_LONG_HEADER(first_byte))
        return QUICLY_EPOCH_1RTT;

    switch (first_byte & QUICLY_PACKET_TYPE_BITMASK) {
    case 128:
        return QUICLY_EPOCH_INITIAL;
    case 129:
        return QUICLY_EPOCH_HANDSHAKE;
    case 130:
        return QUICLY_EPOCH_0RTT;
    default:
        assert(!"FIXME");
    }
}
