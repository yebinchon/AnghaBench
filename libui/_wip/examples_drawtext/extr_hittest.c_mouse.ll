; ModuleID = '/home/carl/AnghaBench/libui/_wip/examples_drawtext/extr_hittest.c_mouse.c'
source_filename = "/home/carl/AnghaBench/libui/_wip/examples_drawtext/extr_hittest.c_mouse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32, i64, i64, i64 }

@margins = common dso_local global i32 0, align 4
@params = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@caretPos = common dso_local global i64 0, align 8
@caretLine = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"pos %d line %d\00", align 1
@caretLabel = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @mouse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mouse(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca [128 x i8], align 16
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 1
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %44

10:                                               ; preds = %1
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = load i32, i32* @margins, align 4
  %15 = mul nsw i32 2, %14
  %16 = sext i32 %15 to i64
  %17 = sub nsw i64 %13, %16
  store i64 %17, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @params, i32 0, i32 0), align 8
  %18 = call i32* @uiDrawNewTextLayout(%struct.TYPE_6__* @params)
  store i32* %18, i32** %3, align 8
  %19 = load i32*, i32** %3, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = load i32, i32* @margins, align 4
  %24 = sext i32 %23 to i64
  %25 = sub nsw i64 %22, %24
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i32, i32* @margins, align 4
  %30 = sext i32 %29 to i64
  %31 = sub nsw i64 %28, %30
  %32 = call i32 @uiDrawTextLayoutHitTest(i32* %19, i64 %25, i64 %31, i64* @caretPos, i32* @caretLine)
  %33 = load i32*, i32** %3, align 8
  %34 = call i32 @uiDrawFreeTextLayout(i32* %33)
  %35 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %36 = load i64, i64* @caretPos, align 8
  %37 = trunc i64 %36 to i32
  %38 = load i32, i32* @caretLine, align 4
  %39 = call i32 @sprintf(i8* %35, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %38)
  %40 = load i32, i32* @caretLabel, align 4
  %41 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %42 = call i32 @uiLabelSetText(i32 %40, i8* %41)
  %43 = call i32 (...) @redraw()
  br label %44

44:                                               ; preds = %10, %9
  ret void
}

declare dso_local i32* @uiDrawNewTextLayout(%struct.TYPE_6__*) #1

declare dso_local i32 @uiDrawTextLayoutHitTest(i32*, i64, i64, i64*, i32*) #1

declare dso_local i32 @uiDrawFreeTextLayout(i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i32) #1

declare dso_local i32 @uiLabelSetText(i32, i8*) #1

declare dso_local i32 @redraw(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
