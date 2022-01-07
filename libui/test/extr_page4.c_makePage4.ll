; ModuleID = '/home/carl/AnghaBench/libui/test/extr_page4.c_makePage4.c'
source_filename = "/home/carl/AnghaBench/libui/test/extr_page4.c_makePage4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@spinbox = common dso_local global i32* null, align 8
@onSpinboxChanged = common dso_local global i32 0, align 4
@slider = common dso_local global i32* null, align 8
@onSliderChanged = common dso_local global i32 0, align 4
@pbar = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"Bad Low\00", align 1
@setSpinboxTooLow = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"Bad High\00", align 1
@setSpinboxTooHigh = common dso_local global i32 0, align 4
@setSliderTooLow = common dso_local global i32 0, align 4
@setSliderTooHigh = common dso_local global i32 0, align 4
@cbox = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"Item 1\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"Item 2\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"Item 3\00", align 1
@onCBChanged = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"noneditable\00", align 1
@editable = common dso_local global i32* null, align 8
@.str.6 = private unnamed_addr constant [16 x i8] c"Editable Item 1\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"Editable Item 2\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"Editable Item 3\00", align 1
@onECBChanged = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [9 x i8] c"editable\00", align 1
@rb = common dso_local global i32* null, align 8
@onRBSelected = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [7 x i8] c"Append\00", align 1
@appendCBRB = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [7 x i8] c"Second\00", align 1
@selectSecond = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [5 x i8] c"None\00", align 1
@selectNone = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @makePage4() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = call i32* (...) @newVerticalBox()
  store i32* %6, i32** %1, align 8
  %7 = call i32* @uiNewSpinbox(i32 0, i32 100)
  store i32* %7, i32** @spinbox, align 8
  %8 = load i32*, i32** @spinbox, align 8
  %9 = load i32, i32* @onSpinboxChanged, align 4
  %10 = call i32 @uiSpinboxOnChanged(i32* %8, i32 %9, i32* null)
  %11 = load i32*, i32** %1, align 8
  %12 = load i32*, i32** @spinbox, align 8
  %13 = call i32 @uiControl(i32* %12)
  %14 = call i32 @uiBoxAppend(i32* %11, i32 %13, i32 0)
  %15 = call i32* @uiNewSlider(i32 0, i32 100)
  store i32* %15, i32** @slider, align 8
  %16 = load i32*, i32** @slider, align 8
  %17 = load i32, i32* @onSliderChanged, align 4
  %18 = call i32 @uiSliderOnChanged(i32* %16, i32 %17, i32* null)
  %19 = load i32*, i32** %1, align 8
  %20 = load i32*, i32** @slider, align 8
  %21 = call i32 @uiControl(i32* %20)
  %22 = call i32 @uiBoxAppend(i32* %19, i32 %21, i32 0)
  %23 = call i32* (...) @uiNewProgressBar()
  store i32* %23, i32** @pbar, align 8
  %24 = load i32*, i32** %1, align 8
  %25 = load i32*, i32** @pbar, align 8
  %26 = call i32 @uiControl(i32* %25)
  %27 = call i32 @uiBoxAppend(i32* %24, i32 %26, i32 0)
  %28 = load i32*, i32** %1, align 8
  %29 = call i32* (...) @uiNewHorizontalSeparator()
  %30 = call i32 @uiControl(i32* %29)
  %31 = call i32 @uiBoxAppend(i32* %28, i32 %30, i32 0)
  %32 = call i32* (...) @newHorizontalBox()
  store i32* %32, i32** %2, align 8
  %33 = call i32* @uiNewSpinbox(i32 -40, i32 40)
  store i32* %33, i32** %3, align 8
  %34 = load i32*, i32** %2, align 8
  %35 = load i32*, i32** %3, align 8
  %36 = call i32 @uiControl(i32* %35)
  %37 = call i32 @uiBoxAppend(i32* %34, i32 %36, i32 0)
  %38 = call i32* @uiNewButton(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32* %38, i32** %4, align 8
  %39 = load i32*, i32** %4, align 8
  %40 = load i32, i32* @setSpinboxTooLow, align 4
  %41 = load i32*, i32** %3, align 8
  %42 = call i32 @uiButtonOnClicked(i32* %39, i32 %40, i32* %41)
  %43 = load i32*, i32** %2, align 8
  %44 = load i32*, i32** %4, align 8
  %45 = call i32 @uiControl(i32* %44)
  %46 = call i32 @uiBoxAppend(i32* %43, i32 %45, i32 0)
  %47 = call i32* @uiNewButton(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store i32* %47, i32** %4, align 8
  %48 = load i32*, i32** %4, align 8
  %49 = load i32, i32* @setSpinboxTooHigh, align 4
  %50 = load i32*, i32** %3, align 8
  %51 = call i32 @uiButtonOnClicked(i32* %48, i32 %49, i32* %50)
  %52 = load i32*, i32** %2, align 8
  %53 = load i32*, i32** %4, align 8
  %54 = call i32 @uiControl(i32* %53)
  %55 = call i32 @uiBoxAppend(i32* %52, i32 %54, i32 0)
  %56 = load i32*, i32** %1, align 8
  %57 = load i32*, i32** %2, align 8
  %58 = call i32 @uiControl(i32* %57)
  %59 = call i32 @uiBoxAppend(i32* %56, i32 %58, i32 0)
  %60 = call i32* (...) @newHorizontalBox()
  store i32* %60, i32** %2, align 8
  %61 = call i32* @uiNewSlider(i32 -40, i32 40)
  store i32* %61, i32** %5, align 8
  %62 = load i32*, i32** %2, align 8
  %63 = load i32*, i32** %5, align 8
  %64 = call i32 @uiControl(i32* %63)
  %65 = call i32 @uiBoxAppend(i32* %62, i32 %64, i32 0)
  %66 = call i32* @uiNewButton(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32* %66, i32** %4, align 8
  %67 = load i32*, i32** %4, align 8
  %68 = load i32, i32* @setSliderTooLow, align 4
  %69 = load i32*, i32** %5, align 8
  %70 = call i32 @uiButtonOnClicked(i32* %67, i32 %68, i32* %69)
  %71 = load i32*, i32** %2, align 8
  %72 = load i32*, i32** %4, align 8
  %73 = call i32 @uiControl(i32* %72)
  %74 = call i32 @uiBoxAppend(i32* %71, i32 %73, i32 0)
  %75 = call i32* @uiNewButton(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store i32* %75, i32** %4, align 8
  %76 = load i32*, i32** %4, align 8
  %77 = load i32, i32* @setSliderTooHigh, align 4
  %78 = load i32*, i32** %5, align 8
  %79 = call i32 @uiButtonOnClicked(i32* %76, i32 %77, i32* %78)
  %80 = load i32*, i32** %2, align 8
  %81 = load i32*, i32** %4, align 8
  %82 = call i32 @uiControl(i32* %81)
  %83 = call i32 @uiBoxAppend(i32* %80, i32 %82, i32 0)
  %84 = load i32*, i32** %1, align 8
  %85 = load i32*, i32** %2, align 8
  %86 = call i32 @uiControl(i32* %85)
  %87 = call i32 @uiBoxAppend(i32* %84, i32 %86, i32 0)
  %88 = load i32*, i32** %1, align 8
  %89 = call i32* (...) @uiNewHorizontalSeparator()
  %90 = call i32 @uiControl(i32* %89)
  %91 = call i32 @uiBoxAppend(i32* %88, i32 %90, i32 0)
  %92 = call i32* (...) @uiNewCombobox()
  store i32* %92, i32** @cbox, align 8
  %93 = load i32*, i32** @cbox, align 8
  %94 = call i32 @uiComboboxAppend(i32* %93, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %95 = load i32*, i32** @cbox, align 8
  %96 = call i32 @uiComboboxAppend(i32* %95, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %97 = load i32*, i32** @cbox, align 8
  %98 = call i32 @uiComboboxAppend(i32* %97, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %99 = load i32*, i32** @cbox, align 8
  %100 = load i32, i32* @onCBChanged, align 4
  %101 = call i32 @uiComboboxOnSelected(i32* %99, i32 %100, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %102 = load i32*, i32** %1, align 8
  %103 = load i32*, i32** @cbox, align 8
  %104 = call i32 @uiControl(i32* %103)
  %105 = call i32 @uiBoxAppend(i32* %102, i32 %104, i32 0)
  %106 = call i32* (...) @uiNewEditableCombobox()
  store i32* %106, i32** @editable, align 8
  %107 = load i32*, i32** @editable, align 8
  %108 = call i32 @uiEditableComboboxAppend(i32* %107, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  %109 = load i32*, i32** @editable, align 8
  %110 = call i32 @uiEditableComboboxAppend(i32* %109, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0))
  %111 = load i32*, i32** @editable, align 8
  %112 = call i32 @uiEditableComboboxAppend(i32* %111, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0))
  %113 = load i32*, i32** @editable, align 8
  %114 = load i32, i32* @onECBChanged, align 4
  %115 = call i32 @uiEditableComboboxOnChanged(i32* %113, i32 %114, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  %116 = load i32*, i32** %1, align 8
  %117 = load i32*, i32** @editable, align 8
  %118 = call i32 @uiControl(i32* %117)
  %119 = call i32 @uiBoxAppend(i32* %116, i32 %118, i32 0)
  %120 = call i32* (...) @uiNewRadioButtons()
  store i32* %120, i32** @rb, align 8
  %121 = load i32*, i32** @rb, align 8
  %122 = call i32 @uiRadioButtonsAppend(i32* %121, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %123 = load i32*, i32** @rb, align 8
  %124 = call i32 @uiRadioButtonsAppend(i32* %123, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %125 = load i32*, i32** @rb, align 8
  %126 = call i32 @uiRadioButtonsAppend(i32* %125, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %127 = load i32*, i32** @rb, align 8
  %128 = load i32, i32* @onRBSelected, align 4
  %129 = call i32 @uiRadioButtonsOnSelected(i32* %127, i32 %128, i32* null)
  %130 = load i32*, i32** %1, align 8
  %131 = load i32*, i32** @rb, align 8
  %132 = call i32 @uiControl(i32* %131)
  %133 = call i32 @uiBoxAppend(i32* %130, i32 %132, i32 0)
  %134 = call i32* (...) @newHorizontalBox()
  store i32* %134, i32** %2, align 8
  %135 = call i32* @uiNewButton(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  store i32* %135, i32** %4, align 8
  %136 = load i32*, i32** %4, align 8
  %137 = load i32, i32* @appendCBRB, align 4
  %138 = call i32 @uiButtonOnClicked(i32* %136, i32 %137, i32* null)
  %139 = load i32*, i32** %2, align 8
  %140 = load i32*, i32** %4, align 8
  %141 = call i32 @uiControl(i32* %140)
  %142 = call i32 @uiBoxAppend(i32* %139, i32 %141, i32 0)
  %143 = call i32* @uiNewButton(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0))
  store i32* %143, i32** %4, align 8
  %144 = load i32*, i32** %4, align 8
  %145 = load i32, i32* @selectSecond, align 4
  %146 = call i32 @uiButtonOnClicked(i32* %144, i32 %145, i32* null)
  %147 = load i32*, i32** %2, align 8
  %148 = load i32*, i32** %4, align 8
  %149 = call i32 @uiControl(i32* %148)
  %150 = call i32 @uiBoxAppend(i32* %147, i32 %149, i32 0)
  %151 = call i32* @uiNewButton(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  store i32* %151, i32** %4, align 8
  %152 = load i32*, i32** %4, align 8
  %153 = load i32, i32* @selectNone, align 4
  %154 = call i32 @uiButtonOnClicked(i32* %152, i32 %153, i32* null)
  %155 = load i32*, i32** %2, align 8
  %156 = load i32*, i32** %4, align 8
  %157 = call i32 @uiControl(i32* %156)
  %158 = call i32 @uiBoxAppend(i32* %155, i32 %157, i32 0)
  %159 = load i32*, i32** %1, align 8
  %160 = load i32*, i32** %2, align 8
  %161 = call i32 @uiControl(i32* %160)
  %162 = call i32 @uiBoxAppend(i32* %159, i32 %161, i32 0)
  %163 = load i32*, i32** %1, align 8
  %164 = call i32* (...) @uiNewHorizontalSeparator()
  %165 = call i32 @uiControl(i32* %164)
  %166 = call i32 @uiBoxAppend(i32* %163, i32 %165, i32 0)
  %167 = load i32*, i32** %1, align 8
  %168 = call i32* (...) @uiNewDateTimePicker()
  %169 = call i32 @uiControl(i32* %168)
  %170 = call i32 @uiBoxAppend(i32* %167, i32 %169, i32 0)
  %171 = load i32*, i32** %1, align 8
  %172 = call i32* (...) @uiNewDatePicker()
  %173 = call i32 @uiControl(i32* %172)
  %174 = call i32 @uiBoxAppend(i32* %171, i32 %173, i32 0)
  %175 = load i32*, i32** %1, align 8
  %176 = call i32* (...) @uiNewTimePicker()
  %177 = call i32 @uiControl(i32* %176)
  %178 = call i32 @uiBoxAppend(i32* %175, i32 %177, i32 0)
  %179 = load i32*, i32** %1, align 8
  ret i32* %179
}

declare dso_local i32* @newVerticalBox(...) #1

declare dso_local i32* @uiNewSpinbox(i32, i32) #1

declare dso_local i32 @uiSpinboxOnChanged(i32*, i32, i32*) #1

declare dso_local i32 @uiBoxAppend(i32*, i32, i32) #1

declare dso_local i32 @uiControl(i32*) #1

declare dso_local i32* @uiNewSlider(i32, i32) #1

declare dso_local i32 @uiSliderOnChanged(i32*, i32, i32*) #1

declare dso_local i32* @uiNewProgressBar(...) #1

declare dso_local i32* @uiNewHorizontalSeparator(...) #1

declare dso_local i32* @newHorizontalBox(...) #1

declare dso_local i32* @uiNewButton(i8*) #1

declare dso_local i32 @uiButtonOnClicked(i32*, i32, i32*) #1

declare dso_local i32* @uiNewCombobox(...) #1

declare dso_local i32 @uiComboboxAppend(i32*, i8*) #1

declare dso_local i32 @uiComboboxOnSelected(i32*, i32, i8*) #1

declare dso_local i32* @uiNewEditableCombobox(...) #1

declare dso_local i32 @uiEditableComboboxAppend(i32*, i8*) #1

declare dso_local i32 @uiEditableComboboxOnChanged(i32*, i32, i8*) #1

declare dso_local i32* @uiNewRadioButtons(...) #1

declare dso_local i32 @uiRadioButtonsAppend(i32*, i8*) #1

declare dso_local i32 @uiRadioButtonsOnSelected(i32*, i32, i32*) #1

declare dso_local i32* @uiNewDateTimePicker(...) #1

declare dso_local i32* @uiNewDatePicker(...) #1

declare dso_local i32* @uiNewTimePicker(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
