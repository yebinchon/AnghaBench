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
 int TF_API_UVARS ; 
 int TF_KAD ; 
 int TF_NONE ; 
 int TF_SHORT_URLS ; 
 int TF_STORAGE_IMG ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 

int FUNC1 (char *str) {
  if (!FUNC0 (str, "short_urls", 9)) {
    return TF_SHORT_URLS;
  } else if (!FUNC0 (str, "api_uvars", 9)) {
    return TF_API_UVARS;
  } else if (!FUNC0 (str, "storage_img", 11) || !FUNC0 (str, "keyvalue", 9)) {
    return TF_STORAGE_IMG;
  } else if (!FUNC0 (str, "kad", 4)) {
    return TF_KAD;
  }
  return TF_NONE;
}