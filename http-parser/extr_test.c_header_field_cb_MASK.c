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
struct message {scalar_t__ last_header_element; int num_headers; int /*<<< orphan*/ ** headers; } ;
typedef  int /*<<< orphan*/  http_parser ;

/* Variables and functions */
 scalar_t__ FIELD ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct message* messages ; 
 size_t num_messages ; 
 int /*<<< orphan*/  parser ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,char const*,size_t) ; 

int
FUNC2 (http_parser *p, const char *buf, size_t len)
{
  FUNC0(p == &parser);
  struct message *m = &messages[num_messages];

  if (m->last_header_element != FIELD)
    m->num_headers++;

  FUNC1(m->headers[m->num_headers-1][0],
           sizeof(m->headers[m->num_headers-1][0]),
           buf,
           len);

  m->last_header_element = FIELD;

  return 0;
}