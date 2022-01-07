; ModuleID = '/home/carl/AnghaBench/libui/examples/histogram/extr_main.c_handlerMouseEvent.c'
source_filename = "/home/carl/AnghaBench/libui/examples/histogram/extr_main.c_handlerMouseEvent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@currentPoint = common dso_local global i32 0, align 4
@histogram = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, %struct.TYPE_3__*)* @handlerMouseEvent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handlerMouseEvent(i32* %0, i32* %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca [10 x double], align 16
  %10 = alloca [10 x double], align 16
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %6, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @graphSize(i32 %14, i32 %17, double* %7, double* %8)
  %19 = load double, double* %7, align 8
  %20 = load double, double* %8, align 8
  %21 = getelementptr inbounds [10 x double], [10 x double]* %9, i64 0, i64 0
  %22 = getelementptr inbounds [10 x double], [10 x double]* %10, i64 0, i64 0
  %23 = call i32 @pointLocations(double %19, double %20, double* %21, double* %22)
  store i32 0, i32* %11, align 4
  br label %24

24:                                               ; preds = %46, %3
  %25 = load i32, i32* %11, align 4
  %26 = icmp slt i32 %25, 10
  br i1 %26, label %27, label %49

27:                                               ; preds = %24
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %11, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [10 x double], [10 x double]* %9, i64 0, i64 %35
  %37 = load double, double* %36, align 8
  %38 = load i32, i32* %11, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [10 x double], [10 x double]* %10, i64 0, i64 %39
  %41 = load double, double* %40, align 8
  %42 = call i64 @inPoint(i32 %30, i32 %33, double %37, double %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %27
  br label %49

45:                                               ; preds = %27
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %11, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %11, align 4
  br label %24

49:                                               ; preds = %44, %24
  %50 = load i32, i32* %11, align 4
  %51 = icmp eq i32 %50, 10
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  store i32 -1, i32* %11, align 4
  br label %53

53:                                               ; preds = %52, %49
  %54 = load i32, i32* %11, align 4
  store i32 %54, i32* @currentPoint, align 4
  %55 = load i32, i32* @histogram, align 4
  %56 = call i32 @uiAreaQueueRedrawAll(i32 %55)
  ret void
}

declare dso_local i32 @graphSize(i32, i32, double*, double*) #1

declare dso_local i32 @pointLocations(double, double, double*, double*) #1

declare dso_local i64 @inPoint(i32, i32, double, double) #1

declare dso_local i32 @uiAreaQueueRedrawAll(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
