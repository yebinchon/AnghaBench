; ModuleID = '/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_shared.c_Menu_TransitionItemByName.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_shared.c_Menu_TransitionItemByName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i64, i64, i64 }
%struct.TYPE_13__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_10__, i32, i32 }
%struct.TYPE_10__ = type { float, float, float, float }

@WINDOW_INTRANSITION = common dso_local global i32 0, align 4
@WINDOW_VISIBLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Menu_TransitionItemByName(i32* %0, i8* %1, %struct.TYPE_12__* byval(%struct.TYPE_12__) align 8 %2, %struct.TYPE_12__* byval(%struct.TYPE_12__) align 8 %3, i32 %4, float %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca float, align 4
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %4, i32* %9, align 4
  store float %5, float* %10, align 4
  %14 = load i32*, i32** %7, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = call i32 @Menu_ItemsMatchingGroup(i32* %14, i8* %15)
  store i32 %16, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %17

17:                                               ; preds = %100, %6
  %18 = load i32, i32* %12, align 4
  %19 = load i32, i32* %13, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %103

21:                                               ; preds = %17
  %22 = load i32*, i32** %7, align 8
  %23 = load i32, i32* %12, align 4
  %24 = load i8*, i8** %8, align 8
  %25 = call %struct.TYPE_13__* @Menu_GetMatchingItemByNumber(i32* %22, i32 %23, i8* %24)
  store %struct.TYPE_13__* %25, %struct.TYPE_13__** %11, align 8
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %27 = icmp ne %struct.TYPE_13__* %26, null
  br i1 %27, label %28, label %99

28:                                               ; preds = %21
  %29 = load i32, i32* @WINDOW_INTRANSITION, align 4
  %30 = load i32, i32* @WINDOW_VISIBLE, align 4
  %31 = or i32 %29, %30
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %31
  store i32 %36, i32* %34, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 1
  store i32 %37, i32* %40, align 4
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 4
  %44 = call i32 @memcpy(i32* %43, %struct.TYPE_12__* %2, i32 32)
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 3
  %48 = call i32 @memcpy(i32* %47, %struct.TYPE_12__* %3, i32 32)
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %3, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %2, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = sub nsw i64 %50, %52
  %54 = call float @fabs(i64 %53)
  %55 = load float, float* %10, align 4
  %56 = fdiv float %54, %55
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  store float %56, float* %60, align 4
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %3, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %2, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = sub nsw i64 %62, %64
  %66 = call float @fabs(i64 %65)
  %67 = load float, float* %10, align 4
  %68 = fdiv float %66, %67
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 1
  store float %68, float* %72, align 4
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %3, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %2, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = sub nsw i64 %74, %76
  %78 = call float @fabs(i64 %77)
  %79 = load float, float* %10, align 4
  %80 = fdiv float %78, %79
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 2
  store float %80, float* %84, align 4
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %3, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %2, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = sub nsw i64 %86, %88
  %90 = call float @fabs(i64 %89)
  %91 = load float, float* %10, align 4
  %92 = fdiv float %90, %91
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 3
  store float %92, float* %96, align 4
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %98 = call i32 @Item_UpdatePosition(%struct.TYPE_13__* %97)
  br label %99

99:                                               ; preds = %28, %21
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %12, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %12, align 4
  br label %17

103:                                              ; preds = %17
  ret void
}

declare dso_local i32 @Menu_ItemsMatchingGroup(i32*, i8*) #1

declare dso_local %struct.TYPE_13__* @Menu_GetMatchingItemByNumber(i32*, i32, i8*) #1

declare dso_local i32 @memcpy(i32*, %struct.TYPE_12__*, i32) #1

declare dso_local float @fabs(i64) #1

declare dso_local i32 @Item_UpdatePosition(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
