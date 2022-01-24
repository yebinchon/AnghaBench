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
struct stat {int /*<<< orphan*/  st_size; int /*<<< orphan*/  st_mode; } ;
struct _stat64 {int dummy; } ;
typedef  int /*<<< orphan*/  U64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (char const*,struct _stat64*) ; 
 int FUNC2 (char const*,struct stat*) ; 

__attribute__((used)) static U64 FUNC3(const char* infilename)
{
    int r;
#if defined(_MSC_VER)
    struct _stat64 statbuf;
    r = _stat64(infilename, &statbuf);
#else
    struct stat statbuf;
    r = FUNC2(infilename, &statbuf);
#endif
    if (r || !FUNC0(statbuf.st_mode)) return 0;   /* No good... */
    return (U64)statbuf.st_size;
}