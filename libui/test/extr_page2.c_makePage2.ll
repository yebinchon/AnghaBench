; ModuleID = '/home/carl/AnghaBench/libui/test/extr_page2.c_makePage2.c'
source_filename = "/home/carl/AnghaBench/libui/test/extr_page2.c_makePage2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"Moving Label\00", align 1
@page2group = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"Move the Label!\00", align 1
@moveLabel = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@movingBoxes = common dso_local global i32** null, align 8
@movingCurrent = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [18 x i8] c"This label moves!\00", align 1
@movingLabel = common dso_local global i32* null, align 8
@moveOutText = common dso_local global i8* null, align 8
@movePage1 = common dso_local global i32 0, align 4
@moveBack = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [21 x i8] c"Label Alignment Test\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"Open Menued Window\00", align 1
@openAnotherWindow = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [21 x i8] c"Open Menuless Window\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"Disabled Menued\00", align 1
@openAnotherDisabledWindow = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [18 x i8] c"Disabled Menuless\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"These\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"buttons\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"are\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"nested\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"boxes\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"Enable Nested Box\00", align 1
@enableControl = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [19 x i8] c"Disable Nested Box\00", align 1
@disableControl = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [9 x i8] c"Disabled\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"Button\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"Tab\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"Label\00", align 1
@echoReadOnlyText = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [63 x i8] c"If you can see this, uiEntryReadOnly() isn't working properly.\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"Show Button 2\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"Button 2\00", align 1
@showControl = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @makePage2() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = call i32* (...) @newVerticalBox()
  store i32* %14, i32** %1, align 8
  %15 = call i32* @newGroup(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32* %15, i32** %3, align 8
  %16 = load i32*, i32** %3, align 8
  store i32* %16, i32** @page2group, align 8
  %17 = load i32*, i32** %1, align 8
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @uiControl(i32* %18)
  %20 = call i32 @uiBoxAppend(i32* %17, i32 %19, i32 0)
  %21 = call i32* (...) @newVerticalBox()
  store i32* %21, i32** %4, align 8
  %22 = load i32*, i32** %3, align 8
  %23 = load i32*, i32** %4, align 8
  %24 = call i32 @uiControl(i32* %23)
  %25 = call i32 @uiGroupSetChild(i32* %22, i32 %24)
  %26 = call i32* (...) @newHorizontalBox()
  store i32* %26, i32** %2, align 8
  %27 = call i32* @uiNewButton(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  store i32* %27, i32** %5, align 8
  %28 = load i32*, i32** %5, align 8
  %29 = load i32, i32* @moveLabel, align 4
  %30 = call i32 @uiButtonOnClicked(i32* %28, i32 %29, i32* null)
  %31 = load i32*, i32** %2, align 8
  %32 = load i32*, i32** %5, align 8
  %33 = call i32 @uiControl(i32* %32)
  %34 = call i32 @uiBoxAppend(i32* %31, i32 %33, i32 1)
  %35 = load i32*, i32** %2, align 8
  %36 = call i32* @uiNewLabel(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  %37 = call i32 @uiControl(i32* %36)
  %38 = call i32 @uiBoxAppend(i32* %35, i32 %37, i32 1)
  %39 = load i32*, i32** %4, align 8
  %40 = load i32*, i32** %2, align 8
  %41 = call i32 @uiControl(i32* %40)
  %42 = call i32 @uiBoxAppend(i32* %39, i32 %41, i32 0)
  %43 = call i32* (...) @newHorizontalBox()
  store i32* %43, i32** %2, align 8
  %44 = call i32* (...) @newVerticalBox()
  %45 = load i32**, i32*** @movingBoxes, align 8
  %46 = getelementptr inbounds i32*, i32** %45, i64 0
  store i32* %44, i32** %46, align 8
  %47 = load i32*, i32** %2, align 8
  %48 = load i32**, i32*** @movingBoxes, align 8
  %49 = getelementptr inbounds i32*, i32** %48, i64 0
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @uiControl(i32* %50)
  %52 = call i32 @uiBoxAppend(i32* %47, i32 %51, i32 1)
  %53 = call i32* (...) @newVerticalBox()
  %54 = load i32**, i32*** @movingBoxes, align 8
  %55 = getelementptr inbounds i32*, i32** %54, i64 1
  store i32* %53, i32** %55, align 8
  %56 = load i32*, i32** %2, align 8
  %57 = load i32**, i32*** @movingBoxes, align 8
  %58 = getelementptr inbounds i32*, i32** %57, i64 1
  %59 = load i32*, i32** %58, align 8
  %60 = call i32 @uiControl(i32* %59)
  %61 = call i32 @uiBoxAppend(i32* %56, i32 %60, i32 1)
  %62 = load i32*, i32** %4, align 8
  %63 = load i32*, i32** %2, align 8
  %64 = call i32 @uiControl(i32* %63)
  %65 = call i32 @uiBoxAppend(i32* %62, i32 %64, i32 0)
  store i64 0, i64* @movingCurrent, align 8
  %66 = call i32* @uiNewLabel(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  store i32* %66, i32** @movingLabel, align 8
  %67 = load i32**, i32*** @movingBoxes, align 8
  %68 = load i64, i64* @movingCurrent, align 8
  %69 = getelementptr inbounds i32*, i32** %67, i64 %68
  %70 = load i32*, i32** %69, align 8
  %71 = load i32*, i32** @movingLabel, align 8
  %72 = call i32 @uiControl(i32* %71)
  %73 = call i32 @uiBoxAppend(i32* %70, i32 %72, i32 0)
  %74 = call i32* (...) @newHorizontalBox()
  store i32* %74, i32** %2, align 8
  %75 = load i8*, i8** @moveOutText, align 8
  %76 = call i32* @uiNewButton(i8* %75)
  store i32* %76, i32** %5, align 8
  %77 = load i32*, i32** %5, align 8
  %78 = load i32, i32* @movePage1, align 4
  %79 = call i32 @uiButtonOnClicked(i32* %77, i32 %78, i32* null)
  %80 = load i32*, i32** %2, align 8
  %81 = load i32*, i32** %5, align 8
  %82 = call i32 @uiControl(i32* %81)
  %83 = call i32 @uiBoxAppend(i32* %80, i32 %82, i32 0)
  %84 = load i32*, i32** %1, align 8
  %85 = load i32*, i32** %2, align 8
  %86 = call i32 @uiControl(i32* %85)
  %87 = call i32 @uiBoxAppend(i32* %84, i32 %86, i32 0)
  store i64 0, i64* @moveBack, align 8
  %88 = call i32* (...) @newHorizontalBox()
  store i32* %88, i32** %2, align 8
  %89 = load i32*, i32** %2, align 8
  %90 = call i32* @uiNewLabel(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %91 = call i32 @uiControl(i32* %90)
  %92 = call i32 @uiBoxAppend(i32* %89, i32 %91, i32 0)
  %93 = call i32* @uiNewButton(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  store i32* %93, i32** %5, align 8
  %94 = load i32*, i32** %5, align 8
  %95 = load i32, i32* @openAnotherWindow, align 4
  %96 = load i32*, i32** %5, align 8
  %97 = call i32 @uiButtonOnClicked(i32* %94, i32 %95, i32* %96)
  %98 = load i32*, i32** %2, align 8
  %99 = load i32*, i32** %5, align 8
  %100 = call i32 @uiControl(i32* %99)
  %101 = call i32 @uiBoxAppend(i32* %98, i32 %100, i32 0)
  %102 = call i32* @uiNewButton(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  store i32* %102, i32** %5, align 8
  %103 = load i32*, i32** %5, align 8
  %104 = load i32, i32* @openAnotherWindow, align 4
  %105 = call i32 @uiButtonOnClicked(i32* %103, i32 %104, i32* null)
  %106 = load i32*, i32** %2, align 8
  %107 = load i32*, i32** %5, align 8
  %108 = call i32 @uiControl(i32* %107)
  %109 = call i32 @uiBoxAppend(i32* %106, i32 %108, i32 0)
  %110 = call i32* @uiNewButton(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0))
  store i32* %110, i32** %5, align 8
  %111 = load i32*, i32** %5, align 8
  %112 = load i32, i32* @openAnotherDisabledWindow, align 4
  %113 = load i32*, i32** %5, align 8
  %114 = call i32 @uiButtonOnClicked(i32* %111, i32 %112, i32* %113)
  %115 = load i32*, i32** %2, align 8
  %116 = load i32*, i32** %5, align 8
  %117 = call i32 @uiControl(i32* %116)
  %118 = call i32 @uiBoxAppend(i32* %115, i32 %117, i32 0)
  %119 = call i32* @uiNewButton(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0))
  store i32* %119, i32** %5, align 8
  %120 = load i32*, i32** %5, align 8
  %121 = load i32, i32* @openAnotherDisabledWindow, align 4
  %122 = call i32 @uiButtonOnClicked(i32* %120, i32 %121, i32* null)
  %123 = load i32*, i32** %2, align 8
  %124 = load i32*, i32** %5, align 8
  %125 = call i32 @uiControl(i32* %124)
  %126 = call i32 @uiBoxAppend(i32* %123, i32 %125, i32 0)
  %127 = load i32*, i32** %1, align 8
  %128 = load i32*, i32** %2, align 8
  %129 = call i32 @uiControl(i32* %128)
  %130 = call i32 @uiBoxAppend(i32* %127, i32 %129, i32 0)
  %131 = call i32* (...) @newHorizontalBox()
  store i32* %131, i32** %6, align 8
  %132 = call i32* (...) @newHorizontalBox()
  store i32* %132, i32** %7, align 8
  %133 = load i32*, i32** %7, align 8
  %134 = call i32* @uiNewButton(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  %135 = call i32 @uiControl(i32* %134)
  %136 = call i32 @uiBoxAppend(i32* %133, i32 %135, i32 0)
  %137 = call i32* @uiNewButton(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  store i32* %137, i32** %5, align 8
  %138 = load i32*, i32** %5, align 8
  %139 = call i32 @uiControl(i32* %138)
  %140 = call i32 @uiControlDisable(i32 %139)
  %141 = load i32*, i32** %7, align 8
  %142 = load i32*, i32** %5, align 8
  %143 = call i32 @uiControl(i32* %142)
  %144 = call i32 @uiBoxAppend(i32* %141, i32 %143, i32 0)
  %145 = load i32*, i32** %6, align 8
  %146 = load i32*, i32** %7, align 8
  %147 = call i32 @uiControl(i32* %146)
  %148 = call i32 @uiBoxAppend(i32* %145, i32 %147, i32 0)
  %149 = call i32* (...) @newHorizontalBox()
  store i32* %149, i32** %7, align 8
  %150 = load i32*, i32** %7, align 8
  %151 = call i32* @uiNewButton(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0))
  %152 = call i32 @uiControl(i32* %151)
  %153 = call i32 @uiBoxAppend(i32* %150, i32 %152, i32 0)
  %154 = call i32* (...) @newHorizontalBox()
  store i32* %154, i32** %8, align 8
  %155 = call i32* @uiNewButton(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0))
  store i32* %155, i32** %5, align 8
  %156 = load i32*, i32** %5, align 8
  %157 = call i32 @uiControl(i32* %156)
  %158 = call i32 @uiControlDisable(i32 %157)
  %159 = load i32*, i32** %8, align 8
  %160 = load i32*, i32** %5, align 8
  %161 = call i32 @uiControl(i32* %160)
  %162 = call i32 @uiBoxAppend(i32* %159, i32 %161, i32 0)
  %163 = load i32*, i32** %7, align 8
  %164 = load i32*, i32** %8, align 8
  %165 = call i32 @uiControl(i32* %164)
  %166 = call i32 @uiBoxAppend(i32* %163, i32 %165, i32 0)
  %167 = load i32*, i32** %6, align 8
  %168 = load i32*, i32** %7, align 8
  %169 = call i32 @uiControl(i32* %168)
  %170 = call i32 @uiBoxAppend(i32* %167, i32 %169, i32 0)
  %171 = call i32* (...) @newHorizontalBox()
  store i32* %171, i32** %7, align 8
  %172 = call i32* (...) @newHorizontalBox()
  store i32* %172, i32** %8, align 8
  %173 = load i32*, i32** %8, align 8
  %174 = call i32* @uiNewButton(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0))
  %175 = call i32 @uiControl(i32* %174)
  %176 = call i32 @uiBoxAppend(i32* %173, i32 %175, i32 0)
  %177 = call i32* (...) @newHorizontalBox()
  store i32* %177, i32** %9, align 8
  %178 = call i32* @uiNewButton(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0))
  store i32* %178, i32** %5, align 8
  %179 = load i32*, i32** %5, align 8
  %180 = call i32 @uiControl(i32* %179)
  %181 = call i32 @uiControlDisable(i32 %180)
  %182 = load i32*, i32** %9, align 8
  %183 = load i32*, i32** %5, align 8
  %184 = call i32 @uiControl(i32* %183)
  %185 = call i32 @uiBoxAppend(i32* %182, i32 %184, i32 0)
  %186 = load i32*, i32** %8, align 8
  %187 = load i32*, i32** %9, align 8
  %188 = call i32 @uiControl(i32* %187)
  %189 = call i32 @uiBoxAppend(i32* %186, i32 %188, i32 0)
  %190 = load i32*, i32** %7, align 8
  %191 = load i32*, i32** %8, align 8
  %192 = call i32 @uiControl(i32* %191)
  %193 = call i32 @uiBoxAppend(i32* %190, i32 %192, i32 0)
  %194 = load i32*, i32** %6, align 8
  %195 = load i32*, i32** %7, align 8
  %196 = call i32 @uiControl(i32* %195)
  %197 = call i32 @uiBoxAppend(i32* %194, i32 %196, i32 0)
  %198 = load i32*, i32** %1, align 8
  %199 = load i32*, i32** %6, align 8
  %200 = call i32 @uiControl(i32* %199)
  %201 = call i32 @uiBoxAppend(i32* %198, i32 %200, i32 0)
  %202 = call i32* (...) @newHorizontalBox()
  store i32* %202, i32** %2, align 8
  %203 = call i32* @uiNewButton(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0))
  store i32* %203, i32** %5, align 8
  %204 = load i32*, i32** %5, align 8
  %205 = load i32, i32* @enableControl, align 4
  %206 = load i32*, i32** %6, align 8
  %207 = call i32 @uiButtonOnClicked(i32* %204, i32 %205, i32* %206)
  %208 = load i32*, i32** %2, align 8
  %209 = load i32*, i32** %5, align 8
  %210 = call i32 @uiControl(i32* %209)
  %211 = call i32 @uiBoxAppend(i32* %208, i32 %210, i32 0)
  %212 = call i32* @uiNewButton(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i64 0, i64 0))
  store i32* %212, i32** %5, align 8
  %213 = load i32*, i32** %5, align 8
  %214 = load i32, i32* @disableControl, align 4
  %215 = load i32*, i32** %6, align 8
  %216 = call i32 @uiButtonOnClicked(i32* %213, i32 %214, i32* %215)
  %217 = load i32*, i32** %2, align 8
  %218 = load i32*, i32** %5, align 8
  %219 = call i32 @uiControl(i32* %218)
  %220 = call i32 @uiBoxAppend(i32* %217, i32 %219, i32 0)
  %221 = load i32*, i32** %1, align 8
  %222 = load i32*, i32** %2, align 8
  %223 = call i32 @uiControl(i32* %222)
  %224 = call i32 @uiBoxAppend(i32* %221, i32 %223, i32 0)
  %225 = call i32* (...) @newTab()
  store i32* %225, i32** %10, align 8
  %226 = load i32*, i32** %10, align 8
  %227 = call i32* @uiNewButton(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0))
  %228 = call i32 @uiControl(i32* %227)
  %229 = call i32 @uiTabAppend(i32* %226, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0), i32 %228)
  %230 = load i32*, i32** %10, align 8
  %231 = call i32* @uiNewLabel(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i64 0, i64 0))
  %232 = call i32 @uiControl(i32* %231)
  %233 = call i32 @uiTabAppend(i32* %230, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0), i32 %232)
  %234 = load i32*, i32** %10, align 8
  %235 = call i32 @uiControl(i32* %234)
  %236 = call i32 @uiControlDisable(i32 %235)
  %237 = load i32*, i32** %1, align 8
  %238 = load i32*, i32** %10, align 8
  %239 = call i32 @uiControl(i32* %238)
  %240 = call i32 @uiBoxAppend(i32* %237, i32 %239, i32 1)
  %241 = call i32* (...) @uiNewEntry()
  store i32* %241, i32** %11, align 8
  %242 = call i32* (...) @uiNewEntry()
  store i32* %242, i32** %12, align 8
  %243 = load i32*, i32** %11, align 8
  %244 = load i32, i32* @echoReadOnlyText, align 4
  %245 = load i32*, i32** %12, align 8
  %246 = call i32 @uiEntryOnChanged(i32* %243, i32 %244, i32* %245)
  %247 = load i32*, i32** %12, align 8
  %248 = call i32 @uiEntrySetText(i32* %247, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.21, i64 0, i64 0))
  %249 = load i32*, i32** %12, align 8
  %250 = call i32 @uiEntrySetReadOnly(i32* %249, i32 1)
  %251 = load i32*, i32** %12, align 8
  %252 = call i64 @uiEntryReadOnly(i32* %251)
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %257

254:                                              ; preds = %0
  %255 = load i32*, i32** %12, align 8
  %256 = call i32 @uiEntrySetText(i32* %255, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  br label %257

257:                                              ; preds = %254, %0
  %258 = load i32*, i32** %1, align 8
  %259 = load i32*, i32** %11, align 8
  %260 = call i32 @uiControl(i32* %259)
  %261 = call i32 @uiBoxAppend(i32* %258, i32 %260, i32 0)
  %262 = load i32*, i32** %1, align 8
  %263 = load i32*, i32** %12, align 8
  %264 = call i32 @uiControl(i32* %263)
  %265 = call i32 @uiBoxAppend(i32* %262, i32 %264, i32 0)
  %266 = call i32* (...) @newHorizontalBox()
  store i32* %266, i32** %2, align 8
  %267 = call i32* @uiNewButton(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i64 0, i64 0))
  store i32* %267, i32** %5, align 8
  %268 = call i32* @uiNewButton(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i64 0, i64 0))
  store i32* %268, i32** %13, align 8
  %269 = load i32*, i32** %5, align 8
  %270 = load i32, i32* @showControl, align 4
  %271 = load i32*, i32** %13, align 8
  %272 = call i32 @uiButtonOnClicked(i32* %269, i32 %270, i32* %271)
  %273 = load i32*, i32** %13, align 8
  %274 = call i32 @uiControl(i32* %273)
  %275 = call i32 @uiControlHide(i32 %274)
  %276 = load i32*, i32** %2, align 8
  %277 = load i32*, i32** %5, align 8
  %278 = call i32 @uiControl(i32* %277)
  %279 = call i32 @uiBoxAppend(i32* %276, i32 %278, i32 1)
  %280 = load i32*, i32** %2, align 8
  %281 = load i32*, i32** %13, align 8
  %282 = call i32 @uiControl(i32* %281)
  %283 = call i32 @uiBoxAppend(i32* %280, i32 %282, i32 0)
  %284 = load i32*, i32** %1, align 8
  %285 = load i32*, i32** %2, align 8
  %286 = call i32 @uiControl(i32* %285)
  %287 = call i32 @uiBoxAppend(i32* %284, i32 %286, i32 0)
  %288 = load i32*, i32** %1, align 8
  ret i32* %288
}

declare dso_local i32* @newVerticalBox(...) #1

declare dso_local i32* @newGroup(i8*) #1

declare dso_local i32 @uiBoxAppend(i32*, i32, i32) #1

declare dso_local i32 @uiControl(i32*) #1

declare dso_local i32 @uiGroupSetChild(i32*, i32) #1

declare dso_local i32* @newHorizontalBox(...) #1

declare dso_local i32* @uiNewButton(i8*) #1

declare dso_local i32 @uiButtonOnClicked(i32*, i32, i32*) #1

declare dso_local i32* @uiNewLabel(i8*) #1

declare dso_local i32 @uiControlDisable(i32) #1

declare dso_local i32* @newTab(...) #1

declare dso_local i32 @uiTabAppend(i32*, i8*, i32) #1

declare dso_local i32* @uiNewEntry(...) #1

declare dso_local i32 @uiEntryOnChanged(i32*, i32, i32*) #1

declare dso_local i32 @uiEntrySetText(i32*, i8*) #1

declare dso_local i32 @uiEntrySetReadOnly(i32*, i32) #1

declare dso_local i64 @uiEntryReadOnly(i32*) #1

declare dso_local i32 @uiControlHide(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
