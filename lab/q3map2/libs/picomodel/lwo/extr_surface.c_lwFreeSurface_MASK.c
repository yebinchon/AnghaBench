#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_9__ ;
typedef  struct TYPE_27__   TYPE_8__ ;
typedef  struct TYPE_26__   TYPE_7__ ;
typedef  struct TYPE_25__   TYPE_6__ ;
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;
typedef  struct TYPE_19__   TYPE_13__ ;
typedef  struct TYPE_18__   TYPE_12__ ;
typedef  struct TYPE_17__   TYPE_11__ ;
typedef  struct TYPE_16__   TYPE_10__ ;

/* Type definitions */
struct TYPE_18__ {int /*<<< orphan*/  tex; } ;
struct TYPE_17__ {int /*<<< orphan*/  tex; } ;
struct TYPE_16__ {int /*<<< orphan*/  tex; } ;
struct TYPE_27__ {int /*<<< orphan*/  tex; } ;
struct TYPE_28__ {TYPE_8__ val; } ;
struct TYPE_25__ {int /*<<< orphan*/  tex; } ;
struct TYPE_26__ {TYPE_6__ val; } ;
struct TYPE_24__ {int /*<<< orphan*/  tex; } ;
struct TYPE_23__ {int /*<<< orphan*/  tex; } ;
struct TYPE_22__ {int /*<<< orphan*/  tex; } ;
struct TYPE_21__ {int /*<<< orphan*/  tex; } ;
struct TYPE_20__ {int /*<<< orphan*/  tex; } ;
struct TYPE_19__ {TYPE_12__ bump; TYPE_11__ translucency; TYPE_10__ eta; TYPE_9__ transparency; TYPE_7__ reflection; TYPE_5__ glossiness; TYPE_4__ specularity; TYPE_3__ diffuse; TYPE_2__ luminosity; TYPE_1__ color; int /*<<< orphan*/  shader; struct TYPE_19__* srcname; struct TYPE_19__* name; } ;
typedef  TYPE_13__ lwSurface ;
typedef  int /*<<< orphan*/  ListFreeFunc ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_13__*) ; 
 scalar_t__ lwFreePlugin ; 
 scalar_t__ lwFreeTexture ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2( lwSurface *surf ){
	if ( surf ) {
		if ( surf->name ) {
			FUNC0( surf->name );
		}
		if ( surf->srcname ) {
			FUNC0( surf->srcname );
		}

		FUNC1( surf->shader, (ListFreeFunc) lwFreePlugin );

		FUNC1( surf->color.tex, (ListFreeFunc) lwFreeTexture );
		FUNC1( surf->luminosity.tex, (ListFreeFunc) lwFreeTexture );
		FUNC1( surf->diffuse.tex, (ListFreeFunc) lwFreeTexture );
		FUNC1( surf->specularity.tex, (ListFreeFunc) lwFreeTexture );
		FUNC1( surf->glossiness.tex, (ListFreeFunc) lwFreeTexture );
		FUNC1( surf->reflection.val.tex, (ListFreeFunc) lwFreeTexture );
		FUNC1( surf->transparency.val.tex, (ListFreeFunc) lwFreeTexture );
		FUNC1( surf->eta.tex, (ListFreeFunc) lwFreeTexture );
		FUNC1( surf->translucency.tex, (ListFreeFunc) lwFreeTexture );
		FUNC1( surf->bump.tex, (ListFreeFunc) lwFreeTexture );

		FUNC0( surf );
	}
}