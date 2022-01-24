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
struct advert {int flags; int ad_id; int users; int /*<<< orphan*/  disabled_since; } ;

/* Variables and functions */
 int ADF_ANCIENT ; 
 int ADF_DELAYED ; 
 int ADF_ON ; 
 int /*<<< orphan*/  active_ads ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct advert*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  now ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct advert*) ; 
 int /*<<< orphan*/  stderr ; 
 int verbosity ; 

__attribute__((used)) static int FUNC5 (struct advert *A) {
  if (!A) { 
    return 0; 
  }
  if (!(A->flags & ADF_ON)) { 
    return 1; 
  }
  FUNC0 (!(A->flags & ADF_ANCIENT));

  A->flags &= ~ADF_ON;
  active_ads--;
  A->disabled_since = now;

  if (!(A->flags & ADF_DELAYED)) {
    FUNC1 (A);
  } else {
    A->flags &= ~ADF_DELAYED;
  }

  if (verbosity > 2) {
    FUNC2 (stderr, "disabled previously enabled ad #%d: %d users\n", A->ad_id, A->users);
  }

  FUNC4 (A);
  FUNC3 ();

  return 1;
}