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
typedef  int /*<<< orphan*/  secp256k1_scratch ;
typedef  int /*<<< orphan*/  secp256k1_callback ;

/* Variables and functions */
 int /*<<< orphan*/  STRAUSS_SCRATCH_OBJECTS ; 
 size_t FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int) ; 

__attribute__((used)) static size_t FUNC2(const secp256k1_callback* error_callback, secp256k1_scratch *scratch) {
    return FUNC0(error_callback, scratch, STRAUSS_SCRATCH_OBJECTS) / FUNC1(1);
}