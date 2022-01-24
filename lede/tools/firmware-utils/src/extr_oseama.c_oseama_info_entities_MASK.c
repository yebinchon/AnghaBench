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
struct seama_entity_header {int /*<<< orphan*/  imagesize; int /*<<< orphan*/  metasize; int /*<<< orphan*/  magic; } ;
typedef  struct seama_entity_header uint8_t ;
typedef  int /*<<< orphan*/  hdr ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int SEAMA_MAGIC ; 
 int /*<<< orphan*/  SEEK_CUR ; 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int entity_idx ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,size_t,...) ; 
 size_t FUNC3 (struct seama_entity_header*,int,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ) ; 
 char* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC7 (char*) ; 

__attribute__((used)) static int FUNC8(FILE *seama) {
	struct seama_entity_header hdr;
	size_t bytes, metasize, imagesize;
	uint8_t buf[1024];
	char *end, *tmp;
	int i = 0;
	int err = 0;

	while ((bytes = FUNC3(&hdr, 1, sizeof(hdr), seama)) == sizeof(hdr)) {
		if (FUNC1(hdr.magic) != SEAMA_MAGIC) {
			FUNC2(stderr, "Invalid Seama magic: 0x%08x\n", FUNC1(hdr.magic));
			err =  -EINVAL;
			goto err_out;
		}
		metasize = FUNC0(hdr.metasize);
		imagesize = FUNC1(hdr.imagesize);

		if (entity_idx >= 0 && i != entity_idx) {
			FUNC4(seama, metasize + imagesize, SEEK_CUR);
			i++;
			continue;
		}

		if (metasize >= sizeof(buf)) {
			FUNC2(stderr, "Too small buffer (%zu B) to read all meta info (%zd B)\n", sizeof(buf), metasize);
			err =  -EINVAL;
			goto err_out;
		}

		if (entity_idx < 0)
			FUNC6("\n");
		FUNC6("Entity offset:\t%ld\n", FUNC5(seama) - sizeof(hdr));
		FUNC6("Entity size:\t%zd\n", sizeof(hdr) + metasize + imagesize);
		FUNC6("Meta size:\t%zd\n", metasize);
		FUNC6("Image size:\t%zd\n", imagesize);

		bytes = FUNC3(buf, 1, metasize, seama);
		if (bytes != metasize) {
			FUNC2(stderr, "Couldn't read %zd B of meta\n", metasize);
			err =  -EIO;
			goto err_out;
		}

		end = (char *)&buf[metasize - 1];
		*end = '\0';
		for (tmp = (char *)buf; tmp < end && FUNC7(tmp); tmp += FUNC7(tmp) + 1) {
			FUNC6("Meta entry:\t%s\n", tmp);
		}

		FUNC4(seama, imagesize, SEEK_CUR);
		i++;
	}

err_out:
	return err;
}