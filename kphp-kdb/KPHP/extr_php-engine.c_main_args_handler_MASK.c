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
 int MAX_SCRIPT_TIMEOUT ; 
 void* MAX_WORKERS ; 
 void* FUNC0 (char*) ; 
 char* cluster_name ; 
 void* http_port ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int master_flag ; 
 void* master_port ; 
 int no_sql ; 
 char* optarg ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* rpc_client_host ; 
 void* rpc_client_port ; 
 void* rpc_port ; 
 int run_once ; 
 int script_timeout ; 
 char* FUNC4 (char*,char) ; 
 char* FUNC5 (char*,char) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int,char*) ; 
 void* workers_n ; 

int FUNC8 (int i) {
  switch (i) {
  case 'D':
    {
      char *key = optarg, *value;
      char *eq = FUNC4 (key, '=');
      if (eq == NULL) {
        FUNC7 (-1, "-D option, can't find '='\n");
        FUNC6();
        return 2;
      }
      value = eq + 1;
      *eq = 0;
      FUNC1 (key, value);
    }
    break;
  case 'H':
    http_port = FUNC0 (optarg);
    break;
  case 'r':
    rpc_port = FUNC0 (optarg);
    break;
  case 'w':
    rpc_client_host = optarg;
    {
      char *colon = FUNC5 ((char *)rpc_client_host, ':');
      if (colon == NULL) {
        FUNC7 (-1, "-w option, can't find ':'\n");
        FUNC6();
        return 2;
      }
      *colon++ = 0;
      rpc_client_port = FUNC0 (colon);
    }
    break;
  case 'E':
    FUNC2 (optarg);
    break;
  case 'f':
    workers_n = FUNC0 (optarg);
    if (workers_n >= 0) {
      if (workers_n > MAX_WORKERS) {
        workers_n = MAX_WORKERS;
      }
      master_flag = 1;
    }
    break;
  case 'p':
    master_port = FUNC0 (optarg);
    break;
  case 's':
    cluster_name = optarg;
    break;
  case 'T':
    FUNC3 (optarg);
    break;
  case 't':
    script_timeout = FUNC0 (optarg);
    if (script_timeout < 1) {
      script_timeout = 1;
    }
    if (script_timeout > MAX_SCRIPT_TIMEOUT) {
      script_timeout = MAX_SCRIPT_TIMEOUT;
    }
    break;
  case 'o':
    run_once = 1;
    break;
  case 'q':
    no_sql = 1;
    break;
  default:
    return 0;
  }
  return 1;
}