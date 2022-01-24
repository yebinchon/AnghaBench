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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct rite_section_lv_header {int dummy; } ;
struct rite_section_irep_header {int dummy; } ;
struct rite_section_debug_header {int dummy; } ;
struct rite_binary_header {int dummy; } ;
struct rite_binary_footer {int dummy; } ;
typedef  int mrb_sym ;
typedef  int /*<<< orphan*/  mrb_state ;
typedef  int /*<<< orphan*/  mrb_irep ;
typedef  scalar_t__ mrb_bool ;

/* Variables and functions */
 int DUMP_DEBUG_INFO ; 
 int MRB_DUMP_GENERAL_FAILURE ; 
 int MRB_DUMP_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int**,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int**,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,size_t,int*,int) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int*,int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,size_t*,int) ; 
 int FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC14(mrb_state *mrb, mrb_irep *irep, uint8_t flags, uint8_t **bin, size_t *bin_size)
{
  int result = MRB_DUMP_GENERAL_FAILURE;
  size_t malloc_size;
  size_t section_irep_size;
  size_t section_lineno_size = 0, section_lv_size = 0;
  uint8_t *cur = NULL;
  mrb_bool const debug_info_defined = FUNC1(irep), lv_defined = FUNC6(irep);
  mrb_sym *lv_syms = NULL; uint32_t lv_syms_len = 0;
  mrb_sym *filenames = NULL; uint16_t filenames_len = 0;

  if (mrb == NULL) {
    *bin = NULL;
    return MRB_DUMP_GENERAL_FAILURE;
  }

  section_irep_size = sizeof(struct rite_section_irep_header);
  section_irep_size += FUNC4(mrb, irep);

  /* DEBUG section size */
  if (flags & DUMP_DEBUG_INFO) {
    if (debug_info_defined) {
      section_lineno_size += sizeof(struct rite_section_debug_header);
      /* filename table */
      filenames = (mrb_sym*)FUNC8(mrb, sizeof(mrb_sym) + 1);

      /* filename table size */
      section_lineno_size += sizeof(uint16_t);
      section_lineno_size += FUNC3(mrb, irep, &filenames, &filenames_len);

      section_lineno_size += FUNC2(mrb, irep);
    }
  }

  if (lv_defined) {
    section_lv_size += sizeof(struct rite_section_lv_header);
    FUNC0(mrb, irep, &lv_syms, &lv_syms_len);
    section_lv_size += FUNC5(mrb, irep, lv_syms, lv_syms_len);
  }

  malloc_size = sizeof(struct rite_binary_header) +
                section_irep_size + section_lineno_size + section_lv_size +
                sizeof(struct rite_binary_footer);
  cur = *bin = (uint8_t*)FUNC8(mrb, malloc_size);
  cur += sizeof(struct rite_binary_header);

  result = FUNC12(mrb, irep, cur, &section_irep_size, flags);
  if (result != MRB_DUMP_OK) {
    goto error_exit;
  }
  cur += section_irep_size;
  *bin_size = sizeof(struct rite_binary_header) +
              section_irep_size + section_lineno_size + section_lv_size +
              sizeof(struct rite_binary_footer);

  /* write DEBUG section */
  if (flags & DUMP_DEBUG_INFO) {
    if (debug_info_defined) {
      result = FUNC11(mrb, irep, cur, filenames, filenames_len);
      if (result != MRB_DUMP_OK) {
        goto error_exit;
      }
    }
    cur += section_lineno_size;
  }

  if (lv_defined) {
    result = FUNC13(mrb, irep, cur, lv_syms, lv_syms_len);
    if (result != MRB_DUMP_OK) {
      goto error_exit;
    }
    cur += section_lv_size;
  }

  FUNC9(mrb, cur);
  FUNC10(mrb, *bin_size, *bin, flags);

error_exit:
  if (result != MRB_DUMP_OK) {
    FUNC7(mrb, *bin);
    *bin = NULL;
  }
  FUNC7(mrb, lv_syms);
  FUNC7(mrb, filenames);
  return result;
}