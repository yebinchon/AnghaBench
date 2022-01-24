#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {size_t max_size; void* data; int /*<<< orphan*/  magic; } ;
typedef  TYPE_1__ secp256k1_scratch ;
typedef  int /*<<< orphan*/  secp256k1_callback ;

/* Variables and functions */
 int ALIGNMENT ; 
 void* FUNC0 (int /*<<< orphan*/  const*,size_t const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static secp256k1_scratch* FUNC3(const secp256k1_callback* error_callback, size_t size) {
    const size_t base_alloc = ((sizeof(secp256k1_scratch) + ALIGNMENT - 1) / ALIGNMENT) * ALIGNMENT;
    void *alloc = FUNC0(error_callback, base_alloc + size);
    secp256k1_scratch* ret = (secp256k1_scratch *)alloc;
    if (ret != NULL) {
        FUNC2(ret, 0, sizeof(*ret));
        FUNC1(ret->magic, "scratch", 8);
        ret->data = (void *) ((char *) alloc + base_alloc);
        ret->max_size = size;
    }
    return ret;
}