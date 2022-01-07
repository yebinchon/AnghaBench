; ModuleID = '/home/carl/AnghaBench/libui/examples/drawtext/extr_main.c_makeAttributedString.c'
source_filename = "/home/carl/AnghaBench/libui/examples/drawtext/extr_main.c_makeAttributedString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [152 x i8] c"Drawing strings with libui is done with the uiAttributedString and uiDrawTextLayout objects.\0AuiAttributedString lets you have a variety of attributes: \00", align 1
@attrstr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"Courier New\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"font family\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"font size\00", align 1
@uiTextWeightBold = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"font weight\00", align 1
@uiTextItalicItalic = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [16 x i8] c"font italicness\00", align 1
@uiTextStretchCondensed = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [13 x i8] c"font stretch\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"text color\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"text background color\00", align 1
@uiUnderlineSingle = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [16 x i8] c"underline style\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"and \00", align 1
@uiUnderlineDouble = common dso_local global i32 0, align 4
@uiUnderlineColorCustom = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [16 x i8] c"underline color\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c". \00", align 1
@.str.14 = private unnamed_addr constant [48 x i8] c"Furthermore, there are attributes allowing for \00", align 1
@uiUnderlineSuggestion = common dso_local global i32 0, align 4
@uiUnderlineColorSpelling = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [50 x i8] c"special underlines for indicating spelling errors\00", align 1
@.str.16 = private unnamed_addr constant [30 x i8] c" (and other types of errors) \00", align 1
@.str.17 = private unnamed_addr constant [69 x i8] c"and control over OpenType features such as ligatures (for instance, \00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"afford\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c" vs. \00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c").\0A\00", align 1
@.str.21 = private unnamed_addr constant [73 x i8] c"Use the controls opposite to the text to control properties of the text.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @makeAttributedString to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @makeAttributedString() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = call i32 @uiNewAttributedString(i8* getelementptr inbounds ([152 x i8], [152 x i8]* @.str, i64 0, i64 0))
  store i32 %4, i32* @attrstr, align 4
  %5 = call i32* @uiNewFamilyAttribute(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i32* %5, i32** %1, align 8
  %6 = load i32*, i32** %1, align 8
  %7 = call i32 @appendWithAttribute(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32* %6, i32* null)
  %8 = load i32, i32* @attrstr, align 4
  %9 = call i32 @uiAttributedStringAppendUnattributed(i32 %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %10 = call i32* @uiNewSizeAttribute(i32 18)
  store i32* %10, i32** %1, align 8
  %11 = load i32*, i32** %1, align 8
  %12 = call i32 @appendWithAttribute(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32* %11, i32* null)
  %13 = load i32, i32* @attrstr, align 4
  %14 = call i32 @uiAttributedStringAppendUnattributed(i32 %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %15 = load i32, i32* @uiTextWeightBold, align 4
  %16 = call i32* @uiNewWeightAttribute(i32 %15)
  store i32* %16, i32** %1, align 8
  %17 = load i32*, i32** %1, align 8
  %18 = call i32 @appendWithAttribute(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32* %17, i32* null)
  %19 = load i32, i32* @attrstr, align 4
  %20 = call i32 @uiAttributedStringAppendUnattributed(i32 %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %21 = load i32, i32* @uiTextItalicItalic, align 4
  %22 = call i32* @uiNewItalicAttribute(i32 %21)
  store i32* %22, i32** %1, align 8
  %23 = load i32*, i32** %1, align 8
  %24 = call i32 @appendWithAttribute(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32* %23, i32* null)
  %25 = load i32, i32* @attrstr, align 4
  %26 = call i32 @uiAttributedStringAppendUnattributed(i32 %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %27 = load i32, i32* @uiTextStretchCondensed, align 4
  %28 = call i32* @uiNewStretchAttribute(i32 %27)
  store i32* %28, i32** %1, align 8
  %29 = load i32*, i32** %1, align 8
  %30 = call i32 @appendWithAttribute(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i32* %29, i32* null)
  %31 = load i32, i32* @attrstr, align 4
  %32 = call i32 @uiAttributedStringAppendUnattributed(i32 %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %33 = call i32* @uiNewColorAttribute(double 7.500000e-01, double 2.500000e-01, double 5.000000e-01, double 7.500000e-01)
  store i32* %33, i32** %1, align 8
  %34 = load i32*, i32** %1, align 8
  %35 = call i32 @appendWithAttribute(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i32* %34, i32* null)
  %36 = load i32, i32* @attrstr, align 4
  %37 = call i32 @uiAttributedStringAppendUnattributed(i32 %36, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %38 = call i32* @uiNewBackgroundAttribute(double 5.000000e-01, double 5.000000e-01, double 2.500000e-01, double 5.000000e-01)
  store i32* %38, i32** %1, align 8
  %39 = load i32*, i32** %1, align 8
  %40 = call i32 @appendWithAttribute(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0), i32* %39, i32* null)
  %41 = load i32, i32* @attrstr, align 4
  %42 = call i32 @uiAttributedStringAppendUnattributed(i32 %41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %43 = load i32, i32* @uiUnderlineSingle, align 4
  %44 = call i32* @uiNewUnderlineAttribute(i32 %43)
  store i32* %44, i32** %1, align 8
  %45 = load i32*, i32** %1, align 8
  %46 = call i32 @appendWithAttribute(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i32* %45, i32* null)
  %47 = load i32, i32* @attrstr, align 4
  %48 = call i32 @uiAttributedStringAppendUnattributed(i32 %47, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %49 = load i32, i32* @attrstr, align 4
  %50 = call i32 @uiAttributedStringAppendUnattributed(i32 %49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  %51 = load i32, i32* @uiUnderlineDouble, align 4
  %52 = call i32* @uiNewUnderlineAttribute(i32 %51)
  store i32* %52, i32** %1, align 8
  %53 = load i32, i32* @uiUnderlineColorCustom, align 4
  %54 = call i32* @uiNewUnderlineColorAttribute(i32 %53, double 1.000000e+00, double 0.000000e+00, double 5.000000e-01, double 1.000000e+00)
  store i32* %54, i32** %2, align 8
  %55 = load i32*, i32** %1, align 8
  %56 = load i32*, i32** %2, align 8
  %57 = call i32 @appendWithAttribute(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0), i32* %55, i32* %56)
  %58 = load i32, i32* @attrstr, align 4
  %59 = call i32 @uiAttributedStringAppendUnattributed(i32 %58, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0))
  %60 = load i32, i32* @attrstr, align 4
  %61 = call i32 @uiAttributedStringAppendUnattributed(i32 %60, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.14, i64 0, i64 0))
  %62 = load i32, i32* @uiUnderlineSuggestion, align 4
  %63 = call i32* @uiNewUnderlineAttribute(i32 %62)
  store i32* %63, i32** %1, align 8
  %64 = load i32, i32* @uiUnderlineColorSpelling, align 4
  %65 = call i32* @uiNewUnderlineColorAttribute(i32 %64, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00)
  store i32* %65, i32** %2, align 8
  %66 = load i32*, i32** %1, align 8
  %67 = load i32*, i32** %2, align 8
  %68 = call i32 @appendWithAttribute(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.15, i64 0, i64 0), i32* %66, i32* %67)
  %69 = load i32, i32* @attrstr, align 4
  %70 = call i32 @uiAttributedStringAppendUnattributed(i32 %69, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.16, i64 0, i64 0))
  %71 = load i32, i32* @attrstr, align 4
  %72 = call i32 @uiAttributedStringAppendUnattributed(i32 %71, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.17, i64 0, i64 0))
  %73 = call i32* (...) @uiNewOpenTypeFeatures()
  store i32* %73, i32** %3, align 8
  %74 = load i32*, i32** %3, align 8
  %75 = call i32 @uiOpenTypeFeaturesAdd(i32* %74, i8 signext 108, i8 signext 105, i8 signext 103, i8 signext 97, i32 0)
  %76 = load i32*, i32** %3, align 8
  %77 = call i32* @uiNewFeaturesAttribute(i32* %76)
  store i32* %77, i32** %1, align 8
  %78 = load i32*, i32** %1, align 8
  %79 = call i32 @appendWithAttribute(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0), i32* %78, i32* null)
  %80 = load i32, i32* @attrstr, align 4
  %81 = call i32 @uiAttributedStringAppendUnattributed(i32 %80, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0))
  %82 = load i32*, i32** %3, align 8
  %83 = call i32 @uiOpenTypeFeaturesAdd(i32* %82, i8 signext 108, i8 signext 105, i8 signext 103, i8 signext 97, i32 1)
  %84 = load i32*, i32** %3, align 8
  %85 = call i32* @uiNewFeaturesAttribute(i32* %84)
  store i32* %85, i32** %1, align 8
  %86 = load i32*, i32** %1, align 8
  %87 = call i32 @appendWithAttribute(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0), i32* %86, i32* null)
  %88 = load i32*, i32** %3, align 8
  %89 = call i32 @uiFreeOpenTypeFeatures(i32* %88)
  %90 = load i32, i32* @attrstr, align 4
  %91 = call i32 @uiAttributedStringAppendUnattributed(i32 %90, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0))
  %92 = load i32, i32* @attrstr, align 4
  %93 = call i32 @uiAttributedStringAppendUnattributed(i32 %92, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.21, i64 0, i64 0))
  ret void
}

declare dso_local i32 @uiNewAttributedString(i8*) #1

declare dso_local i32* @uiNewFamilyAttribute(i8*) #1

declare dso_local i32 @appendWithAttribute(i8*, i32*, i32*) #1

declare dso_local i32 @uiAttributedStringAppendUnattributed(i32, i8*) #1

declare dso_local i32* @uiNewSizeAttribute(i32) #1

declare dso_local i32* @uiNewWeightAttribute(i32) #1

declare dso_local i32* @uiNewItalicAttribute(i32) #1

declare dso_local i32* @uiNewStretchAttribute(i32) #1

declare dso_local i32* @uiNewColorAttribute(double, double, double, double) #1

declare dso_local i32* @uiNewBackgroundAttribute(double, double, double, double) #1

declare dso_local i32* @uiNewUnderlineAttribute(i32) #1

declare dso_local i32* @uiNewUnderlineColorAttribute(i32, double, double, double, double) #1

declare dso_local i32* @uiNewOpenTypeFeatures(...) #1

declare dso_local i32 @uiOpenTypeFeaturesAdd(i32*, i8 signext, i8 signext, i8 signext, i8 signext, i32) #1

declare dso_local i32* @uiNewFeaturesAttribute(i32*) #1

declare dso_local i32 @uiFreeOpenTypeFeatures(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
