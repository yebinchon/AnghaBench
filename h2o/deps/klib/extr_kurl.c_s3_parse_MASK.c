#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  time_t ;
struct tm {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  auth; int /*<<< orphan*/  date; int /*<<< orphan*/  url; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ s3aux_t ;
struct TYPE_6__ {int /*<<< orphan*/  s; scalar_t__ l; scalar_t__ m; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_2__ kstring_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct tm*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int,TYPE_2__*) ; 
 char* FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,int /*<<< orphan*/ ) ; 
 int FUNC5 (char const*) ; 
 char const* FUNC6 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

s3aux_t FUNC8(const char *url, const char *_id, const char *_secret, const char *fn_secret)
{
	const char *id, *secret, *bucket, *obj;
	char *id_secret = 0, date[64], sig[29];
	time_t t;
	struct tm tmt;
	s3aux_t a = {0,0};
	kstring_t str = {0,0,0};
	// parse URL
	if (FUNC6(url, "s3://") != url) return a;
	bucket = url + 5;
	for (obj = bucket; *obj && *obj != '/'; ++obj);
	if (*obj == 0) return a; // no object
	// acquire AWS credential and time
	if (_id == 0 || _secret == 0) {
		id_secret = FUNC2(fn_secret);
		if (id_secret == 0) return a; // fail to read the AWS credential
		id = id_secret;
		secret = id_secret + FUNC5(id) + 1;
	} else id = _id, secret = _secret;
	// compose URL for curl
	FUNC1("https://", 8, &str);
	FUNC1(bucket, obj - bucket, &str);
	FUNC1(".s3.amazonaws.com", 17, &str);
	FUNC1(obj, FUNC5(obj), &str);
	a.url = str.s;
	// compose the Date line
	str.l = str.m = 0; str.s = 0;
	t = FUNC7(0);
	FUNC4(date, 64, "%a, %d %b %Y %H:%M:%S +0000", FUNC0(&t, &tmt));
	FUNC1("Date: ", 6, &str);
	FUNC1(date, FUNC5(date), &str);
	a.date = str.s;
	// compose the string to sign and sign it
	str.l = str.m = 0; str.s = 0;
	FUNC1("GET\n\n\n", 6, &str);
	FUNC1(date, FUNC5(date), &str);
	FUNC1("\n", 1, &str);
	FUNC1(bucket-1, FUNC5(bucket-1), &str);
	FUNC3(secret, str.s, sig);
	// compose the Authorization line
	str.l = 0;
	FUNC1("Authorization: AWS ", 19, &str);
	FUNC1(id, FUNC5(id), &str);
	FUNC1(":", 1, &str);
	FUNC1(sig, FUNC5(sig), &str);
	a.auth = str.s;
//	printf("curl -H '%s' -H '%s' %s\n", a.date, a.auth, a.url);
	return a;
}