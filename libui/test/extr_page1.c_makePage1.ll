; ModuleID = '/home/carl/AnghaBench/libui/test/extr_page1.c_makePage1.c'
source_filename = "/home/carl/AnghaBench/libui/test/extr_page1.c_makePage1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@page1 = common dso_local global i32* null, align 8
@entry = common dso_local global i32* null, align 8
@onChanged = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"Spaced\00", align 1
@spaced = common dso_local global i32* null, align 8
@toggleSpaced = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"Label\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"Get Window Text\00", align 1
@getWindowText = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"Set Window Text\00", align 1
@setWindowText = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"Get Button Text\00", align 1
@getButtonText = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [16 x i8] c"Set Button Text\00", align 1
@setButtonText = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [18 x i8] c"Get Checkbox Text\00", align 1
@getCheckboxText = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [18 x i8] c"Set Checkbox Text\00", align 1
@setCheckboxText = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [15 x i8] c"Get Label Text\00", align 1
@getLabelText = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [15 x i8] c"Set Label Text\00", align 1
@setLabelText = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [15 x i8] c"Get Group Text\00", align 1
@getGroupText = common dso_local global i32 0, align 4
@page2group = common dso_local global i32* null, align 8
@.str.11 = private unnamed_addr constant [15 x i8] c"Set Group Text\00", align 1
@setGroupText = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [3 x i8] c"On\00", align 1
@forceSpaced = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [4 x i8] c"Off\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"Show\00", align 1
@showSpaced = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [7 x i8] c"Button\00", align 1
@showControl = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [5 x i8] c"Hide\00", align 1
@hideControl = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [7 x i8] c"Enable\00", align 1
@enableControl = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [8 x i8] c"Disable\00", align 1
@disableControl = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [9 x i8] c"Show Box\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"Hide Box\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"Enable Box\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"Disable Box\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @makePage1(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %8 = call i32* (...) @newVerticalBox()
  store i32* %8, i32** @page1, align 8
  %9 = call i32* (...) @uiNewEntry()
  store i32* %9, i32** @entry, align 8
  %10 = load i32*, i32** @entry, align 8
  %11 = load i32, i32* @onChanged, align 4
  %12 = call i32 @uiEntryOnChanged(i32* %10, i32 %11, i32* null)
  %13 = load i32*, i32** @page1, align 8
  %14 = load i32*, i32** @entry, align 8
  %15 = call i32 @uiControl(i32* %14)
  %16 = call i32 @uiBoxAppend(i32* %13, i32 %15, i32 0)
  %17 = call i32* @uiNewCheckbox(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32* %17, i32** @spaced, align 8
  %18 = load i32*, i32** @spaced, align 8
  %19 = load i32, i32* @toggleSpaced, align 4
  %20 = call i32 @uiCheckboxOnToggled(i32* %18, i32 %19, i32* null)
  %21 = call i32* @uiNewLabel(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i32* %21, i32** %7, align 8
  %22 = call i32* (...) @newHorizontalBox()
  store i32* %22, i32** %5, align 8
  %23 = call i32* @uiNewButton(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  store i32* %23, i32** %3, align 8
  %24 = load i32*, i32** %3, align 8
  %25 = load i32, i32* @getWindowText, align 4
  %26 = load i32*, i32** %2, align 8
  %27 = call i32 @uiButtonOnClicked(i32* %24, i32 %25, i32* %26)
  %28 = call i32* @uiNewButton(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  store i32* %28, i32** %4, align 8
  %29 = load i32*, i32** %4, align 8
  %30 = load i32, i32* @setWindowText, align 4
  %31 = load i32*, i32** %2, align 8
  %32 = call i32 @uiButtonOnClicked(i32* %29, i32 %30, i32* %31)
  %33 = load i32*, i32** %5, align 8
  %34 = load i32*, i32** %3, align 8
  %35 = call i32 @uiControl(i32* %34)
  %36 = call i32 @uiBoxAppend(i32* %33, i32 %35, i32 1)
  %37 = load i32*, i32** %5, align 8
  %38 = load i32*, i32** %4, align 8
  %39 = call i32 @uiControl(i32* %38)
  %40 = call i32 @uiBoxAppend(i32* %37, i32 %39, i32 1)
  %41 = load i32*, i32** @page1, align 8
  %42 = load i32*, i32** %5, align 8
  %43 = call i32 @uiControl(i32* %42)
  %44 = call i32 @uiBoxAppend(i32* %41, i32 %43, i32 0)
  %45 = call i32* (...) @newHorizontalBox()
  store i32* %45, i32** %5, align 8
  %46 = call i32* @uiNewButton(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  store i32* %46, i32** %3, align 8
  %47 = load i32*, i32** %3, align 8
  %48 = load i32, i32* @getButtonText, align 4
  %49 = load i32*, i32** %3, align 8
  %50 = call i32 @uiButtonOnClicked(i32* %47, i32 %48, i32* %49)
  %51 = call i32* @uiNewButton(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  store i32* %51, i32** %4, align 8
  %52 = load i32*, i32** %4, align 8
  %53 = load i32, i32* @setButtonText, align 4
  %54 = load i32*, i32** %3, align 8
  %55 = call i32 @uiButtonOnClicked(i32* %52, i32 %53, i32* %54)
  %56 = load i32*, i32** %5, align 8
  %57 = load i32*, i32** %3, align 8
  %58 = call i32 @uiControl(i32* %57)
  %59 = call i32 @uiBoxAppend(i32* %56, i32 %58, i32 1)
  %60 = load i32*, i32** %5, align 8
  %61 = load i32*, i32** %4, align 8
  %62 = call i32 @uiControl(i32* %61)
  %63 = call i32 @uiBoxAppend(i32* %60, i32 %62, i32 1)
  %64 = load i32*, i32** @page1, align 8
  %65 = load i32*, i32** %5, align 8
  %66 = call i32 @uiControl(i32* %65)
  %67 = call i32 @uiBoxAppend(i32* %64, i32 %66, i32 0)
  %68 = call i32* (...) @newHorizontalBox()
  store i32* %68, i32** %5, align 8
  %69 = call i32* @uiNewButton(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  store i32* %69, i32** %3, align 8
  %70 = load i32*, i32** %3, align 8
  %71 = load i32, i32* @getCheckboxText, align 4
  %72 = load i32*, i32** @spaced, align 8
  %73 = call i32 @uiButtonOnClicked(i32* %70, i32 %71, i32* %72)
  %74 = call i32* @uiNewButton(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  store i32* %74, i32** %4, align 8
  %75 = load i32*, i32** %4, align 8
  %76 = load i32, i32* @setCheckboxText, align 4
  %77 = load i32*, i32** @spaced, align 8
  %78 = call i32 @uiButtonOnClicked(i32* %75, i32 %76, i32* %77)
  %79 = load i32*, i32** %5, align 8
  %80 = load i32*, i32** %3, align 8
  %81 = call i32 @uiControl(i32* %80)
  %82 = call i32 @uiBoxAppend(i32* %79, i32 %81, i32 1)
  %83 = load i32*, i32** %5, align 8
  %84 = load i32*, i32** %4, align 8
  %85 = call i32 @uiControl(i32* %84)
  %86 = call i32 @uiBoxAppend(i32* %83, i32 %85, i32 1)
  %87 = load i32*, i32** @page1, align 8
  %88 = load i32*, i32** %5, align 8
  %89 = call i32 @uiControl(i32* %88)
  %90 = call i32 @uiBoxAppend(i32* %87, i32 %89, i32 0)
  %91 = call i32* (...) @newHorizontalBox()
  store i32* %91, i32** %5, align 8
  %92 = call i32* @uiNewButton(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  store i32* %92, i32** %3, align 8
  %93 = load i32*, i32** %3, align 8
  %94 = load i32, i32* @getLabelText, align 4
  %95 = load i32*, i32** %7, align 8
  %96 = call i32 @uiButtonOnClicked(i32* %93, i32 %94, i32* %95)
  %97 = call i32* @uiNewButton(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0))
  store i32* %97, i32** %4, align 8
  %98 = load i32*, i32** %4, align 8
  %99 = load i32, i32* @setLabelText, align 4
  %100 = load i32*, i32** %7, align 8
  %101 = call i32 @uiButtonOnClicked(i32* %98, i32 %99, i32* %100)
  %102 = load i32*, i32** %5, align 8
  %103 = load i32*, i32** %3, align 8
  %104 = call i32 @uiControl(i32* %103)
  %105 = call i32 @uiBoxAppend(i32* %102, i32 %104, i32 1)
  %106 = load i32*, i32** %5, align 8
  %107 = load i32*, i32** %4, align 8
  %108 = call i32 @uiControl(i32* %107)
  %109 = call i32 @uiBoxAppend(i32* %106, i32 %108, i32 1)
  %110 = load i32*, i32** @page1, align 8
  %111 = load i32*, i32** %5, align 8
  %112 = call i32 @uiControl(i32* %111)
  %113 = call i32 @uiBoxAppend(i32* %110, i32 %112, i32 0)
  %114 = call i32* (...) @newHorizontalBox()
  store i32* %114, i32** %5, align 8
  %115 = call i32* @uiNewButton(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0))
  store i32* %115, i32** %3, align 8
  %116 = load i32*, i32** %3, align 8
  %117 = load i32, i32* @getGroupText, align 4
  %118 = load i32*, i32** @page2group, align 8
  %119 = call i32 @uiButtonOnClicked(i32* %116, i32 %117, i32* %118)
  %120 = call i32* @uiNewButton(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0))
  store i32* %120, i32** %4, align 8
  %121 = load i32*, i32** %4, align 8
  %122 = load i32, i32* @setGroupText, align 4
  %123 = load i32*, i32** @page2group, align 8
  %124 = call i32 @uiButtonOnClicked(i32* %121, i32 %122, i32* %123)
  %125 = load i32*, i32** %5, align 8
  %126 = load i32*, i32** %3, align 8
  %127 = call i32 @uiControl(i32* %126)
  %128 = call i32 @uiBoxAppend(i32* %125, i32 %127, i32 1)
  %129 = load i32*, i32** %5, align 8
  %130 = load i32*, i32** %4, align 8
  %131 = call i32 @uiControl(i32* %130)
  %132 = call i32 @uiBoxAppend(i32* %129, i32 %131, i32 1)
  %133 = load i32*, i32** @page1, align 8
  %134 = load i32*, i32** %5, align 8
  %135 = call i32 @uiControl(i32* %134)
  %136 = call i32 @uiBoxAppend(i32* %133, i32 %135, i32 0)
  %137 = call i32* (...) @newHorizontalBox()
  store i32* %137, i32** %5, align 8
  %138 = load i32*, i32** %5, align 8
  %139 = load i32*, i32** @spaced, align 8
  %140 = call i32 @uiControl(i32* %139)
  %141 = call i32 @uiBoxAppend(i32* %138, i32 %140, i32 1)
  %142 = call i32* @uiNewButton(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0))
  store i32* %142, i32** %3, align 8
  %143 = load i32*, i32** %3, align 8
  %144 = load i32, i32* @forceSpaced, align 4
  %145 = load i32*, i32** %3, align 8
  %146 = call i32 @uiButtonOnClicked(i32* %143, i32 %144, i32* %145)
  %147 = load i32*, i32** %5, align 8
  %148 = load i32*, i32** %3, align 8
  %149 = call i32 @uiControl(i32* %148)
  %150 = call i32 @uiBoxAppend(i32* %147, i32 %149, i32 0)
  %151 = call i32* @uiNewButton(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0))
  store i32* %151, i32** %3, align 8
  %152 = load i32*, i32** %3, align 8
  %153 = load i32, i32* @forceSpaced, align 4
  %154 = call i32 @uiButtonOnClicked(i32* %152, i32 %153, i32* null)
  %155 = load i32*, i32** %5, align 8
  %156 = load i32*, i32** %3, align 8
  %157 = call i32 @uiControl(i32* %156)
  %158 = call i32 @uiBoxAppend(i32* %155, i32 %157, i32 0)
  %159 = call i32* @uiNewButton(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0))
  store i32* %159, i32** %3, align 8
  %160 = load i32*, i32** %3, align 8
  %161 = load i32, i32* @showSpaced, align 4
  %162 = call i32 @uiButtonOnClicked(i32* %160, i32 %161, i32* null)
  %163 = load i32*, i32** %5, align 8
  %164 = load i32*, i32** %3, align 8
  %165 = call i32 @uiControl(i32* %164)
  %166 = call i32 @uiBoxAppend(i32* %163, i32 %165, i32 0)
  %167 = load i32*, i32** @page1, align 8
  %168 = load i32*, i32** %5, align 8
  %169 = call i32 @uiControl(i32* %168)
  %170 = call i32 @uiBoxAppend(i32* %167, i32 %169, i32 0)
  %171 = call i32* (...) @newHorizontalBox()
  store i32* %171, i32** %6, align 8
  %172 = call i32* @uiNewButton(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0))
  store i32* %172, i32** %4, align 8
  %173 = load i32*, i32** %6, align 8
  %174 = load i32*, i32** %4, align 8
  %175 = call i32 @uiControl(i32* %174)
  %176 = call i32 @uiBoxAppend(i32* %173, i32 %175, i32 1)
  %177 = call i32* @uiNewButton(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0))
  store i32* %177, i32** %3, align 8
  %178 = load i32*, i32** %3, align 8
  %179 = load i32, i32* @showControl, align 4
  %180 = load i32*, i32** %4, align 8
  %181 = call i32 @uiButtonOnClicked(i32* %178, i32 %179, i32* %180)
  %182 = load i32*, i32** %6, align 8
  %183 = load i32*, i32** %3, align 8
  %184 = call i32 @uiControl(i32* %183)
  %185 = call i32 @uiBoxAppend(i32* %182, i32 %184, i32 0)
  %186 = call i32* @uiNewButton(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0))
  store i32* %186, i32** %3, align 8
  %187 = load i32*, i32** %3, align 8
  %188 = load i32, i32* @hideControl, align 4
  %189 = load i32*, i32** %4, align 8
  %190 = call i32 @uiButtonOnClicked(i32* %187, i32 %188, i32* %189)
  %191 = load i32*, i32** %6, align 8
  %192 = load i32*, i32** %3, align 8
  %193 = call i32 @uiControl(i32* %192)
  %194 = call i32 @uiBoxAppend(i32* %191, i32 %193, i32 0)
  %195 = call i32* @uiNewButton(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0))
  store i32* %195, i32** %3, align 8
  %196 = load i32*, i32** %3, align 8
  %197 = load i32, i32* @enableControl, align 4
  %198 = load i32*, i32** %4, align 8
  %199 = call i32 @uiButtonOnClicked(i32* %196, i32 %197, i32* %198)
  %200 = load i32*, i32** %6, align 8
  %201 = load i32*, i32** %3, align 8
  %202 = call i32 @uiControl(i32* %201)
  %203 = call i32 @uiBoxAppend(i32* %200, i32 %202, i32 0)
  %204 = call i32* @uiNewButton(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0))
  store i32* %204, i32** %3, align 8
  %205 = load i32*, i32** %3, align 8
  %206 = load i32, i32* @disableControl, align 4
  %207 = load i32*, i32** %4, align 8
  %208 = call i32 @uiButtonOnClicked(i32* %205, i32 %206, i32* %207)
  %209 = load i32*, i32** %6, align 8
  %210 = load i32*, i32** %3, align 8
  %211 = call i32 @uiControl(i32* %210)
  %212 = call i32 @uiBoxAppend(i32* %209, i32 %211, i32 0)
  %213 = load i32*, i32** @page1, align 8
  %214 = load i32*, i32** %6, align 8
  %215 = call i32 @uiControl(i32* %214)
  %216 = call i32 @uiBoxAppend(i32* %213, i32 %215, i32 0)
  %217 = call i32* (...) @newHorizontalBox()
  store i32* %217, i32** %5, align 8
  %218 = call i32* @uiNewButton(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0))
  store i32* %218, i32** %3, align 8
  %219 = load i32*, i32** %3, align 8
  %220 = load i32, i32* @showControl, align 4
  %221 = load i32*, i32** %6, align 8
  %222 = call i32 @uiButtonOnClicked(i32* %219, i32 %220, i32* %221)
  %223 = load i32*, i32** %5, align 8
  %224 = load i32*, i32** %3, align 8
  %225 = call i32 @uiControl(i32* %224)
  %226 = call i32 @uiBoxAppend(i32* %223, i32 %225, i32 1)
  %227 = call i32* @uiNewButton(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i64 0, i64 0))
  store i32* %227, i32** %3, align 8
  %228 = load i32*, i32** %3, align 8
  %229 = load i32, i32* @hideControl, align 4
  %230 = load i32*, i32** %6, align 8
  %231 = call i32 @uiButtonOnClicked(i32* %228, i32 %229, i32* %230)
  %232 = load i32*, i32** %5, align 8
  %233 = load i32*, i32** %3, align 8
  %234 = call i32 @uiControl(i32* %233)
  %235 = call i32 @uiBoxAppend(i32* %232, i32 %234, i32 1)
  %236 = call i32* @uiNewButton(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i64 0, i64 0))
  store i32* %236, i32** %3, align 8
  %237 = load i32*, i32** %3, align 8
  %238 = load i32, i32* @enableControl, align 4
  %239 = load i32*, i32** %6, align 8
  %240 = call i32 @uiButtonOnClicked(i32* %237, i32 %238, i32* %239)
  %241 = load i32*, i32** %5, align 8
  %242 = load i32*, i32** %3, align 8
  %243 = call i32 @uiControl(i32* %242)
  %244 = call i32 @uiBoxAppend(i32* %241, i32 %243, i32 1)
  %245 = call i32* @uiNewButton(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i64 0, i64 0))
  store i32* %245, i32** %3, align 8
  %246 = load i32*, i32** %3, align 8
  %247 = load i32, i32* @disableControl, align 4
  %248 = load i32*, i32** %6, align 8
  %249 = call i32 @uiButtonOnClicked(i32* %246, i32 %247, i32* %248)
  %250 = load i32*, i32** %5, align 8
  %251 = load i32*, i32** %3, align 8
  %252 = call i32 @uiControl(i32* %251)
  %253 = call i32 @uiBoxAppend(i32* %250, i32 %252, i32 1)
  %254 = load i32*, i32** @page1, align 8
  %255 = load i32*, i32** %5, align 8
  %256 = call i32 @uiControl(i32* %255)
  %257 = call i32 @uiBoxAppend(i32* %254, i32 %256, i32 0)
  %258 = load i32*, i32** @page1, align 8
  %259 = load i32*, i32** %7, align 8
  %260 = call i32 @uiControl(i32* %259)
  %261 = call i32 @uiBoxAppend(i32* %258, i32 %260, i32 0)
  ret void
}

declare dso_local i32* @newVerticalBox(...) #1

declare dso_local i32* @uiNewEntry(...) #1

declare dso_local i32 @uiEntryOnChanged(i32*, i32, i32*) #1

declare dso_local i32 @uiBoxAppend(i32*, i32, i32) #1

declare dso_local i32 @uiControl(i32*) #1

declare dso_local i32* @uiNewCheckbox(i8*) #1

declare dso_local i32 @uiCheckboxOnToggled(i32*, i32, i32*) #1

declare dso_local i32* @uiNewLabel(i8*) #1

declare dso_local i32* @newHorizontalBox(...) #1

declare dso_local i32* @uiNewButton(i8*) #1

declare dso_local i32 @uiButtonOnClicked(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
