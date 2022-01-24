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

/* Variables and functions */
 int TF_ALBUMS_PRIV ; 
 int TF_BLOGS_PRIV ; 
 int TF_FRIENDS ; 
 int TF_MEM_PREFS ; 
 int TF_MEM_PRIV ; 
 int TF_NONE ; 
 int TF_VIDEOS_PRIV ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 

int FUNC1 (char *str) {
  if (!FUNC0 (str, "friends", 7)) {
    return TF_FRIENDS;
  }
  if (!FUNC0 (str, "members_privacy", 15)) {
    return TF_MEM_PRIV;
  }
  if (!FUNC0 (str, "mempriv", 7)) {
    return TF_MEM_PRIV;
  }
  if (!FUNC0 (str, "albumpriv", 9)) {
    return TF_ALBUMS_PRIV;
  }
  if (!FUNC0 (str, "albums_privacy", 14)) {
    return TF_ALBUMS_PRIV;
  }
  if (!FUNC0 (str, "videos_privacy", 14)) {
    return TF_VIDEOS_PRIV;
  }
  if (!FUNC0 (str, "blog_posts_privacy", 18)) {
    return TF_BLOGS_PRIV;
  }
  if (!FUNC0 (str, "members_prefs", 13)) {
    return TF_MEM_PREFS;
  }

  return TF_NONE;
}