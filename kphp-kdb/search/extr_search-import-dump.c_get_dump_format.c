
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ IS_PFX (char*) ;
 int TF_APPS ;
 int TF_AUDIO ;
 int TF_BLOG_POSTS ;
 int TF_EVENTS ;
 int TF_GROUPS ;
 int TF_MARKET_ITEMS ;
 int TF_MEMLITE ;
 int TF_MINIFEED ;
 int TF_NONE ;
 int TF_QUESTIONS ;
 int TF_TOPICS ;
 int TF_VIDEO ;

int get_dump_format (char *str) {

  if (!strncmp(str,"audio",sizeof("audio")-1)) {
    return TF_AUDIO;
  }

  if (!strncmp(str,"video",sizeof("video")-1)) {
    return TF_VIDEO;
  }

  if (!strncmp(str,"applications",sizeof("applications")-1)) {
    return TF_APPS;
  }

  if (!strncmp(str,"groups",sizeof("groups")-1)) {
    return TF_GROUPS;
  }

  if (!strncmp(str,"events",sizeof("events")-1)) {
    return TF_EVENTS;
  }

  if (!strncmp(str,"blog_posts",sizeof("blog_posts")-1)) {
    return TF_BLOG_POSTS;
  }

  if (!strncmp(str,"memlite",sizeof("memlite")-1)) {
    return TF_MEMLITE;
  }

  if (!strncmp(str,"members_lite",sizeof("members_lite")-1)) {
    return TF_MEMLITE;
  }

  if (!strncmp(str,"market_items",sizeof("market_items")-1)) {
    return TF_MARKET_ITEMS;
  }

  if (!strncmp(str,"question",sizeof("question")-1)) {
    return TF_QUESTIONS;
  }

  if (!strncmp(str,"topics",sizeof("topics")-1)) {
    return TF_TOPICS;
  }

  if (!strncmp(str,"minifeed",sizeof("minifeed")-1)) {
    return TF_MINIFEED;
  }

  return TF_NONE;
}
