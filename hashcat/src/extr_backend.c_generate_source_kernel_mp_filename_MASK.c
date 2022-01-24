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
typedef  int u64 ;
typedef  int u32 ;

/* Variables and functions */
 int const OPTI_TYPE_BRUTE_FORCE ; 
 int const OPTS_TYPE_PT_GENERATE_BE ; 
 int /*<<< orphan*/  FUNC0 (char*,int,char*,char*) ; 

void FUNC1 (const u32 opti_type, const u64 opts_type, char *shared_dir, char *source_file)
{
  if ((opti_type & OPTI_TYPE_BRUTE_FORCE) && (opts_type & OPTS_TYPE_PT_GENERATE_BE))
  {
    FUNC0 (source_file, 255, "%s/OpenCL/markov_be.cl", shared_dir);
  }
  else
  {
    FUNC0 (source_file, 255, "%s/OpenCL/markov_le.cl", shared_dir);
  }
}