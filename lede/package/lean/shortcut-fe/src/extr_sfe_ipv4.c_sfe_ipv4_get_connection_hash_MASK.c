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
typedef  unsigned int u8 ;
typedef  unsigned int u32 ;
typedef  int __be32 ;
typedef  int __be16 ;

/* Variables and functions */
 unsigned int SFE_IPV4_CONNECTION_HASH_MASK ; 
 unsigned int SFE_IPV4_CONNECTION_HASH_SHIFT ; 
 unsigned int FUNC0 (int) ; 
 unsigned int FUNC1 (int) ; 

__attribute__((used)) static inline unsigned int FUNC2(u8 protocol, __be32 src_ip, __be16 src_port,
							__be32 dest_ip, __be16 dest_port)
{
	u32 hash = FUNC0(src_ip ^ dest_ip) ^ protocol ^ FUNC1(src_port ^ dest_port);
	return ((hash >> SFE_IPV4_CONNECTION_HASH_SHIFT) ^ hash) & SFE_IPV4_CONNECTION_HASH_MASK;
}