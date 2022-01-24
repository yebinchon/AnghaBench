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
struct advert {int flags; int retarget_time; int ad_id; } ;

/* Variables and functions */
 int ADF_PERIODIC ; 
 int RETARGET_AD_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,struct advert*,int) ; 
 int log_last_ts ; 
 int /*<<< orphan*/  FUNC1 (struct advert*) ; 
 int /*<<< orphan*/  stderr ; 
 int verbosity ; 

__attribute__((used)) static inline void FUNC2 (struct advert *A) {
  if (A->flags & ADF_PERIODIC) {
    FUNC1 (A);
    A->retarget_time = ((log_last_ts + (RETARGET_AD_TIMEOUT < 3600 ? 3600 : RETARGET_AD_TIMEOUT)) / 3600) * 3600;
    if (verbosity > 1) { 
      FUNC0 (stderr, "inserting ad #%d (%p) into retarget queue, retarget_time=%d\n", A->ad_id, A, A->retarget_time);
    }
  }
}