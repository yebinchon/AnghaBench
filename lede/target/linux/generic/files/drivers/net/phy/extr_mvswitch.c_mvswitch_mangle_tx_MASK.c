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
typedef  int u16 ;
struct sk_buff {int len; char* data; int mac_header; } ;
struct net_device {int /*<<< orphan*/  name; struct mvswitch_priv* phy_ptr; } ;
struct mvswitch_priv {int* vlans; } ;
typedef  int /*<<< orphan*/  __be32 ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int MV_HEADER_PORTS_M ; 
 int MV_HEADER_PORTS_S ; 
 scalar_t__ MV_HEADER_SIZE ; 
 int MV_HEADER_VLAN_M ; 
 int MV_HEADER_VLAN_S ; 
 int MV_TRAILER_FLAGS_S ; 
 int MV_TRAILER_OVERRIDE ; 
 int MV_TRAILER_PORTS_M ; 
 int MV_TRAILER_PORTS_S ; 
 int MV_TRAILER_SIZE ; 
 scalar_t__ FUNC0 (struct sk_buff*,int*) ; 
 scalar_t__ FUNC1 (struct sk_buff*,int*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct sk_buff*,scalar_t__,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct sk_buff*) ; 
 scalar_t__ FUNC10 (struct sk_buff*) ; 
 char* FUNC11 (struct sk_buff*,scalar_t__) ; 
 char* FUNC12 (struct sk_buff*,int) ; 
 int FUNC13 (struct sk_buff*) ; 
 scalar_t__ FUNC14 (int) ; 

__attribute__((used)) static struct sk_buff *
FUNC15(struct net_device *dev, struct sk_buff *skb)
{
	struct mvswitch_priv *priv;
	char *buf = NULL;
	u16 vid;

	priv = dev->phy_ptr;
	if (FUNC14(!priv))
		goto error;

	if (FUNC14(skb->len < 16))
		goto error;

#ifdef HEADER_MODE
	if (__vlan_hwaccel_get_tag(skb, &vid))
		goto error;

	if (skb_cloned(skb) || (skb->len <= 62) || (skb_headroom(skb) < MV_HEADER_SIZE)) {
		if (pskb_expand_head(skb, MV_HEADER_SIZE, (skb->len < 62 ? 62 - skb->len : 0), GFP_ATOMIC))
			goto error_expand;
		if (skb->len < 62)
			skb->len = 62;
	}
	buf = skb_push(skb, MV_HEADER_SIZE);
#else
	if (FUNC0(skb, &vid))
		goto error;

	if (FUNC14((vid > 15 || !priv->vlans[vid])))
		goto error;

	if (skb->len <= 64) {
		if (FUNC8(skb, 0, 64 + MV_TRAILER_SIZE - skb->len, GFP_ATOMIC))
			goto error_expand;

		buf = skb->data + 64;
		skb->len = 64 + MV_TRAILER_SIZE;
	} else {
		if (FUNC9(skb) || FUNC14(FUNC13(skb) < 4)) {
			if (FUNC8(skb, 0, 4, GFP_ATOMIC))
				goto error_expand;
		}
		buf = FUNC12(skb, 4);
	}

	/* move the ethernet header 4 bytes forward, overwriting the vlan tag */
	FUNC5(skb->data + 4, skb->data, 12);
	skb->data += 4;
	skb->len -= 4;
	skb->mac_header += 4;
#endif

	if (!buf)
		goto error;


#ifdef HEADER_MODE
	/* prepend the tag */
	*((__be16 *) buf) = cpu_to_be16(
		((vid << MV_HEADER_VLAN_S) & MV_HEADER_VLAN_M) |
		((priv->vlans[vid] << MV_HEADER_PORTS_S) & MV_HEADER_PORTS_M)
	);
#else
	/* append the tag */
	*((__be32 *) buf) = FUNC3((
		(MV_TRAILER_OVERRIDE << MV_TRAILER_FLAGS_S) |
		((priv->vlans[vid] & MV_TRAILER_PORTS_M) << MV_TRAILER_PORTS_S)
	));
#endif

	return skb;

error_expand:
	if (FUNC6())
		FUNC7("%s: failed to expand/update skb for the switch\n", dev->name);

error:
	/* any errors? drop the packet! */
	FUNC4(skb);
	return NULL;
}