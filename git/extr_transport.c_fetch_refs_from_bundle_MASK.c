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
struct transport {scalar_t__ progress; struct bundle_transport_data* data; } ;
struct ref {int dummy; } ;
struct bundle_transport_data {int /*<<< orphan*/  fd; int /*<<< orphan*/  header; int /*<<< orphan*/  get_refs_from_bundle_called; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUNDLE_VERBOSE ; 
 int /*<<< orphan*/  FUNC0 (struct transport*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  the_repository ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct transport *transport,
			       int nr_heads, struct ref **to_fetch)
{
	struct bundle_transport_data *data = transport->data;

	if (!data->get_refs_from_bundle_called)
		FUNC0(transport, 0, NULL);
	return FUNC1(the_repository, &data->header, data->fd,
			transport->progress ? BUNDLE_VERBOSE : 0);
}