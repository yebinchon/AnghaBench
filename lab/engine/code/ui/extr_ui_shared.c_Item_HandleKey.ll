; ModuleID = '/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_shared.c_Item_HandleKey.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_shared.c_Item_HandleKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }

@itemCapture = common dso_local global i32* null, align 8
@captureFunc = common dso_local global i64 0, align 8
@captureData = common dso_local global i32* null, align 8
@K_MOUSE1 = common dso_local global i32 0, align 4
@K_MOUSE2 = common dso_local global i32 0, align 4
@K_MOUSE3 = common dso_local global i32 0, align 4
@qfalse = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @Item_HandleKey(%struct.TYPE_10__* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %8 = load i32*, i32** @itemCapture, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = load i32*, i32** @itemCapture, align 8
  %12 = call i32 @Item_StopCapture(i32* %11)
  store i32* null, i32** @itemCapture, align 8
  store i64 0, i64* @captureFunc, align 8
  store i32* null, i32** @captureData, align 8
  br label %33

13:                                               ; preds = %3
  %14 = load i64, i64* %7, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %32

16:                                               ; preds = %13
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @K_MOUSE1, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %28, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @K_MOUSE2, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @K_MOUSE3, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %24, %20, %16
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @Item_StartCapture(%struct.TYPE_10__* %29, i32 %30)
  br label %32

32:                                               ; preds = %28, %24, %13
  br label %33

33:                                               ; preds = %32, %10
  %34 = load i64, i64* %7, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %33
  %37 = load i64, i64* @qfalse, align 8
  store i64 %37, i64* %4, align 8
  br label %82

38:                                               ; preds = %33
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  switch i32 %41, label %80 [
    i32 138, label %42
    i32 130, label %44
    i32 137, label %46
    i32 135, label %48
    i32 132, label %48
    i32 136, label %50
    i32 134, label %52
    i32 128, label %58
    i32 133, label %62
    i32 131, label %66
    i32 139, label %70
    i32 129, label %75
  ]

42:                                               ; preds = %38
  %43 = load i64, i64* @qfalse, align 8
  store i64 %43, i64* %4, align 8
  br label %82

44:                                               ; preds = %38
  %45 = load i64, i64* @qfalse, align 8
  store i64 %45, i64* %4, align 8
  br label %82

46:                                               ; preds = %38
  %47 = load i64, i64* @qfalse, align 8
  store i64 %47, i64* %4, align 8
  br label %82

48:                                               ; preds = %38, %38
  %49 = load i64, i64* @qfalse, align 8
  store i64 %49, i64* %4, align 8
  br label %82

50:                                               ; preds = %38
  %51 = load i64, i64* @qfalse, align 8
  store i64 %51, i64* %4, align 8
  br label %82

52:                                               ; preds = %38
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %54 = load i32, i32* %6, align 4
  %55 = load i64, i64* %7, align 8
  %56 = load i64, i64* @qfalse, align 8
  %57 = call i64 @Item_ListBox_HandleKey(%struct.TYPE_10__* %53, i32 %54, i64 %55, i64 %56)
  store i64 %57, i64* %4, align 8
  br label %82

58:                                               ; preds = %38
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %60 = load i32, i32* %6, align 4
  %61 = call i64 @Item_YesNo_HandleKey(%struct.TYPE_10__* %59, i32 %60)
  store i64 %61, i64* %4, align 8
  br label %82

62:                                               ; preds = %38
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %64 = load i32, i32* %6, align 4
  %65 = call i64 @Item_Multi_HandleKey(%struct.TYPE_10__* %63, i32 %64)
  store i64 %65, i64* %4, align 8
  br label %82

66:                                               ; preds = %38
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %68 = load i32, i32* %6, align 4
  %69 = call i64 @Item_OwnerDraw_HandleKey(%struct.TYPE_10__* %67, i32 %68)
  store i64 %69, i64* %4, align 8
  br label %82

70:                                               ; preds = %38
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %72 = load i32, i32* %6, align 4
  %73 = load i64, i64* %7, align 8
  %74 = call i64 @Item_Bind_HandleKey(%struct.TYPE_10__* %71, i32 %72, i64 %73)
  store i64 %74, i64* %4, align 8
  br label %82

75:                                               ; preds = %38
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %77 = load i32, i32* %6, align 4
  %78 = load i64, i64* %7, align 8
  %79 = call i64 @Item_Slider_HandleKey(%struct.TYPE_10__* %76, i32 %77, i64 %78)
  store i64 %79, i64* %4, align 8
  br label %82

80:                                               ; preds = %38
  %81 = load i64, i64* @qfalse, align 8
  store i64 %81, i64* %4, align 8
  br label %82

82:                                               ; preds = %80, %75, %70, %66, %62, %58, %52, %50, %48, %46, %44, %42, %36
  %83 = load i64, i64* %4, align 8
  ret i64 %83
}

declare dso_local i32 @Item_StopCapture(i32*) #1

declare dso_local i32 @Item_StartCapture(%struct.TYPE_10__*, i32) #1

declare dso_local i64 @Item_ListBox_HandleKey(%struct.TYPE_10__*, i32, i64, i64) #1

declare dso_local i64 @Item_YesNo_HandleKey(%struct.TYPE_10__*, i32) #1

declare dso_local i64 @Item_Multi_HandleKey(%struct.TYPE_10__*, i32) #1

declare dso_local i64 @Item_OwnerDraw_HandleKey(%struct.TYPE_10__*, i32) #1

declare dso_local i64 @Item_Bind_HandleKey(%struct.TYPE_10__*, i32, i64) #1

declare dso_local i64 @Item_Slider_HandleKey(%struct.TYPE_10__*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
