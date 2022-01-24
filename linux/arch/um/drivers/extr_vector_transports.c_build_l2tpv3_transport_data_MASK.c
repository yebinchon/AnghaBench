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
struct vector_private {int header_size; int rx_header_size; int /*<<< orphan*/  parsed; int /*<<< orphan*/ * verify_header; int /*<<< orphan*/ * form_header; struct uml_l2tpv3_data* transport_data; } ;
struct uml_l2tpv3_data {int cookie_offset; int counter_offset; int ipv6; int cookie_is_64; int cookie; int has_counter; int pin_counter; int udp; scalar_t__ session_offset; void* tx_cookie; void* rx_cookie; void* rx_session; void* tx_session; scalar_t__ counter; } ;
struct iphdr {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* FUNC0 (unsigned long) ; 
 void* FUNC1 (unsigned long) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*,int*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*,unsigned long*) ; 
 struct uml_l2tpv3_data* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  l2tpv3_form_header ; 
 int /*<<< orphan*/  l2tpv3_verify_header ; 

__attribute__((used)) static int FUNC5(struct vector_private *vp)
{

	struct uml_l2tpv3_data *td;
	int temp_int, temp_rxs, temp_txs;
	unsigned long temp_rx;
	unsigned long temp_tx;

	vp->transport_data = FUNC4(
		sizeof(struct uml_l2tpv3_data), GFP_KERNEL);

	if (vp->transport_data == NULL)
		return -ENOMEM;

	td = vp->transport_data;

	vp->form_header = &l2tpv3_form_header;
	vp->verify_header = &l2tpv3_verify_header;
	td->counter = 0;

	vp->header_size = 4;
	td->session_offset = 0;
	td->cookie_offset = 4;
	td->counter_offset = 4;


	td->ipv6 = false;
	if (FUNC2(vp->parsed, "v6", &temp_int)) {
		if (temp_int > 0)
			td->ipv6 = true;
	}

	if (FUNC2(vp->parsed, "rx_session", &temp_rxs)) {
		if (FUNC2(vp->parsed, "tx_session", &temp_txs)) {
			td->tx_session = FUNC0(temp_txs);
			td->rx_session = FUNC0(temp_rxs);
		} else {
			return -EINVAL;
		}
	} else {
		return -EINVAL;
	}

	td->cookie_is_64  = false;
	if (FUNC2(vp->parsed, "cookie64", &temp_int)) {
		if (temp_int > 0)
			td->cookie_is_64  = true;
	}
	td->cookie = false;
	if (FUNC3(vp->parsed, "rx_cookie", &temp_rx)) {
		if (FUNC3(vp->parsed, "tx_cookie", &temp_tx)) {
			td->cookie = true;
			if (td->cookie_is_64) {
				td->rx_cookie = FUNC1(temp_rx);
				td->tx_cookie = FUNC1(temp_tx);
				vp->header_size += 8;
				td->counter_offset += 8;
			} else {
				td->rx_cookie = FUNC0(temp_rx);
				td->tx_cookie = FUNC0(temp_tx);
				vp->header_size += 4;
				td->counter_offset += 4;
			}
		} else {
			return -EINVAL;
		}
	}

	td->has_counter = false;
	if (FUNC2(vp->parsed, "counter", &temp_int)) {
		if (temp_int > 0) {
			td->has_counter = true;
			vp->header_size += 4;
			if (FUNC2(
				vp->parsed, "pin_counter", &temp_int)) {
				if (temp_int > 0)
					td->pin_counter = true;
			}
		}
	}

	if (FUNC2(vp->parsed, "udp", &temp_int)) {
		if (temp_int > 0) {
			td->udp = true;
			vp->header_size += 4;
			td->counter_offset += 4;
			td->session_offset += 4;
			td->cookie_offset += 4;
		}
	}

	vp->rx_header_size = vp->header_size;
	if ((!td->ipv6) && (!td->udp))
		vp->rx_header_size += sizeof(struct iphdr);

	return 0;
}