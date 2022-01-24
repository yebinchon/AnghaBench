#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct solos_card {TYPE_2__** atmdev; TYPE_1__* dev; } ;
struct sk_buff {int dummy; } ;
struct TYPE_4__ {int link_rate; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATM_PHY_SIG_FOUND ; 
 int /*<<< orphan*/  ATM_PHY_SIG_LOST ; 
 int EIO ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC4 (char*,int,int*) ; 
 char* FUNC5 (struct sk_buff*) ; 
 scalar_t__ FUNC6 (char*,char*) ; 

__attribute__((used)) static int FUNC7(struct solos_card *card, int port, struct sk_buff *skb)
{
	char *str, *state_str, *snr, *attn;
	int ver, rate_up, rate_down, err;

	if (!card->atmdev[port])
		return -ENODEV;

	str = FUNC5(skb);
	if (!str)
		return -EIO;

	err = FUNC4(str, 10, &ver);
	if (err) {
		FUNC3(&card->dev->dev, "Unexpected status interrupt version\n");
		return err;
	}
	if (ver < 1) {
		FUNC3(&card->dev->dev, "Unexpected status interrupt version %d\n",
			 ver);
		return -EIO;
	}

	str = FUNC5(skb);
	if (!str)
		return -EIO;
	if (!FUNC6(str, "ERROR")) {
		FUNC1(&card->dev->dev, "Status packet indicated Solos error on port %d (starting up?)\n",
			 port);
		return 0;
	}

	err = FUNC4(str, 10, &rate_down);
	if (err)
		return err;

	str = FUNC5(skb);
	if (!str)
		return -EIO;
	err = FUNC4(str, 10, &rate_up);
	if (err)
		return err;

	state_str = FUNC5(skb);
	if (!state_str)
		return -EIO;

	/* Anything but 'Showtime' is down */
	if (FUNC6(state_str, "Showtime")) {
		FUNC0(card->atmdev[port], ATM_PHY_SIG_LOST);
		FUNC2(&card->dev->dev, "Port %d: %s\n", port, state_str);
		return 0;
	}

	snr = FUNC5(skb);
	if (!snr)
		return -EIO;
	attn = FUNC5(skb);
	if (!attn)
		return -EIO;

	FUNC2(&card->dev->dev, "Port %d: %s @%d/%d kb/s%s%s%s%s\n",
		 port, state_str, rate_down/1000, rate_up/1000,
		 snr[0]?", SNR ":"", snr, attn[0]?", Attn ":"", attn);
	
	card->atmdev[port]->link_rate = rate_down / 424;
	FUNC0(card->atmdev[port], ATM_PHY_SIG_FOUND);

	return 0;
}