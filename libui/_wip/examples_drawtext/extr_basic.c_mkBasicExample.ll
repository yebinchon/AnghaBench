; ModuleID = '/home/carl/AnghaBench/libui/_wip/examples_drawtext/extr_basic.c_mkBasicExample.c'
source_filename = "/home/carl/AnghaBench/libui/_wip/examples_drawtext/extr_basic.c_mkBasicExample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.example = type { i8*, i32*, i32*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32*, i32 }

@panel = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Show Layout Extents\00", align 1
@showExtents = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"Show Line Bounds\00", align 1
@showLineBounds = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"Show Line Guides\00", align 1
@showLineGuides = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [24 x i8] c"Basic Paragraph of Text\00", align 1
@basicExample = common dso_local global %struct.example zeroinitializer, align 8
@draw = common dso_local global i32 0, align 4
@text = common dso_local global i32 0, align 4
@attrstr = common dso_local global i32 0, align 4
@params = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@defaultFont = common dso_local global i32 0, align 4
@uiDrawTextAlignLeft = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.example* @mkBasicExample() #0 {
  %1 = call i32 (...) @uiNewVerticalBox()
  store i32 %1, i32* @panel, align 4
  %2 = call i8* @newCheckbox(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i8* %2, i8** @showExtents, align 8
  %3 = call i8* @newCheckbox(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  store i8* %3, i8** @showLineBounds, align 8
  %4 = call i8* @newCheckbox(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  store i8* %4, i8** @showLineGuides, align 8
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i8** getelementptr inbounds (%struct.example, %struct.example* @basicExample, i32 0, i32 0), align 8
  %5 = load i32, i32* @panel, align 4
  %6 = call i32 @uiControl(i32 %5)
  store i32 %6, i32* getelementptr inbounds (%struct.example, %struct.example* @basicExample, i32 0, i32 4), align 4
  %7 = load i32, i32* @draw, align 4
  store i32 %7, i32* getelementptr inbounds (%struct.example, %struct.example* @basicExample, i32 0, i32 3), align 8
  store i32* null, i32** getelementptr inbounds (%struct.example, %struct.example* @basicExample, i32 0, i32 2), align 8
  store i32* null, i32** getelementptr inbounds (%struct.example, %struct.example* @basicExample, i32 0, i32 1), align 8
  %8 = load i32, i32* @text, align 4
  %9 = call i32 @uiNewAttributedString(i32 %8)
  store i32 %9, i32* @attrstr, align 4
  %10 = load i32, i32* @attrstr, align 4
  store i32 %10, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @params, i32 0, i32 2), align 8
  store i32* @defaultFont, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @params, i32 0, i32 1), align 8
  %11 = load i32, i32* @uiDrawTextAlignLeft, align 4
  store i32 %11, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @params, i32 0, i32 0), align 8
  ret %struct.example* @basicExample
}

declare dso_local i32 @uiNewVerticalBox(...) #1

declare dso_local i8* @newCheckbox(i8*) #1

declare dso_local i32 @uiControl(i32) #1

declare dso_local i32 @uiNewAttributedString(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
