; ModuleID = '/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_shared.c_Item_YesNo_HandleKey.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_shared.c_Item_YesNo_HandleKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 (i64)*, i32 (i64, i32)*, i32, i32 }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@qfalse = common dso_local global i64 0, align 8
@K_MOUSE1 = common dso_local global i32 0, align 4
@K_MOUSE2 = common dso_local global i32 0, align 4
@K_MOUSE3 = common dso_local global i32 0, align 4
@DC = common dso_local global %struct.TYPE_7__* null, align 8
@WINDOW_HASFOCUS = common dso_local global i32 0, align 4
@qtrue = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"%i\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @Item_YesNo_HandleKey(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %78

11:                                               ; preds = %2
  %12 = load i64, i64* @qfalse, align 8
  store i64 %12, i64* %6, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @K_MOUSE1, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %24, label %16

16:                                               ; preds = %11
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @K_MOUSE2, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @K_MOUSE3, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %47

24:                                               ; preds = %20, %16, %11
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** @DC, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** @DC, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @Rect_ContainsPoint(i32* %27, i32 %30, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %24
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @WINDOW_HASFOCUS, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %36
  %45 = load i64, i64* @qtrue, align 8
  store i64 %45, i64* %6, align 8
  br label %46

46:                                               ; preds = %44, %36, %24
  br label %54

47:                                               ; preds = %20
  %48 = load i32, i32* %5, align 4
  %49 = call i64 @UI_SelectForKey(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = load i64, i64* @qtrue, align 8
  store i64 %52, i64* %6, align 8
  br label %53

53:                                               ; preds = %51, %47
  br label %54

54:                                               ; preds = %53, %46
  %55 = load i64, i64* %6, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %77

57:                                               ; preds = %54
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** @DC, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  %60 = load i32 (i64, i32)*, i32 (i64, i32)** %59, align 8
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** @DC, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load i32 (i64)*, i32 (i64)** %65, align 8
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = call i32 %66(i64 %69)
  %71 = icmp ne i32 %70, 0
  %72 = xor i1 %71, true
  %73 = zext i1 %72 to i32
  %74 = call i32 @va(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %73)
  %75 = call i32 %60(i64 %63, i32 %74)
  %76 = load i64, i64* @qtrue, align 8
  store i64 %76, i64* %3, align 8
  br label %80

77:                                               ; preds = %54
  br label %78

78:                                               ; preds = %77, %2
  %79 = load i64, i64* @qfalse, align 8
  store i64 %79, i64* %3, align 8
  br label %80

80:                                               ; preds = %78, %57
  %81 = load i64, i64* %3, align 8
  ret i64 %81
}

declare dso_local i64 @Rect_ContainsPoint(i32*, i32, i32) #1

declare dso_local i64 @UI_SelectForKey(i32) #1

declare dso_local i32 @va(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
