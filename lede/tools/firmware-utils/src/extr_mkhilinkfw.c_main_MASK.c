#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct option {char* member_0; char member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/  const member_1; } ;
typedef  int off_t ;
struct TYPE_2__ {int /*<<< orphan*/  ih_magic; int /*<<< orphan*/  ih_size; } ;
typedef  TYPE_1__ image_header_t ;
typedef  int /*<<< orphan*/  const_DES_cblock ;

/* Variables and functions */
 scalar_t__ DES_KEY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 int IH_MAGIC ; 
 char* MAP_FAILED ; 
 int /*<<< orphan*/  MAP_SHARED ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int PROT_READ ; 
 int PROT_WRITE ; 
 int /*<<< orphan*/  SEEK_CUR ; 
 int /*<<< orphan*/  SEEK_SET ; 
 scalar_t__ STDIN_FILENO ; 
 int STDOUT_FILENO ; 
 int S_IRGRP ; 
 int S_IROTH ; 
 int S_IRUSR ; 
 int S_IWUSR ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int) ; 
 int FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  exit_cleanup ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC11 (scalar_t__,int) ; 
 int FUNC12 (int,char**,char*,struct option*,int*) ; 
 int FUNC13 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*,char*,int) ; 
 int FUNC15 (int,int) ; 
 char* FUNC16 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (char*,int) ; 
#define  no_argument 129 
 int FUNC18 (int /*<<< orphan*/ ) ; 
 int FUNC19 (char*,int /*<<< orphan*/ ) ; 
 char* optarg ; 
#define  required_argument 128 
 int /*<<< orphan*/  schedule ; 
 int /*<<< orphan*/  FUNC20 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC21 (char*,char*) ; 
 char* FUNC22 (int /*<<< orphan*/ ) ; 
 scalar_t__ temp_fd ; 
 int /*<<< orphan*/  FUNC23 () ; 

int FUNC24(int argc, char **argv)
{
	int encrypt_opt = 0;
	int decrypt_opt = 0;
	int input_opt = 0;
	int output_opt = 0;
	char *input_filename = NULL;
	char *output_filename = NULL;
 
	int input_fd;
	int output_fd;
	off_t file_len;
	char *p;
	char buf[sizeof(image_header_t) + 3];
	image_header_t *header;
 
	while (1) {
		static struct option long_options[] = {
			{"encrypt", no_argument,       0, 'e'},
			{"decrypt", no_argument,       0, 'd'},
			{"input",   required_argument, 0, 'i'},
			{"output",  required_argument, 0, 'o'},
			{0,         0,                 0, 0  }
		};
		int option_index = 0;
		int c = FUNC12(argc, argv, "dei:o:",
		                long_options, &option_index);
		if (c == -1)
			break;
 
		switch (c) {
		case 'd':
			decrypt_opt++;
			if (decrypt_opt > 1) {
				FUNC10(stderr, "%s: decrypt may only be specified once\n",
				        argv[0]);
				FUNC20(argv[0]);
			}
			break;
 
		case 'e':
			encrypt_opt++;
			if (encrypt_opt > 1) {
				FUNC10(stderr, "%s: encrypt may only be specified once\n",
				        argv[0]);
				FUNC20(argv[0]);
			}
			break;
 
		case 'i':
			input_opt++;
			if (input_opt > 1) {
				FUNC10(stderr, "%s: only one input file may be specified\n",
				        argv[0]);
				FUNC20(argv[0]);
			}
			if (FUNC21("-", optarg) != 0) {
				input_filename = optarg;
			}
			break;
 
		case 'o':
			output_opt++;
			if (output_opt > 1) {
				FUNC10(stderr, "%s: only one output file may be specified\n",
				        argv[0]);
				FUNC20(argv[0]);
			}
			if (FUNC21("-", optarg) != 0) {
				output_filename = optarg;
			}
			break;
 
		case '?':
			FUNC8(-1);
 
		default:
			FUNC1();
		}
	}
 
	if (decrypt_opt && encrypt_opt) {
		FUNC10(stderr, "%s: decrypt and encrypt may not be used together\n",
		        argv[0]);
		FUNC20(argv[0]);
	}
 
	if (!decrypt_opt && !encrypt_opt) {
		FUNC10(stderr, "%s: neither decrypt or encrypt were specified\n",
		        argv[0]);
		FUNC20(argv[0]);
	}
 
	temp_fd = FUNC9(FUNC23());
	if (temp_fd < 0) {
		FUNC10(stderr, "Can't create temporary file\n");
		FUNC8(EXIT_FAILURE);
	}
 
	FUNC2(exit_cleanup);
	FUNC0((const_DES_cblock *)DES_KEY, &schedule);
 
	if (input_filename) {
		input_fd = FUNC19(input_filename, O_RDONLY);
		if (input_fd < 0) {
			FUNC10(stderr, "Can't open %s for reading: %s\n", input_filename,
			        FUNC22(errno));
			FUNC8(EXIT_FAILURE);
		}
		FUNC4(input_fd, temp_fd);
		FUNC3(input_fd);
	}
	else {
		FUNC4(STDIN_FILENO, temp_fd);
	}
 
	file_len = FUNC13(temp_fd, 0, SEEK_CUR);
	if (file_len < 64) {
		FUNC10(stderr, "Not enough data\n");
		FUNC8(EXIT_FAILURE);
	}
 
	p = FUNC16(0, file_len, PROT_READ|PROT_WRITE, MAP_SHARED, temp_fd, 0);
	if (p == MAP_FAILED) {
		FUNC10(stderr, "mmap failed: %s\n", FUNC22(errno));
		FUNC8(EXIT_FAILURE);
	}	
 
	if (encrypt_opt) {
		header = (image_header_t *)p;
		off_t len = FUNC15(file_len,
		                FUNC18(header->ih_size) + sizeof(image_header_t));
		if (FUNC18(header->ih_magic) != IH_MAGIC) {
			FUNC10(stderr, "Header magic incorrect: "
			        "expected 0x%08X, got 0x%08X\n",
			        IH_MAGIC, FUNC18(header->ih_magic));
			FUNC17(p, file_len);
			FUNC8(EXIT_FAILURE);
		}
		FUNC7(p, len);
		FUNC17(p, file_len);
		if (len != file_len) {
			if (FUNC11(temp_fd, len) < 0) {
				FUNC10(stderr, "ftruncate failed: %s\n", FUNC22(errno));
				FUNC8(EXIT_FAILURE);
			}
		}		
	}
 
	if (decrypt_opt) {
		off_t header_len = FUNC15(file_len, sizeof(image_header_t) + 3);
		FUNC14(buf, p, header_len);
		FUNC6(buf, header_len);
		header = (image_header_t *)buf;
		if (FUNC18(header->ih_magic) != IH_MAGIC) {
			FUNC10(stderr, "Header magic incorrect: "
			        "expected 0x%08X, got 0x%08X\n",
			        IH_MAGIC, FUNC18(header->ih_magic));
			FUNC8(EXIT_FAILURE);
		}
		FUNC6(p, file_len);
		FUNC17(p, file_len);
	}
 
	FUNC13(temp_fd, 0, SEEK_SET);
	if (output_filename) {
		output_fd = FUNC5(output_filename, S_IRUSR|S_IWUSR|S_IRGRP|S_IROTH);
		if (output_fd < 0) {
			FUNC10(stderr, "Can't open %s for writing: %s\n",
			        output_filename, FUNC22(errno));
			FUNC8(EXIT_FAILURE);
		}
		FUNC4(temp_fd, output_fd);
		FUNC3(output_fd);
	}
	else {
		FUNC4(temp_fd, STDOUT_FILENO);
	}
 
	FUNC8(EXIT_SUCCESS);
	return 0;
}