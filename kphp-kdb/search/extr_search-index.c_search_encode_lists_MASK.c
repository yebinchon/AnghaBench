#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_7__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct search_index_hapax_legomena {int dummy; } ;
typedef  scalar_t__ hash_t ;
struct TYPE_12__ {int words; int hapax_legomena; int /*<<< orphan*/ * compression_bytes; } ;
struct TYPE_11__ {unsigned int doc_id_and_priority; scalar_t__ word; } ;
struct TYPE_10__ {scalar_t__ word; } ;
struct TYPE_9__ {scalar_t__ word; unsigned int doc_id; } ;

/* Variables and functions */
 TYPE_3__* HL ; 
 TYPE_7__ Header ; 
 TYPE_1__* P ; 
 int PC ; 
 TYPE_2__* W ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/ * encoded_bytes ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int,TYPE_2__*,int const*,int) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,int,int) ; 

__attribute__((used)) static int FUNC6 (const int methods[2], int quiet) {
  FUNC1 ();
  int i = 0, j, k, hl = 0;
  for (k = 0; k < PC; k = j) {
    hash_t word = P[k].word;
    for (j = k + 1; j < PC && P[j].word == word; j++) {}
    if (j - k > 1) {
      FUNC0 (i < Header.words);
      W[i].word = word;
      FUNC4 (P+k, j-k, W+i, methods, quiet);
      i++;
    } else {
      if (hl >= Header.hapax_legomena) { FUNC5 (1, "h1 = %d, Header.hapax_legomena = %d\n", hl, Header.hapax_legomena); }
      FUNC0 (hl < Header.hapax_legomena);
      HL[hl].word = word;
      HL[hl].doc_id_and_priority = P[k].doc_id;
      if (FUNC2 (P + k)) {
        HL[hl].doc_id_and_priority |= (1U << 31);
      }
      hl++;
    }
  }
  FUNC0 (i == Header.words);
  FUNC0 (hl == Header.hapax_legomena);
  FUNC3 (HL+hl, 0, sizeof (struct search_index_hapax_legomena));
  for (k=0;k<2;k++) {
    Header.compression_bytes[2*methods[k]+k] = encoded_bytes[k];
  }
  return i;
}