
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int QUICLY_FRAME_TYPE_PATH_CHALLENGE ;
 int QUICLY_FRAME_TYPE_PATH_RESPONSE ;
 int QUICLY_PATH_CHALLENGE_DATA_LEN ;
 int memcpy (int *,int const*,int ) ;

uint8_t *quicly_encode_path_challenge_frame(uint8_t *dst, int is_response, const uint8_t *data)
{
    *dst++ = is_response ? QUICLY_FRAME_TYPE_PATH_RESPONSE : QUICLY_FRAME_TYPE_PATH_CHALLENGE;
    memcpy(dst, data, QUICLY_PATH_CHALLENGE_DATA_LEN);
    dst += QUICLY_PATH_CHALLENGE_DATA_LEN;
    return dst;
}
