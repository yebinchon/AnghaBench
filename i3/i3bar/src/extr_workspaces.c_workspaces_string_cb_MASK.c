#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ws_num ;
struct workspaces_json_params {char* cur_key; TYPE_4__* workspaces_walk; } ;
struct TYPE_5__ {int /*<<< orphan*/  workspaces; } ;
typedef  TYPE_1__ i3_output ;
struct TYPE_7__ {scalar_t__ num; TYPE_1__* output; void* name; int /*<<< orphan*/  name_width; int /*<<< orphan*/  canonical_name; } ;
struct TYPE_6__ {scalar_t__ strip_ws_numbers; scalar_t__ strip_ws_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ ) ; 
 TYPE_3__ config ; 
 TYPE_1__* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 void* FUNC5 (char*) ; 
 void* FUNC6 (char const*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (void*) ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 
 int /*<<< orphan*/  FUNC9 (char**,char*,size_t,unsigned char const*) ; 
 int /*<<< orphan*/  FUNC10 (char*,int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (char const*,size_t) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*) ; 
 size_t FUNC13 (char const*,char*) ; 
 int /*<<< orphan*/  tailq ; 

__attribute__((used)) static int FUNC14(void *params_, const unsigned char *val, size_t len) {
    struct workspaces_json_params *params = (struct workspaces_json_params *)params_;

    if (!FUNC12(params->cur_key, "name")) {
        const char *ws_name = (const char *)val;
        params->workspaces_walk->canonical_name = FUNC11(ws_name, len);

        if ((config.strip_ws_numbers || config.strip_ws_name) && params->workspaces_walk->num >= 0) {
            /* Special case: strip off the workspace number/name */
            static char ws_num[10];

            FUNC10(ws_num, sizeof(ws_num), "%d", params->workspaces_walk->num);

            /* Calculate the length of the number str in the name */
            size_t offset = FUNC13(ws_name, ws_num);

            /* Also strip off the conventional ws name delimiter */
            if (offset && ws_name[offset] == ':')
                offset += 1;

            if (config.strip_ws_numbers) {
                /* Offset may be equal to length, in which case display the number */
                params->workspaces_walk->name = (offset < len
                                                     ? FUNC6(ws_name + offset, len - offset)
                                                     : FUNC5(ws_num));
            } else {
                params->workspaces_walk->name = FUNC5(ws_num);
            }
        } else {
            /* Default case: just save the name */
            params->workspaces_walk->name = FUNC6(ws_name, len);
        }

        /* Save its rendered width */
        params->workspaces_walk->name_width =
            FUNC8(params->workspaces_walk->name);

        FUNC0("Got workspace canonical: %s, name: '%s', name_width: %d, glyphs: %zu\n",
             params->workspaces_walk->canonical_name,
             FUNC4(params->workspaces_walk->name),
             params->workspaces_walk->name_width,
             FUNC7(params->workspaces_walk->name));
        FUNC1(params->cur_key);

        return 1;
    }

    if (!FUNC12(params->cur_key, "output")) {
        /* We add the ws to the TAILQ of the output, it belongs to */
        char *output_name = NULL;
        FUNC9(&output_name, "%.*s", len, val);

        i3_output *target = FUNC3(output_name);
        if (target != NULL) {
            params->workspaces_walk->output = target;

            FUNC2(params->workspaces_walk->output->workspaces,
                              params->workspaces_walk,
                              tailq);
        }

        FUNC1(output_name);
        return 1;
    }

    return 0;
}