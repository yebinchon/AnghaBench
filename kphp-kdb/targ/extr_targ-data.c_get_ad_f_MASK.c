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
struct advert {int flags; int ad_id; double factor; int recent_views_limit; struct advert* hash_next; } ;

/* Variables and functions */
 int ADF_ANCIENT ; 
 int ADF_NOTLOADED ; 
 int AD_TABLE_SIZE ; 
 struct advert** Ads ; 
 int* AncientAdBitmap ; 
 unsigned int MAX_ADS ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  ancient_ads_pending ; 
 struct advert* FUNC1 (int) ; 
 int max_ad_id ; 
 int /*<<< orphan*/  FUNC2 (struct advert*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  tot_ad_versions ; 
 int /*<<< orphan*/  tot_ads ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int) ; 
 struct advert* FUNC4 (int) ; 

struct advert *FUNC5 (int ad_id, int force) {
  struct advert *A;
  if ((unsigned) ad_id >= MAX_ADS || !ad_id) { 
    return 0; 
  }
  A = FUNC1 (ad_id);
  if (A || !force) { 
    return A; 
  }
  A = FUNC4 (sizeof (struct advert));
  if (!A) { 
    return A; 
  }
  FUNC2 (A, 0, sizeof(*A));
  if (ad_id > max_ad_id) {
    max_ad_id = ad_id;
  }
  tot_ads++;
  if (FUNC0 (ad_id)) {
    AncientAdBitmap[ad_id >> 3] &= ~(1 << (ad_id & 7));
    A->flags = ADF_ANCIENT | ADF_NOTLOADED;
    ancient_ads_pending++;
  }
  FUNC3 (4, "created ad id %d\n", ad_id);
  A->ad_id = ad_id;
  A->hash_next = Ads[ad_id & (AD_TABLE_SIZE - 1)];
  Ads[ad_id & (AD_TABLE_SIZE - 1)] = A;
  A->factor = 1.0;
  A->recent_views_limit = 0xffff;
  tot_ad_versions++;
  return A;
}