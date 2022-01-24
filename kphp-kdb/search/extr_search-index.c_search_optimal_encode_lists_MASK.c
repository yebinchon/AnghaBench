#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct search_index_word {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  crc32_data; } ;
struct TYPE_6__ {int /*<<< orphan*/  word_list_compression_methods; } ;
struct TYPE_5__ {scalar_t__ file_offset; } ;

/* Variables and functions */
 TYPE_4__ CRC32_Header ; 
 TYPE_3__ Header ; 
 int /*<<< orphan*/  SEEK_SET ; 
 TYPE_1__* W ; 
 scalar_t__ compression_speed ; 
 scalar_t__ cur_offs ; 
 int /*<<< orphan*/ * fd ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  idx_crc32_complement ; 
 int /*<<< orphan*/  interpolative_ext_bits ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__,scalar_t__) ; 
 scalar_t__ lists_encoded ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ redundant_bits ; 
 int FUNC6 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int*) ; 
 scalar_t__ verbosity ; 
 scalar_t__ word_index_offset ; 

__attribute__((used)) static void FUNC8 (void) {
  int compression_methods[2];
  FUNC7 (compression_methods);
  lists_encoded = 0;
  FUNC3 (Header.word_list_compression_methods, compression_methods, 8);

  FUNC2 (fd[0], word_index_offset, SEEK_SET);
  int i = FUNC6 (compression_methods, 0);
  CRC32_Header.crc32_data = ~idx_crc32_complement;
  FUNC4 (W+i, 0, sizeof (struct search_index_word));
  W[i].file_offset = cur_offs;
  FUNC0 ();
  if (verbosity > 0) {
    FUNC1 ("wrote %lld codes bytes in %d lists\n",
      cur_offs - word_index_offset, lists_encoded);
    if (compression_speed < 0) {
      FUNC1 ("wrote %lld(%.6lf%%) interpolative redundant bits.\n", redundant_bits, FUNC5 (redundant_bits, interpolative_ext_bits));
    }
  }
}