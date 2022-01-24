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
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,...) ; 
 size_t FUNC3 (struct seama_entity_header*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 size_t FUNC5 (struct seama_entity_header*,int,size_t,int /*<<< orphan*/ *) ; 
 int FUNC6 (int,size_t) ; 
 int /*<<< orphan*/  out_path ; 
 char* seama_path ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC7(FILE *seama, FILE *out) {
	struct seama_entity_header hdr;
	size_t bytes, metasize, imagesize, length;
	uint8_t buf[1024];
	int i = 0;
	int err = 0;

	while ((bytes = FUNC3(&hdr, 1, sizeof(hdr), seama)) == sizeof(hdr)) {
		if (FUNC1(hdr.magic) != SEAMA_MAGIC) {
			FUNC2(stderr, "Invalid Seama magic: 0x%08x\n", FUNC1(hdr.magic));
			err =  -EINVAL;
			break;
		}
		metasize = FUNC0(hdr.metasize);
		imagesize = FUNC1(hdr.imagesize);

		if (i != entity_idx) {
			FUNC4(seama, metasize + imagesize, SEEK_CUR);
			i++;
			continue;
		}

		FUNC4(seama, -sizeof(hdr), SEEK_CUR);

		length = sizeof(hdr) + metasize + imagesize;
		while ((bytes = FUNC3(buf, 1, FUNC6(sizeof(buf), length), seama)) > 0) {
			if (FUNC5(buf, 1, bytes, out) != bytes) {
				FUNC2(stderr, "Couldn't write %zu B to %s\n", bytes, out_path);
				err = -EIO;
				break;
			}
			length -= bytes;
		}

		if (length) {
			FUNC2(stderr, "Couldn't extract whole entity %d from %s (%zu B left)\n", entity_idx, seama_path, length);
			err = -EIO;
			break;
		}

		break;
	}

	return err;
}