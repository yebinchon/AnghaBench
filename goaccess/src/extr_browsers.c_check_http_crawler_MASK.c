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
 char* FUNC0 (char const*,char*) ; 

__attribute__((used)) static char *
FUNC1 (const char *str)
{
  char *match = NULL;

  /* e.g., compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm */
  if ((match = FUNC0 (str, "; +http")))
    return match;
  /* compatible; UptimeRobot/2.0; http://www.uptimerobot.com/ */
  if ((match = FUNC0 (str, "; http")))
    return match;
  /* Slack-ImgProxy (+https://api.slack.com/robots) */
  if ((match = FUNC0 (str, " (+http")))
    return match;
  /*  TurnitinBot/3.0 (http://www.turnitin.com/robot/crawlerinfo.html) */
  if ((match = FUNC0 (str, " (http")))
    return match;
  /* w3c e.g., (compatible;+Googlebot/2.1;++http://www.google.com/bot.html) */
  if ((match = FUNC0 (str, ";++http")))
    return match;
  return NULL;
}