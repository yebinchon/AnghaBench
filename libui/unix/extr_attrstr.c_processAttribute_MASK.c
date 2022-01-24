#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uiUnderlineColor ;
typedef  int /*<<< orphan*/  uiOpenTypeFeatures ;
typedef  int /*<<< orphan*/  uiForEach ;
typedef  int /*<<< orphan*/  uiAttributedString ;
typedef  int /*<<< orphan*/  uiAttribute ;
struct foreachParams {int dummy; } ;
typedef  int guint16 ;
struct TYPE_4__ {int /*<<< orphan*/  str; } ;
typedef  int /*<<< orphan*/  PangoUnderline ;
typedef  TYPE_1__ GString ;

/* Variables and functions */
 int /*<<< orphan*/  PANGO_UNDERLINE_DOUBLE ; 
 int /*<<< orphan*/  PANGO_UNDERLINE_ERROR ; 
 int /*<<< orphan*/  PANGO_UNDERLINE_NONE ; 
 int /*<<< orphan*/  PANGO_UNDERLINE_SINGLE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (struct foreachParams*,size_t,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/  const*,double*,double*,double*,double*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/  const*) ; 
 int FUNC15 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/  const*) ; 
#define  uiAttributeTypeBackground 145 
#define  uiAttributeTypeColor 144 
#define  uiAttributeTypeFamily 143 
#define  uiAttributeTypeFeatures 142 
#define  uiAttributeTypeItalic 141 
#define  uiAttributeTypeSize 140 
#define  uiAttributeTypeStretch 139 
#define  uiAttributeTypeUnderline 138 
#define  uiAttributeTypeUnderlineColor 137 
#define  uiAttributeTypeWeight 136 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,double*,double*,double*,double*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  uiForEachContinue ; 
#define  uiUnderlineColorAuxiliary 135 
#define  uiUnderlineColorCustom 134 
#define  uiUnderlineColorGrammar 133 
#define  uiUnderlineColorSpelling 132 
#define  uiUnderlineDouble 131 
#define  uiUnderlineNone 130 
#define  uiUnderlineSingle 129 
#define  uiUnderlineSuggestion 128 
 int /*<<< orphan*/  FUNC22 (int) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC26 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static uiForEach FUNC29(const uiAttributedString *s, const uiAttribute *attr, size_t start, size_t end, void *data)
{
	struct foreachParams *p = (struct foreachParams *) data;
	double r, g, b, a;
	PangoUnderline underline;
	uiUnderlineColor colorType;
	const uiOpenTypeFeatures *features;
	GString *featurestr;

	switch (FUNC15(attr)) {
	case uiAttributeTypeFamily:
		FUNC0(p, start, end,
			FUNC4(FUNC13(attr)));
		break;
	case uiAttributeTypeSize:
		FUNC0(p, start, end,
			FUNC6(FUNC1(FUNC17(attr))));
		break;
	case uiAttributeTypeWeight:
		// TODO reverse the misalignment from drawtext.c if it is corrected 
		FUNC0(p, start, end,
			FUNC11(FUNC28(FUNC21(attr))));
		break;
	case uiAttributeTypeItalic:
		FUNC0(p, start, end,
			FUNC8(FUNC25(FUNC16(attr))));
		break;
	case uiAttributeTypeStretch:
		FUNC0(p, start, end,
			FUNC7(FUNC27(FUNC18(attr))));
		break;
	case uiAttributeTypeColor:
		FUNC12(attr, &r, &g, &b, &a);
		FUNC0(p, start, end,
			FUNC5(
				(guint16) (r * 65535.0),
				(guint16) (g * 65535.0),
				(guint16) (b * 65535.0)));
		FUNC0(p, start, end,
			FUNC24(
				(guint16) (a * 65535.0)));
		break;
	case uiAttributeTypeBackground:
		// TODO make sure this works properly with line paragraph spacings (after figuring out what that means, of course)
		FUNC12(attr, &r, &g, &b, &a);
		FUNC0(p, start, end,
			FUNC3(
				(guint16) (r * 65535.0),
				(guint16) (g * 65535.0),
				(guint16) (b * 65535.0)));
		FUNC0(p, start, end,
			FUNC22(
				(guint16) (a * 65535.0)));
		break;
	case uiAttributeTypeUnderline:
		switch (FUNC19(attr)) {
		case uiUnderlineNone:
			underline = PANGO_UNDERLINE_NONE;
			break;
		case uiUnderlineSingle:
			underline = PANGO_UNDERLINE_SINGLE;
			break;
		case uiUnderlineDouble:
			underline = PANGO_UNDERLINE_DOUBLE;
			break;
		case uiUnderlineSuggestion:
			underline = PANGO_UNDERLINE_ERROR;
			break;
		}
		FUNC0(p, start, end,
			FUNC10(underline));
		break;
	case uiAttributeTypeUnderlineColor:
		FUNC20(attr, &colorType, &r, &g, &b, &a);
		switch (colorType) {
		case uiUnderlineColorCustom:
			FUNC0(p, start, end,
				FUNC9(
					(guint16) (r * 65535.0),
					(guint16) (g * 65535.0),
					(guint16) (b * 65535.0)));
			break;
		case uiUnderlineColorSpelling:
			// TODO GtkTextView style property error-underline-color
			FUNC0(p, start, end,
				FUNC9(65535, 0, 0));
			break;
		case uiUnderlineColorGrammar:
			// TODO find a more appropriate color
			FUNC0(p, start, end,
				FUNC9(0, 65535, 0));
			break;
		case uiUnderlineColorAuxiliary:
			// TODO find a more appropriate color
			FUNC0(p, start, end,
				FUNC9(0, 0, 65535));
			break;
		}
		break;
	case uiAttributeTypeFeatures:
		// only generate an attribute if the features object is not NULL
		// TODO state that this is allowed
		features = FUNC14(attr);
		if (features == NULL)
			break;
		featurestr = FUNC26(features);
		FUNC0(p, start, end,
			FUNC23(featurestr->str));
		FUNC2(featurestr, TRUE);
		break;
	default:
		// TODO complain
		;
	}
	return uiForEachContinue;
}