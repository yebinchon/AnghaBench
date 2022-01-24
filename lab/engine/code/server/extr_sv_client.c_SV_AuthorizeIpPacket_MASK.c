#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  netadr_t ;
struct TYPE_5__ {int challenge; int /*<<< orphan*/  adr; int /*<<< orphan*/  clientChallenge; int /*<<< orphan*/  pingTime; } ;
typedef  TYPE_1__ challenge_t ;
struct TYPE_7__ {int /*<<< orphan*/  integer; } ;
struct TYPE_6__ {int /*<<< orphan*/  time; TYPE_1__* challenges; int /*<<< orphan*/  authorizeAddress; } ;

/* Variables and functions */
 char* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int MAX_CHALLENGES ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  NS_SERVER ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int FUNC6 (char*) ; 
 TYPE_3__* com_protocol ; 
 TYPE_2__ svs ; 

void FUNC7( netadr_t from ) {
	int		challenge;
	int		i;
	char	*s;
	char	*r;
	challenge_t *challengeptr;

	if ( !FUNC3( from, svs.authorizeAddress ) ) {
		FUNC2( "SV_AuthorizeIpPacket: not from authorize server\n" );
		return;
	}

	challenge = FUNC6( FUNC0( 1 ) );

	for (i = 0 ; i < MAX_CHALLENGES ; i++) {
		if ( svs.challenges[i].challenge == challenge ) {
			break;
		}
	}
	if ( i == MAX_CHALLENGES ) {
		FUNC2( "SV_AuthorizeIpPacket: challenge not found\n" );
		return;
	}
	
	challengeptr = &svs.challenges[i];

	// send a packet back to the original client
	challengeptr->pingTime = svs.time;
	s = FUNC0( 2 );
	r = FUNC0( 3 );			// reason

	if ( !FUNC5( s, "demo" ) ) {
		// they are a demo client trying to connect to a real server
		FUNC4( NS_SERVER, challengeptr->adr, "print\nServer is not a demo server\n" );
		// clear the challenge record so it won't timeout and let them through
		FUNC1( challengeptr, 0, sizeof( *challengeptr ) );
		return;
	}
	if ( !FUNC5( s, "accept" ) ) {
		FUNC4(NS_SERVER, challengeptr->adr,
			"challengeResponse %d %d %d", challengeptr->challenge, challengeptr->clientChallenge, com_protocol->integer);
		return;
	}
	if ( !FUNC5( s, "unknown" ) ) {
		if (!r) {
			FUNC4( NS_SERVER, challengeptr->adr, "print\nAwaiting CD key authorization\n" );
		} else {
			FUNC4( NS_SERVER, challengeptr->adr, "print\n%s\n", r);
		}
		// clear the challenge record so it won't timeout and let them through
		FUNC1( challengeptr, 0, sizeof( *challengeptr ) );
		return;
	}

	// authorization failed
	if (!r) {
		FUNC4( NS_SERVER, challengeptr->adr, "print\nSomeone is using this CD Key\n" );
	} else {
		FUNC4( NS_SERVER, challengeptr->adr, "print\n%s\n", r );
	}

	// clear the challenge record so it won't timeout and let them through
	FUNC1( challengeptr, 0, sizeof(*challengeptr) );
}