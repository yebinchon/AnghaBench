#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct TYPE_9__ {size_t len; int* base; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_3__ ptls_iovec_t ;
struct TYPE_8__ {int* base; size_t len; } ;
struct TYPE_7__ {int /*<<< orphan*/  member_0; } ;
struct TYPE_10__ {TYPE_2__ vec; TYPE_1__ member_0; } ;
typedef  TYPE_4__ ptls_asn1_pkcs8_private_key_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int FUNC1 (char const*,char*,TYPE_3__*,int,size_t*) ; 
 size_t FUNC2 (TYPE_4__*,int*,int /*<<< orphan*/ *) ; 

int FUNC3(char const * filename)
{
	ptls_iovec_t buf = { 0 };
	size_t count = 1;
	size_t fuzz_index = 0;
	uint8_t original_byte = 0;
	uint8_t fuzz_byte = 0xAA;
	size_t byte_index = 0;
	int decode_error;

	int ret = FUNC1(filename, "PRIVATE KEY", &buf, 1, &count);


	if (ret == 0)
	{
		for (fuzz_index = 0; ret == 0 && fuzz_index < buf.len; fuzz_index++)
		{
			ptls_asn1_pkcs8_private_key_t pkey = { {0} };
			original_byte = buf.base[fuzz_index];
			decode_error = 0;
			buf.base[fuzz_index] ^= fuzz_byte;

			pkey.vec.base = buf.base;
			pkey.vec.len = buf.len;

			byte_index = FUNC2(
				&pkey, &decode_error, NULL);

			if (decode_error != 0)
			{
				if (decode_error == 1)
				{
					ret = -1;
				}
			}

			buf.base[fuzz_index] = original_byte;
		}
	}

	if (buf.base != NULL)
	{
		FUNC0(buf.base);
	}

	return ret;
}