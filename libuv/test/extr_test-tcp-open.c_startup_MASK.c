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
struct WSAData {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct WSAData*) ; 

__attribute__((used)) static void FUNC3(void) {
#ifdef _WIN32
    struct WSAData wsa_data;
    int r = WSAStartup(MAKEWORD(2, 2), &wsa_data);
    ASSERT(r == 0);
#endif
}