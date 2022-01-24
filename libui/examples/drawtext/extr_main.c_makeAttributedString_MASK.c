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
typedef  int /*<<< orphan*/  uiOpenTypeFeatures ;
typedef  int /*<<< orphan*/  uiAttribute ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  attrstr ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/ * FUNC4 (double,double,double,double) ; 
 int /*<<< orphan*/ * FUNC5 (double,double,double,double) ; 
 int /*<<< orphan*/ * FUNC6 (char*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 () ; 
 int /*<<< orphan*/ * FUNC10 (int) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ ,double,double,double,double) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,char,char,char,char,int) ; 
 int /*<<< orphan*/  uiTextItalicItalic ; 
 int /*<<< orphan*/  uiTextStretchCondensed ; 
 int /*<<< orphan*/  uiTextWeightBold ; 
 int /*<<< orphan*/  uiUnderlineColorCustom ; 
 int /*<<< orphan*/  uiUnderlineColorSpelling ; 
 int /*<<< orphan*/  uiUnderlineDouble ; 
 int /*<<< orphan*/  uiUnderlineSingle ; 
 int /*<<< orphan*/  uiUnderlineSuggestion ; 

__attribute__((used)) static void FUNC16(void)
{
	uiAttribute *attr, *attr2;
	uiOpenTypeFeatures *otf;

	attrstr = FUNC3(
		"Drawing strings with libui is done with the uiAttributedString and uiDrawTextLayout objects.\n"
		"uiAttributedString lets you have a variety of attributes: ");

	attr = FUNC6("Courier New");
	FUNC0("font family", attr, NULL);
	FUNC1(attrstr, ", ");

	attr = FUNC10(18);
	FUNC0("font size", attr, NULL);
	FUNC1(attrstr, ", ");

	attr = FUNC14(uiTextWeightBold);
	FUNC0("font weight", attr, NULL);
	FUNC1(attrstr, ", ");

	attr = FUNC8(uiTextItalicItalic);
	FUNC0("font italicness", attr, NULL);
	FUNC1(attrstr, ", ");

	attr = FUNC11(uiTextStretchCondensed);
	FUNC0("font stretch", attr, NULL);
	FUNC1(attrstr, ", ");

	attr = FUNC5(0.75, 0.25, 0.5, 0.75);
	FUNC0("text color", attr, NULL);
	FUNC1(attrstr, ", ");

	attr = FUNC4(0.5, 0.5, 0.25, 0.5);
	FUNC0("text background color", attr, NULL);
	FUNC1(attrstr, ", ");


	attr = FUNC12(uiUnderlineSingle);
	FUNC0("underline style", attr, NULL);
	FUNC1(attrstr, ", ");

	FUNC1(attrstr, "and ");
	attr = FUNC12(uiUnderlineDouble);
	attr2 = FUNC13(uiUnderlineColorCustom, 1.0, 0.0, 0.5, 1.0);
	FUNC0("underline color", attr, attr2);
	FUNC1(attrstr, ". ");

	FUNC1(attrstr, "Furthermore, there are attributes allowing for ");
	attr = FUNC12(uiUnderlineSuggestion);
	attr2 = FUNC13(uiUnderlineColorSpelling, 0, 0, 0, 0);
	FUNC0("special underlines for indicating spelling errors", attr, attr2);
	FUNC1(attrstr, " (and other types of errors) ");

	FUNC1(attrstr, "and control over OpenType features such as ligatures (for instance, ");
	otf = FUNC9();
	FUNC15(otf, 'l', 'i', 'g', 'a', 0);
	attr = FUNC7(otf);
	FUNC0("afford", attr, NULL);
	FUNC1(attrstr, " vs. ");
	FUNC15(otf, 'l', 'i', 'g', 'a', 1);
	attr = FUNC7(otf);
	FUNC0("afford", attr, NULL);
	FUNC2(otf);
	FUNC1(attrstr, ").\n");

	FUNC1(attrstr, "Use the controls opposite to the text to control properties of the text.");
}