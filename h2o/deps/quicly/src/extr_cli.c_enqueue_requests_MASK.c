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
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct st_stream_data_t {int /*<<< orphan*/ * outfp; } ;
struct TYPE_6__ {struct st_stream_data_t* data; } ;
typedef  TYPE_1__ quicly_stream_t ;
typedef  int /*<<< orphan*/  quicly_conn_t ;
struct TYPE_7__ {char* path; scalar_t__ to_file; } ;

/* Variables and functions */
 int /*<<< orphan*/  INT64_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  enqueue_requests_at ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*,char*) ; 
 int FUNC4 (int /*<<< orphan*/ *,TYPE_1__**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 TYPE_3__* reqs ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC8 (int /*<<< orphan*/ ) ; 
 char* FUNC9 (char*,char) ; 

__attribute__((used)) static void FUNC10(quicly_conn_t *conn)
{
    size_t i;
    int ret;

    for (i = 0; reqs[i].path != NULL; ++i) {
        char req[1024], destfile[1024];
        quicly_stream_t *stream;
        ret = FUNC4(conn, &stream, 0);
        FUNC0(ret == 0);
        FUNC7(req, "GET %s\r\n", reqs[i].path);
        FUNC6(stream, req);
        FUNC5(stream);

        if (reqs[i].to_file) {
            struct st_stream_data_t *stream_data = stream->data;
            FUNC7(destfile, "%s.downloaded", FUNC9(reqs[i].path, '/') + 1);
            stream_data->outfp = FUNC2(destfile, "w");
            if (stream_data->outfp == NULL) {
                FUNC3(stderr, "failed to open destination file:%s:%s\n", reqs[i].path, FUNC8(errno));
                FUNC1(1);
            }
        }
    }
    enqueue_requests_at = INT64_MAX;
}