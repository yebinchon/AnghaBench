
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int xcb_timestamp_t ;
typedef int xcb_randr_output_t ;
struct TYPE_9__ {int config_timestamp; } ;
typedef TYPE_1__ xcb_randr_get_screen_resources_current_reply_t ;
typedef int xcb_randr_get_screen_resources_current_cookie_t ;
typedef int xcb_randr_get_output_primary_cookie_t ;
typedef int xcb_randr_get_output_info_reply_t ;
typedef int xcb_randr_get_output_info_cookie_t ;
struct TYPE_10__ {int output; } ;


 int DLOG (char*,...) ;
 int ELOG (char*) ;
 int FREE (TYPE_1__*) ;
 int conn ;
 int free (int *) ;
 int handle_output (int ,int ,int *,int const,TYPE_1__*) ;
 TYPE_5__* primary ;
 int root ;
 int xcb_randr_get_output_info (int ,int ,int const) ;
 int * xcb_randr_get_output_info_reply (int ,int ,int *) ;
 int xcb_randr_get_output_primary (int ,int ) ;
 TYPE_5__* xcb_randr_get_output_primary_reply (int ,int ,int *) ;
 int xcb_randr_get_screen_resources_current (int ,int ) ;
 int * xcb_randr_get_screen_resources_current_outputs (TYPE_1__*) ;
 int xcb_randr_get_screen_resources_current_outputs_length (TYPE_1__*) ;
 TYPE_1__* xcb_randr_get_screen_resources_current_reply (int ,int ,int *) ;

__attribute__((used)) static void randr_query_outputs_14(void) {
    DLOG("Querying outputs using RandR ≤ 1.4\n");


    xcb_randr_get_screen_resources_current_cookie_t rcookie;
    rcookie = xcb_randr_get_screen_resources_current(conn, root);
    xcb_randr_get_output_primary_cookie_t pcookie;
    pcookie = xcb_randr_get_output_primary(conn, root);

    if ((primary = xcb_randr_get_output_primary_reply(conn, pcookie, ((void*)0))) == ((void*)0))
        ELOG("Could not get RandR primary output\n");
    else
        DLOG("primary output is %08x\n", primary->output);

    xcb_randr_get_screen_resources_current_reply_t *res =
        xcb_randr_get_screen_resources_current_reply(conn, rcookie, ((void*)0));
    if (res == ((void*)0)) {
        ELOG("Could not query screen resources.\n");
        return;
    }



    const xcb_timestamp_t cts = res->config_timestamp;

    const int len = xcb_randr_get_screen_resources_current_outputs_length(res);


    xcb_randr_output_t *randr_outputs = xcb_randr_get_screen_resources_current_outputs(res);


    xcb_randr_get_output_info_cookie_t ocookie[len];
    for (int i = 0; i < len; i++)
        ocookie[i] = xcb_randr_get_output_info(conn, randr_outputs[i], cts);


    for (int i = 0; i < len; i++) {
        xcb_randr_get_output_info_reply_t *output;

        if ((output = xcb_randr_get_output_info_reply(conn, ocookie[i], ((void*)0))) == ((void*)0))
            continue;

        handle_output(conn, randr_outputs[i], output, cts, res);
        free(output);
    }

    FREE(res);
}
