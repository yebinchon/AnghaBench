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
 int TF_APP_FANS ; 
 int TF_APP_FANS_NOTIFY ; 
 int TF_APP_FANS_SETTINGS ; 
 int TF_BANLIST ; 
 int TF_BANLISTED ; 
 int TF_BLACKLIST ; 
 int TF_BLACKLISTED ; 
 int TF_FAMILY ; 
 int TF_FAN_APPS ; 
 int TF_FAN_APPS_BALANCE ; 
 int TF_FAN_APPS_NOTIFY ; 
 int TF_FAN_APPS_SETTINGS ; 
 int TF_GROUPS_SHORT ; 
 int TF_GROUP_MEMBERS ; 
 int TF_MEMBER_GROUPS ; 
 int TF_NONE ; 
 int TF_PHOTO_REV ; 
 int TF_WIDGET_COMMENTS ; 
 int TF_WIDGET_VOTES ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 

int FUNC1 (char *str) {
  if (!FUNC0 (str, "member_groups", 13)) {
    return TF_MEMBER_GROUPS;
  }
  if (!FUNC0 (str, "group_members", 13)) {
    return TF_GROUP_MEMBERS;
  }
  if (!FUNC0 (str, "groups_short", 12)) {
    return TF_GROUPS_SHORT;
  }
  if (!FUNC0 (str, "app_fans_settings", 17) || !FUNC0 (str, "app_members_settings", 20)) {
    return TF_APP_FANS_SETTINGS;
  }
  if (!FUNC0 (str, "fan_apps_settings", 17) || !FUNC0 (str, "member_apps_settings", 20)) {
    return TF_FAN_APPS_SETTINGS;
  }
  if (!FUNC0 (str, "fan_apps_balance", 16) || !FUNC0 (str, "member_apps_balance", 19)) {
    return TF_FAN_APPS_BALANCE;
  }
  if (!FUNC0 (str, "app_fans_notify", 15) || !FUNC0 (str, "app_members_notify", 18)) {
    return TF_APP_FANS_NOTIFY;
  }
  if (!FUNC0 (str, "fan_apps_notify", 15) || !FUNC0 (str, "member_apps_notify", 18)) {
    return TF_FAN_APPS_NOTIFY;
  }
  if (!FUNC0 (str, "app_fans", 8) || !FUNC0 (str, "app_members", 11)) {
    return TF_APP_FANS;
  }
  if (!FUNC0 (str, "fan_apps", 8) || !FUNC0 (str, "member_apps", 11)) {
    return TF_FAN_APPS;
  }
  if (!FUNC0 (str, "family", 6)) {
    return TF_FAMILY;
  }
  if (!FUNC0 (str, "widget_comments", 15)) {
    return TF_WIDGET_COMMENTS;
  }
  if (!FUNC0 (str, "widget_votes", 12)) {
    return TF_WIDGET_VOTES;
  }
  if (!FUNC0 (str, "blacklist", 10)) {
    return TF_BLACKLIST;
  }
  if (!FUNC0 (str, "blacklisted", 12)) {
    return TF_BLACKLISTED;
  }
  if (!FUNC0 (str, "banlist", 8)) {
    return TF_BANLIST;
  }
  if (!FUNC0 (str, "banlisted", 10)) {
    return TF_BANLISTED;
  }
  if (!FUNC0 (str, "photorev", 9)) {
    return TF_PHOTO_REV;
  }

  return TF_NONE;
}