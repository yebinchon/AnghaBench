#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ type; char* string; } ;
typedef  TYPE_1__ token_t ;
typedef  int /*<<< orphan*/  source_t ;
struct TYPE_8__ {char* string; struct TYPE_8__* next; } ;
typedef  TYPE_2__ bot_randomstring_t ;
struct TYPE_9__ {char* string; TYPE_2__* firstrandomstring; scalar_t__ numstrings; struct TYPE_9__* next; } ;
typedef  TYPE_3__ bot_randomlist_t ;
struct TYPE_10__ {int /*<<< orphan*/  (* Print ) (int /*<<< orphan*/ ,char*,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  BOTFILESBASEFOLDER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/ * FUNC3 (char*) ; 
 int MAX_MESSAGE_SIZE ; 
 size_t FUNC4 (size_t,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PRT_ERROR ; 
 int /*<<< orphan*/  PRT_MESSAGE ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,char*) ; 
 int FUNC10 () ; 
 scalar_t__ TT_NAME ; 
 TYPE_4__ botimport ; 
 int /*<<< orphan*/  FUNC11 (char*,char*) ; 
 int FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*,int) ; 

bot_randomlist_t *FUNC16(char *filename)
{
	int pass, size;
	char *ptr = NULL, chatmessagestring[MAX_MESSAGE_SIZE];
	source_t *source;
	token_t token;
	bot_randomlist_t *randomlist, *lastrandom, *random;
	bot_randomstring_t *randomstring;

#ifdef DEBUG
	int starttime = Sys_MilliSeconds();
#endif //DEBUG

	size = 0;
	randomlist = NULL;
	random = NULL;
	//the synonyms are parsed in two phases
	for (pass = 0; pass < 2; pass++)
	{
		//
		if (pass && size) ptr = (char *) FUNC2(size);
		//
		FUNC8(BOTFILESBASEFOLDER);
		source = FUNC3(filename);
		if (!source)
		{
			botimport.Print(PRT_ERROR, "counldn't load %s\n", filename);
			return NULL;
		} //end if
		//
		randomlist = NULL; //list
		lastrandom = NULL; //last
		//
		while(FUNC7(source, &token))
		{
			size_t len;
			if (token.type != TT_NAME)
			{
				FUNC9(source, "unknown random %s", token.string);
				FUNC1(source);
				return NULL;
			} //end if
			len = FUNC12(token.string) + 1;
			len = FUNC4(len, sizeof(long));
			size += sizeof(bot_randomlist_t) + len;
			if (pass && ptr)
			{
				random = (bot_randomlist_t *) ptr;
				ptr += sizeof(bot_randomlist_t);
				random->string = ptr;
				ptr += len;
				FUNC11(random->string, token.string);
				random->firstrandomstring = NULL;
				random->numstrings = 0;
				//
				if (lastrandom) lastrandom->next = random;
				else randomlist = random;
				lastrandom = random;
			} //end if
			if (!FUNC6(source, "=") ||
				!FUNC6(source, "{"))
			{
				FUNC1(source);
				return NULL;
			} //end if
			while(!FUNC5(source, "}"))
			{
				if (!FUNC0(source, chatmessagestring))
				{
					FUNC1(source);
					return NULL;
				} //end if
				len = FUNC12(chatmessagestring) + 1;
				len = FUNC4(len, sizeof(long));
				size += sizeof(bot_randomstring_t) + len;
				if (pass && ptr)
				{
					randomstring = (bot_randomstring_t *) ptr;
					ptr += sizeof(bot_randomstring_t);
					randomstring->string = ptr;
					ptr += len;
					FUNC11(randomstring->string, chatmessagestring);
					//
					random->numstrings++;
					randomstring->next = random->firstrandomstring;
					random->firstrandomstring = randomstring;
				} //end if
			} //end while
		} //end while
		//free the source after one pass
		FUNC1(source);
	} //end for
	botimport.Print(PRT_MESSAGE, "loaded %s\n", filename);
	//
#ifdef DEBUG
	botimport.Print(PRT_MESSAGE, "random strings %d msec\n", Sys_MilliSeconds() - starttime);
	//BotDumpRandomStringList(randomlist);
#endif //DEBUG
	//
	return randomlist;
}