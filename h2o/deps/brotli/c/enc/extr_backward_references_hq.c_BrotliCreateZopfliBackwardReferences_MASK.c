#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_5__ {int /*<<< orphan*/  lgwin; } ;
typedef  int /*<<< orphan*/  MemoryManager ;
typedef  int /*<<< orphan*/  HasherHandle ;
typedef  int /*<<< orphan*/  Command ;
typedef  TYPE_1__ BrotliEncoderParams ;
typedef  int /*<<< orphan*/  BrotliDictionary ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 size_t FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,size_t) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t,size_t,int /*<<< orphan*/  const*,size_t,TYPE_1__ const*,size_t const,int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (size_t,size_t,size_t const,int,int*,size_t*,TYPE_1__ const*,int /*<<< orphan*/ *,size_t*) ; 
 int ZopfliNode ; 
 int nodes ; 

void FUNC7(
    MemoryManager* m, const BrotliDictionary* dictionary, size_t num_bytes,
    size_t position, const uint8_t* ringbuffer, size_t ringbuffer_mask,
    const BrotliEncoderParams* params, HasherHandle hasher, int* dist_cache,
    size_t* last_insert_len, Command* commands, size_t* num_commands,
    size_t* num_literals) {
  const size_t max_backward_limit = FUNC3(params->lgwin);
  ZopfliNode* nodes;
  nodes = FUNC0(m, ZopfliNode, num_bytes + 1);
  if (FUNC2(m)) return;
  FUNC4(nodes, num_bytes + 1);
  *num_commands += FUNC5(m, dictionary, num_bytes,
      position, ringbuffer, ringbuffer_mask, params, max_backward_limit,
      dist_cache, hasher, nodes);
  if (FUNC2(m)) return;
  FUNC6(num_bytes, position, max_backward_limit, nodes,
      dist_cache, last_insert_len, params, commands, num_literals);
  FUNC1(m, nodes);
}