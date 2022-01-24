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
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_4__ {size_t insert_len_; } ;
typedef  TYPE_1__ Command ;

/* Variables and functions */
 size_t FUNC0 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t) ; 

__attribute__((used)) static void FUNC2(const Command* cmds,
                                    const size_t num_commands,
                                    const uint8_t* data,
                                    const size_t offset,
                                    const size_t mask,
                                    uint8_t* literals) {
  size_t pos = 0;
  size_t from_pos = offset & mask;
  size_t i;
  for (i = 0; i < num_commands; ++i) {
    size_t insert_len = cmds[i].insert_len_;
    if (from_pos + insert_len > mask) {
      size_t head_size = mask + 1 - from_pos;
      FUNC1(literals + pos, data + from_pos, head_size);
      from_pos = 0;
      pos += head_size;
      insert_len -= head_size;
    }
    if (insert_len > 0) {
      FUNC1(literals + pos, data + from_pos, insert_len);
      pos += insert_len;
    }
    from_pos = (from_pos + insert_len + FUNC0(&cmds[i])) & mask;
  }
}