#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  WSPipeOut ;
struct TYPE_3__ {int listener; char* remote_ip; } ;
typedef  TYPE_1__ WSClient ;

/* Variables and functions */
 int INET6_ADDRSTRLEN ; 
 int WS_OPCODE_TEXT ; 
 char* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 

__attribute__((used)) static int
FUNC4 (WSPipeOut * pipeout, WSClient * client)
{
  uint32_t hsize = sizeof (uint32_t) * 3;
  char *hdr = FUNC0 (hsize, sizeof (char));
  char *ptr = hdr;

  ptr += FUNC2 (ptr, client->listener);
  ptr += FUNC2 (ptr, WS_OPCODE_TEXT);
  ptr += FUNC2 (ptr, INET6_ADDRSTRLEN);

  FUNC3 (pipeout, hdr, hsize);
  FUNC3 (pipeout, client->remote_ip, INET6_ADDRSTRLEN);
  FUNC1 (hdr);

  return 0;
}