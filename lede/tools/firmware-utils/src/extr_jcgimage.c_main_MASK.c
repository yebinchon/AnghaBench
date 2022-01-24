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
struct uimage_header {int /*<<< orphan*/  ih_dcrc; } ;
struct jcg_header {int dummy; } ;

/* Variables and functions */
 void* MAP_FAILED ; 
 int /*<<< orphan*/  MAP_SHARED ; 
 size_t MAXSIZE ; 
 int MODE_KR ; 
 int MODE_UIMAGE ; 
 int MODE_UNKNOWN ; 
 int O_CREAT ; 
 int O_RDWR ; 
 int O_TRUNC ; 
 int PROT_READ ; 
 int PROT_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,...) ; 
 int FUNC5 (int,size_t) ; 
 int FUNC6 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC7 (void*,size_t,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct uimage_header*,size_t,size_t) ; 
 void* FUNC9 (int /*<<< orphan*/ *,size_t,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (void*,size_t) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (char*,int,int) ; 
 int FUNC13 (char*,size_t*) ; 
 char* optarg ; 
 int optind ; 
 size_t FUNC14 (int,void*,size_t) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 () ; 

int
FUNC17(int argc, char **argv)
{
	struct jcg_header *jh;
	struct uimage_header *uh;
	int c;
	char *imagefile = NULL;
	char *file1 = NULL;
	char *file2 = NULL;
	char *version = NULL;
	int mode = MODE_UNKNOWN;
	int fdo, fd1, fd2;
	size_t size1, size2, sizeu, sizeo, off1, off2;
	void *map;

	/* Make sure the headers have the right size */
	FUNC0(sizeof(struct jcg_header) == 512);
	FUNC0(sizeof(struct uimage_header) == 64);
	FUNC15();

	while ((c = FUNC6(argc, argv, "o:k:f:u:v:h")) != -1) {
		switch (c) {
		case 'o':
			imagefile = optarg;
			break;
		case 'k':
			if (mode == MODE_UIMAGE) {
				FUNC4(1,"-k cannot be combined with -u");
			}
			mode = MODE_KR;
			file1 = optarg;
			break;
		case 'f':
			if (mode == MODE_UIMAGE) {
				FUNC4(1,"-f cannot be combined with -u");
			}
			mode = MODE_KR;
			file2 = optarg;
			break;
		case 'u':
			if (mode == MODE_KR) {
				FUNC4(1,"-u cannot be combined with -k and -r");
			}
			mode = MODE_UIMAGE;
			file1 = optarg;
			break;
		case 'v':
			version = optarg;
			break;
		case 'h':
		default:
			FUNC16();
		}
	}
	if (optind != argc) {
		FUNC4(1, "illegal arg \"%s\"", argv[optind]);
	}
	if (imagefile == NULL) {
		FUNC4(1, "no output file specified");
	}
	if (mode == MODE_UNKNOWN) {
		FUNC4(1, "specify either -u or -k and -r");
	}
	if (mode == MODE_KR) {
		if (file1 == NULL || file2 == NULL) {
			FUNC4(1,"need -k and -r");
		}
		fd2 = FUNC13(file2, &size2);
	}
	fd1 = FUNC13(file1, &size1);
	if (mode == MODE_UIMAGE) {
		off1 = sizeof(*jh);
		sizeu = size1 + 4;
		sizeo = sizeof(*jh) + sizeu;
	} else {
		off1 = sizeof(*jh) + sizeof(*uh);
		off2 = sizeof(*jh) + sizeof(*uh) + size1;
		sizeu = sizeof(*uh) + size1 + size2;
		sizeo = sizeof(*jh) + sizeu;
	}

	if (sizeo > MAXSIZE) {
		FUNC4(1,"payload too large: %zd > %zd\n", sizeo, MAXSIZE);
	}

	fdo = FUNC12(imagefile, O_RDWR | O_CREAT | O_TRUNC, 00644);
	if (fdo < 0) {
		FUNC3(1, "cannot open \"%s\"", imagefile);
	}

	if (FUNC5(fdo, sizeo) == -1) {
		FUNC3(1, "cannot grow \"%s\" to %zd bytes", imagefile, sizeo);
	}
	map = FUNC9(NULL, sizeo, PROT_READ|PROT_WRITE, MAP_SHARED, fdo, 0);
	uh = map + sizeof(*jh);
	if (map == MAP_FAILED) {
		FUNC3(1, "cannot mmap \"%s\"", imagefile);
	}

	if (FUNC14(fd1, map + off1, size1) != size1) {
		FUNC3(1, "cannot copy %s", file1);
	}

	if (mode == MODE_KR) {
		if (FUNC14(fd2, map+off2, size2) != size2) {
			FUNC3(1, "cannot copy %s", file2);
		}
		FUNC8(uh, size1, size2);
	} else if (mode == MODE_UIMAGE) {
		FUNC2(FUNC11(uh->ih_dcrc), (void*)uh + sizeof(*uh),
			 sizeu - sizeof(*uh));
	}
	FUNC7(map, sizeu, version);
	FUNC10(map, sizeo);
	FUNC1(fdo);
	return 0;
}