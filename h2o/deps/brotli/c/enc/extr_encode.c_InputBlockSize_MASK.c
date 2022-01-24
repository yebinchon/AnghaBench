#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {size_t lgblock; } ;
struct TYPE_6__ {TYPE_1__ params; } ;
typedef  TYPE_2__ BrotliEncoderState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 

__attribute__((used)) static size_t FUNC1(BrotliEncoderState* s) {
  if (!FUNC0(s)) return 0;
  return (size_t)1 << s->params.lgblock;
}