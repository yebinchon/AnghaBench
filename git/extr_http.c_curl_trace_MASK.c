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
typedef  int curl_infotype ;
typedef  int /*<<< orphan*/  CURL ;

/* Variables and functions */
#define  CURLINFO_DATA_IN 134 
#define  CURLINFO_DATA_OUT 133 
#define  CURLINFO_HEADER_IN 132 
#define  CURLINFO_HEADER_OUT 131 
#define  CURLINFO_SSL_DATA_IN 130 
#define  CURLINFO_SSL_DATA_OUT 129 
#define  CURLINFO_TEXT 128 
 int /*<<< orphan*/  FUNC0 (char const*,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (char const*,unsigned char*,size_t,int) ; 
 int /*<<< orphan*/  trace_curl ; 
 int /*<<< orphan*/  trace_curl_data ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char*) ; 

__attribute__((used)) static int FUNC3(CURL *handle, curl_infotype type, char *data, size_t size, void *userp)
{
	const char *text;
	enum { NO_FILTER = 0, DO_FILTER = 1 };

	switch (type) {
	case CURLINFO_TEXT:
		FUNC2(&trace_curl, "== Info: %s", data);
		break;
	case CURLINFO_HEADER_OUT:
		text = "=> Send header";
		FUNC1(text, (unsigned char *)data, size, DO_FILTER);
		break;
	case CURLINFO_DATA_OUT:
		if (trace_curl_data) {
			text = "=> Send data";
			FUNC0(text, (unsigned char *)data, size);
		}
		break;
	case CURLINFO_SSL_DATA_OUT:
		if (trace_curl_data) {
			text = "=> Send SSL data";
			FUNC0(text, (unsigned char *)data, size);
		}
		break;
	case CURLINFO_HEADER_IN:
		text = "<= Recv header";
		FUNC1(text, (unsigned char *)data, size, NO_FILTER);
		break;
	case CURLINFO_DATA_IN:
		if (trace_curl_data) {
			text = "<= Recv data";
			FUNC0(text, (unsigned char *)data, size);
		}
		break;
	case CURLINFO_SSL_DATA_IN:
		if (trace_curl_data) {
			text = "<= Recv SSL data";
			FUNC0(text, (unsigned char *)data, size);
		}
		break;

	default:		/* we ignore unknown types by default */
		return 0;
	}
	return 0;
}