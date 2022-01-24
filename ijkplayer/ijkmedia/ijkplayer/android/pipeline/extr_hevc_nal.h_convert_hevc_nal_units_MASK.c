#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint8_t ;
typedef  int uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int*,int const*,int) ; 

int FUNC2(const uint8_t *p_buf,size_t i_buf_size,
                           uint8_t *p_out_buf,size_t i_out_buf_size,
                           size_t *p_sps_pps_size,size_t *p_nal_size)
{
    int i, num_arrays;
    const uint8_t *p_end = p_buf + i_buf_size;
    uint32_t i_sps_pps_size = 0;

    if( i_buf_size <= 3 || ( !p_buf[0] && !p_buf[1] && p_buf[2] <= 1 ) )
        return -1;

    if( p_end - p_buf < 23 )
    {
        FUNC0( "Input Metadata too small" );
        return -1;
    }

    p_buf += 21;

    if( p_nal_size )
        *p_nal_size = (*p_buf & 0x03) + 1;
    p_buf++;

    num_arrays = *p_buf++;

    for( i = 0; i < num_arrays; i++ )
    {
        int type, cnt, j;

        if( p_end - p_buf < 3 )
        {
            FUNC0( "Input Metadata too small" );
            return -1;
        }
        type = *(p_buf++) & 0x3f;
        (void)(type);

        cnt = p_buf[0] << 8 | p_buf[1];
        p_buf += 2;

        for( j = 0; j < cnt; j++ )
        {
            int i_nal_size;

            if( p_end - p_buf < 2 )
            {
                FUNC0( "Input Metadata too small" );
                return -1;
            }

            i_nal_size = p_buf[0] << 8 | p_buf[1];
            p_buf += 2;

            if( i_nal_size < 0 || p_end - p_buf < i_nal_size )
            {
                FUNC0( "NAL unit size does not match Input Metadata size" );
                return -1;
            }

            if( i_sps_pps_size + 4 + i_nal_size > i_out_buf_size )
            {
                FUNC0( "Output buffer too small" );
                return -1;
            }

            p_out_buf[i_sps_pps_size++] = 0;
            p_out_buf[i_sps_pps_size++] = 0;
            p_out_buf[i_sps_pps_size++] = 0;
            p_out_buf[i_sps_pps_size++] = 1;

            FUNC1(p_out_buf + i_sps_pps_size, p_buf, i_nal_size);
            p_buf += i_nal_size;

            i_sps_pps_size += i_nal_size;
        }
    }

    *p_sps_pps_size = i_sps_pps_size;

    return 0;
}