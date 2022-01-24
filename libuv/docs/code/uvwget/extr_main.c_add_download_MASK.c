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
typedef  char const FILE ;
typedef  int /*<<< orphan*/  CURL ;

/* Variables and functions */
 int /*<<< orphan*/  CURLOPT_URL ; 
 int /*<<< orphan*/  CURLOPT_WRITEDATA ; 
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  curl_handle ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 int /*<<< orphan*/  stderr ; 

void FUNC6(const char *url, int num) {
    char filename[50];
    FUNC5(filename, "%d.download", num);
    FILE *file;

    file = FUNC3(filename, "w");
    if (file == NULL) {
        FUNC4(stderr, "Error opening %s\n", filename);
        return;
    }

    CURL *handle = FUNC0();
    FUNC1(handle, CURLOPT_WRITEDATA, file);
    FUNC1(handle, CURLOPT_URL, url);
    FUNC2(curl_handle, handle);
    FUNC4(stderr, "Added download %s -> %s\n", url, filename);
}