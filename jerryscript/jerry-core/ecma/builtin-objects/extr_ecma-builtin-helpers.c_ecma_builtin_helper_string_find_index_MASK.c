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
typedef  int /*<<< orphan*/  lit_utf8_byte_t ;
typedef  int /*<<< orphan*/  ecma_string_t ;
typedef  scalar_t__ ecma_length_t ;
typedef  scalar_t__ ecma_char_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const**) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/  const**) ; 
 int /*<<< orphan*/  original_str_size ; 
 int /*<<< orphan*/ * original_str_utf8_p ; 
 int /*<<< orphan*/  search_str_size ; 
 int /*<<< orphan*/ * search_str_utf8_p ; 

bool
FUNC6 (ecma_string_t *original_str_p, /**< index */
                                       ecma_string_t *search_str_p, /**< string's length */
                                       bool first_index, /**< whether search for first (t) or last (f) index */
                                       ecma_length_t start_pos, /**< start position */
                                       ecma_length_t *ret_index_p) /**< [out] position found in original string */
{
  bool match_found = false;
  const ecma_length_t original_len = FUNC2 (original_str_p);
  const ecma_length_t search_len = FUNC2 (search_str_p);

  if (search_len <= original_len)
  {
    if (!search_len)
    {
      match_found = true;
      *ret_index_p = first_index ? 0 : original_len;
    }
    else
    {
      /* create utf8 string from original string and advance to position */
      FUNC1 (original_str_p, original_str_utf8_p, original_str_size);

      ecma_length_t index = start_pos;

      const lit_utf8_byte_t *original_str_curr_p = original_str_utf8_p;
      for (ecma_length_t idx = 0; idx < index; idx++)
      {
        FUNC4 (&original_str_curr_p);
      }

      /* create utf8 string from search string */
      FUNC1 (search_str_p, search_str_utf8_p, search_str_size);

      const lit_utf8_byte_t *search_str_curr_p = search_str_utf8_p;

      /* iterate original string and try to match at each position */
      bool searching = true;
      ecma_char_t first_char = FUNC5 (&search_str_curr_p);
      while (searching)
      {
        /* match as long as possible */
        ecma_length_t match_len = 0;
        const lit_utf8_byte_t *stored_original_str_curr_p = original_str_curr_p;

        if (match_len < search_len &&
            index + match_len < original_len &&
            FUNC5 (&original_str_curr_p) == first_char)
        {
          const lit_utf8_byte_t *nested_search_str_curr_p = search_str_curr_p;
          match_len++;

          while (match_len < search_len &&
                 index + match_len < original_len &&
                 FUNC5 (&original_str_curr_p) == FUNC5 (&nested_search_str_curr_p))
          {
            match_len++;
          }
        }

        /* check for match */
        if (match_len == search_len)
        {
          match_found = true;
          *ret_index_p = index;

          break;
        }
        else
        {
          /* inc/dec index and update iterators and search condition */
          original_str_curr_p = stored_original_str_curr_p;

          if (first_index)
          {
            if ((searching = (index <= original_len - search_len)))
            {
              FUNC4 (&original_str_curr_p);
              index++;
            }
          }
          else
          {
            if ((searching = (index > 0)))
            {
              FUNC3 (&original_str_curr_p);
              index--;
            }
          }
        }
      }

      FUNC0 (search_str_utf8_p, search_str_size);
      FUNC0 (original_str_utf8_p, original_str_size);
    }
  }

  return match_found;
}