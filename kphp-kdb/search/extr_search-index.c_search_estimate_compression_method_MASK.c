#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__* compression_bytes; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
 TYPE_1__ Header ; 
 int NCOMPRESSION_METHODS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ compression_speed ; 
 scalar_t__ cur_offs ; 
 scalar_t__* encoded_bytes ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,char*,...) ; 
 scalar_t__ FUNC2 (int) ; 
 double FUNC3 (int /*<<< orphan*/ ) ; 
 double interpolative_percent ; 
 int /*<<< orphan*/  FUNC4 (char*,int,...) ; 
 int le_interpolative_ext ; 
 char* FUNC5 (int) ; 
 int /*<<< orphan*/  lists_encoded ; 
 scalar_t__* max_encoded_list_size ; 
 int /*<<< orphan*/  FUNC6 (int*,int /*<<< orphan*/ ,int) ; 
 double FUNC7 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int*,int) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ verbosity ; 
 scalar_t__ word_index_offset ; 

void FUNC9 (int c[2]) {
  FUNC6 (c, 0, sizeof(int) * 2);
  if (compression_speed < 0) {
    c[0] = c[1] = le_interpolative_ext;
    return;
  }
  if (!compression_speed) {
    return;
  }

  int method;
  int methods[2];
  for (method = 0; method < NCOMPRESSION_METHODS; method++) {
    methods[0] = methods[1] = method;
    double t = -FUNC3(CLOCK_MONOTONIC);
    FUNC0 (!FUNC2 (method));
    FUNC8 (methods, 1);
    if ((cur_offs - word_index_offset) != FUNC2 (method)) {
      FUNC4 ("cur_offs - word_index_offset == %lld\n", cur_offs - word_index_offset);
      FUNC4 ("get_compression_bytes (%d) = %lld\n", method, FUNC2 (method));
      FUNC0 (0);
    }
    t += FUNC3 (CLOCK_MONOTONIC);
    if (verbosity > 0) {
      FUNC1 (stderr, "Compression method: %s, %s(%.6lf%%) = %ld(%.6lf%%)+%ld(%.6lf%%) bytes in %d lists (%.6lf seconds).\nMax encoded list bytes = %ld.\n",
      FUNC5 (method),
      FUNC2 (method), FUNC7 (FUNC2 (method), FUNC2 (0)),
      encoded_bytes[0], FUNC7 (encoded_bytes[0], Header.compression_bytes[0]),
      encoded_bytes[1], FUNC7 (encoded_bytes[1], Header.compression_bytes[1]),
      lists_encoded, t,
      (max_encoded_list_size[0] > max_encoded_list_size[1]) ? max_encoded_list_size[0] : max_encoded_list_size[1]);
    }

    if (method) {
      int k;
      for (k = 0; k < 2; k++) {
        double p = FUNC7 (encoded_bytes[k], Header.compression_bytes[c[k] * 2 + k]);
        switch (method) {
          case 1:
            if (p < 100.0) { c[k] = method; }
            break;
          case 2:
            if (p < interpolative_percent) { c[k] = method; }
            break;
        }
      }
    }
  }

  if (verbosity > 0) {
    FUNC1 (stderr, "Choose %s+%s coding.\n",
             FUNC5 (c[0]),
             FUNC5 (c[1]));
  }
  return;
}