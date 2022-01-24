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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 

__attribute__((used)) static void FUNC2(const char *cmd, int exit_status)
{
    FUNC1("Usage: %s [options] <upstream-host> <upstream-port>\n"
           "\n"
           "Options:\n"
           "  -b <buffersize> size of the buffer for packets upstream (default: 16)\n"
           "  -B <buffersize> size of the buffer for packets downstream (default: 16)\n"
           "  -i <interval>   delay (in microseconds) to insert after sending one packet\n"
           "                  upstream (default: 10)\n"
           "  -I <interval>   delay (in microseconds) to insert after sending one packet\n"
           "                  downstream (default: 10)\n"
           "  -p <interval>   propagation delay (in microseconds) upstream (default: 0)\n"
           "  -P <interval>   propagation delay (in microseconds) downstream (default: 0)\n"
           "  -l <port>       port number to which the command binds\n"
           "  -d <packetnum>  packet number in connection to drop upstream\n"
           "  -D <packetnum>  packet number in connection to drop downstream\n"
           "  -h              prints this help\n"
           "\n",
           cmd);
    FUNC0(exit_status);
}