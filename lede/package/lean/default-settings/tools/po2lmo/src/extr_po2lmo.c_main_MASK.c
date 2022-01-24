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
typedef  int /*<<< orphan*/  val ;
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  tmp ;
struct TYPE_2__ {int offset; int length; scalar_t__ val_id; scalar_t__ key_id; } ;
typedef  TYPE_1__ lmo_entry_t ;
typedef  int /*<<< orphan*/  line ;
typedef  int /*<<< orphan*/  key ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (void*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int,int /*<<< orphan*/ *) ; 
 void* FUNC12 (void*,int) ; 
 scalar_t__ FUNC13 (char*,int) ; 
 int /*<<< orphan*/  FUNC14 (char*,char*) ; 
 int FUNC15 (char*) ; 
 char* FUNC16 (char*,char*) ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 
 int /*<<< orphan*/  FUNC18 (char*) ; 

int FUNC19(int argc, char *argv[])
{
	char line[4096];
	char key[4096];
	char val[4096];
	char tmp[4096];
	int state  = 0;
	int offset = 0;
	int length = 0;
	int n_entries = 0;
	void *array = NULL;
	lmo_entry_t *entry = NULL;
	uint32_t key_id, val_id;

	FILE *in;
	FILE *out;

	if( (argc != 3) || ((in = FUNC6(argv[1], "r")) == NULL) || ((out = FUNC6(argv[2], "w")) == NULL) )
		FUNC18(argv[0]);

	FUNC8(line, 0, sizeof(key));
	FUNC8(key, 0, sizeof(val));
	FUNC8(val, 0, sizeof(val));

	while( (NULL != FUNC4(line, sizeof(line), in)) || (state >= 2 && FUNC3(in)) )
	{
		if( state == 0 && FUNC16(line, "msgid \"") == line )
		{
			switch(FUNC1(line, key, sizeof(key)))
			{
				case -1:
					FUNC0("Syntax error in msgid");
				case 0:
					state = 1;
					break;
				default:
					state = 2;
			}
		}
		else if( state == 1 || state == 2 )
		{
			if( FUNC16(line, "msgstr \"") == line || state == 2 )
			{
				switch(FUNC1(line, val, sizeof(val)))
				{
					case -1:
						state = 4;
						break;
					default:
						state = 3;
				}
			}
			else
			{
				switch(FUNC1(line, tmp, sizeof(tmp)))
				{
					case -1:
						state = 2;
						break;
					default:
						FUNC14(key, tmp);
				}
			}
		}
		else if( state == 3 )
		{
			switch(FUNC1(line, tmp, sizeof(tmp)))
			{
				case -1:
					state = 4;
					break;
				default:
					FUNC14(val, tmp);
			}
		}

		if( state == 4 )
		{
			if( FUNC15(key) > 0 && FUNC15(val) > 0 )
			{
				key_id = FUNC13(key, FUNC15(key));
				val_id = FUNC13(val, FUNC15(val));

				if( key_id != val_id )
				{
					n_entries++;
					array = FUNC12(array, n_entries * sizeof(lmo_entry_t));
					entry = (lmo_entry_t *)array + n_entries - 1;

					if (!array)
						FUNC0("Out of memory");

					entry->key_id = key_id;
					entry->val_id = val_id;
					entry->offset = offset;
					entry->length = FUNC15(val);

					length = FUNC15(val) + ((4 - (FUNC15(val) % 4)) % 4);

					FUNC9(val, length, 1, out);
					offset += length;
				}
			}

			state = 0;
			FUNC8(key, 0, sizeof(key));
			FUNC8(val, 0, sizeof(val));
		}

		FUNC8(line, 0, sizeof(line));
	}

	FUNC10(array, n_entries, out);

	if( offset > 0 )
	{
		FUNC11(offset, out);
		FUNC7(FUNC5(out));
		FUNC2(out);
	}
	else
	{
		FUNC2(out);
		FUNC17(argv[2]);
	}

	FUNC2(in);
	return(0);
}