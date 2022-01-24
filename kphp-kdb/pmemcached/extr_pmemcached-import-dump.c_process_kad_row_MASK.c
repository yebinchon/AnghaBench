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
 char** I ; 
 char** S ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 size_t kad_album ; 
 size_t kad_bitrate ; 
 size_t kad_file ; 
 size_t kad_genre ; 
 size_t kad_print ; 
 size_t kad_uid ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,...) ; 
 int source_server ; 

void FUNC2 (void) {
  char key_prefix[100], key[200], value[50];
  FUNC1 (key_prefix, 99, "%d_%lld_%s", source_server, I[kad_uid], S[kad_file]);
  // store kad
  FUNC1 (key, 199, "%s.kad", key_prefix);
  FUNC0 (key, S[kad_print]);
  // store genre
  FUNC1 (key, 199, "%s.genre", key_prefix);
  FUNC1 (value, 49, "%lld", I[kad_genre]);
  FUNC0 (key, value);
  // store bitrate
  FUNC1 (key, 199, "%s.rate", key_prefix);
  FUNC1 (value, 49, "%lld", I[kad_bitrate]);
  FUNC0 (key, value);
  // store album
  FUNC1 (key, 199, "%s.album", key_prefix);
  FUNC0 (key, S[kad_album]);
}