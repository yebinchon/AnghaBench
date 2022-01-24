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
 int TF_ADDRESSES ; 
 int TF_EDUCATION ; 
 int TF_GROUPSHORT ; 
 int TF_MATCHES ; 
 int TF_MEMEXTRA ; 
 int TF_MEMGROUPS ; 
 int TF_MEMLITE ; 
 int TF_MEMSHORT ; 
 int TF_MILITARY ; 
 int TF_NAMES ; 
 int TF_NONE ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 

int FUNC1 (char *str) {
  if (!FUNC0 (str, "memlite", 7) || !FUNC0 (str, "members_lite", 12)) {
    return TF_MEMLITE;
  }
  if (!FUNC0 (str, "education", 9)) {
    return TF_EDUCATION;
  }
  if (!FUNC0 (str, "memshort", 8) || !FUNC0 (str, "members_short", 13)) {
    return TF_MEMSHORT;
  }
  if (!FUNC0 (str, "memextra", 8) || !FUNC0 (str, "members_extra", 13)) {
    return TF_MEMEXTRA;
  }
  if (!FUNC0 (str, "addresses", 9)) {
    return TF_ADDRESSES;
  }
  if (!FUNC0 (str, "groupshort", 10) || !FUNC0 (str, "groups_short", 12)) {
    return TF_GROUPSHORT;
  }
  if (!FUNC0 (str, "memgroups", 9) || !FUNC0 (str, "member_groups", 13)) {
    return TF_MEMGROUPS;
  }
  if (!FUNC0 (str, "military", 8)) {
    return TF_MILITARY;
  }
  if (!FUNC0 (str, "names", 5)) {
    return TF_NAMES;
  }
  if (!FUNC0 (str, "matches", 7)) {
    return TF_MATCHES;
  }

  return TF_NONE;
}