#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int priv_data_size; } ;
struct TYPE_7__ {void* priv_data; TYPE_2__* prot; } ;
typedef  TYPE_1__ IjkURLContext ;

/* Variables and functions */
 void* FUNC0 (int,int) ; 
 TYPE_2__ ijkio_androidio_protocol ; 
 TYPE_2__ ijkio_cache_protocol ; 
 TYPE_2__ ijkio_ffio_protocol ; 
 TYPE_2__ ijkio_httphook_protocol ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*,int /*<<< orphan*/ ) ; 

int FUNC3(IjkURLContext **ph, const char *url) {
    if (!ph) {
        return -1;
    }

    IjkURLContext *h = NULL;
    if (!FUNC2(url, "cache:", FUNC1("cache:"))) {
        h = (IjkURLContext *)FUNC0(1, sizeof(IjkURLContext));
        h->prot = &ijkio_cache_protocol;
        h->priv_data = FUNC0(1, ijkio_cache_protocol.priv_data_size);
    } else if (!FUNC2(url, "ffio:", FUNC1("ffio:"))) {
        h = (IjkURLContext *)FUNC0(1, sizeof(IjkURLContext));
        h->prot = &ijkio_ffio_protocol;
        h->priv_data = FUNC0(1, ijkio_ffio_protocol.priv_data_size);
    } else if (!FUNC2(url, "httphook:", FUNC1("httphook:"))) {
        h = (IjkURLContext *)FUNC0(1, sizeof(IjkURLContext));
        h->prot = &ijkio_httphook_protocol;
        h->priv_data = FUNC0(1, ijkio_httphook_protocol.priv_data_size);
    }
#ifdef __ANDROID__
      else if (!strncmp(url, "androidio:", strlen("androidio:"))) {
        h = (IjkURLContext *)calloc(1, sizeof(IjkURLContext));
        h->prot = &ijkio_androidio_protocol;
        h->priv_data = calloc(1, ijkio_androidio_protocol.priv_data_size);
    }
#endif
      else {
        return -1;
    }

    *ph = h;

    return 0;
}