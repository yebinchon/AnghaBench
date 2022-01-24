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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
struct rite_binary_footer {int /*<<< orphan*/  section_size; int /*<<< orphan*/ * section_ident; } ;
typedef  int /*<<< orphan*/  mrb_state ;

/* Variables and functions */
 struct rite_binary_footer* RITE_BINARY_EOF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct rite_binary_footer*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static uint32_t
FUNC2(mrb_state *mrb, uint8_t *bin)
{
  struct rite_binary_footer footer;

  FUNC0(footer.section_ident, RITE_BINARY_EOF, sizeof(footer.section_ident));
  FUNC1(sizeof(struct rite_binary_footer), footer.section_size);
  FUNC0(bin, &footer, sizeof(struct rite_binary_footer));

  return sizeof(struct rite_binary_footer);
}