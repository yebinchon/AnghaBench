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
typedef  int /*<<< orphan*/  u32 ;
struct shash_desc {int /*<<< orphan*/  tfm; } ;
struct sha1_hmac_ctx {int dbn; } ;

/* Variables and functions */
 int SHA1_HMAC_DBN_TEMP_SIZE ; 
 struct sha1_hmac_ctx* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/ * temp ; 

__attribute__((used)) static int FUNC3(struct shash_desc *desc, u32 const *in)
{
    struct sha1_hmac_ctx *sctx =  FUNC0(desc->tfm);

    FUNC1(&temp[sctx->dbn<<4], in, 64); //dbn workaround
    sctx->dbn += 1;
    
    if ( (sctx->dbn<<4) > SHA1_HMAC_DBN_TEMP_SIZE )
    {
        FUNC2("SHA1_HMAC_DBN_TEMP_SIZE exceeded\n");
    }
   
    return 0;
}