; ModuleID = '/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_shared.c_Item_ListBox_ThumbPosition.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_shared.c_Item_ListBox_ThumbPosition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__, i64 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { float, i32, float, i32 }
%struct.TYPE_9__ = type { float }

@WINDOW_HORIZONTAL = common dso_local global i32 0, align 4
@SCROLLBAR_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Item_ListBox_ThumbPosition(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %11, %struct.TYPE_9__** %7, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %13 = call float @Item_ListBox_MaxScroll(%struct.TYPE_10__* %12)
  store float %13, float* %4, align 4
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @WINDOW_HORIZONTAL, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %60

21:                                               ; preds = %1
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load float, float* %25, align 4
  %27 = load i32, i32* @SCROLLBAR_SIZE, align 4
  %28 = mul nsw i32 %27, 2
  %29 = sitofp i32 %28 to float
  %30 = fsub float %26, %29
  %31 = fsub float %30, 2.000000e+00
  store float %31, float* %6, align 4
  %32 = load float, float* %4, align 4
  %33 = fcmp ogt float %32, 0.000000e+00
  br i1 %33, label %34, label %41

34:                                               ; preds = %21
  %35 = load float, float* %6, align 4
  %36 = load i32, i32* @SCROLLBAR_SIZE, align 4
  %37 = sitofp i32 %36 to float
  %38 = fsub float %35, %37
  %39 = load float, float* %4, align 4
  %40 = fdiv float %38, %39
  store float %40, float* %5, align 4
  br label %42

41:                                               ; preds = %21
  store float 0.000000e+00, float* %5, align 4
  br label %42

42:                                               ; preds = %41, %34
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load float, float* %44, align 4
  %46 = load float, float* %5, align 4
  %47 = fmul float %46, %45
  store float %47, float* %5, align 4
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, 1
  %54 = load i32, i32* @SCROLLBAR_SIZE, align 4
  %55 = add nsw i32 %53, %54
  %56 = sitofp i32 %55 to float
  %57 = load float, float* %5, align 4
  %58 = fadd float %56, %57
  %59 = fptosi float %58 to i32
  store i32 %59, i32* %2, align 4
  br label %99

60:                                               ; preds = %1
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 2
  %65 = load float, float* %64, align 4
  %66 = load i32, i32* @SCROLLBAR_SIZE, align 4
  %67 = mul nsw i32 %66, 2
  %68 = sitofp i32 %67 to float
  %69 = fsub float %65, %68
  %70 = fsub float %69, 2.000000e+00
  store float %70, float* %6, align 4
  %71 = load float, float* %4, align 4
  %72 = fcmp ogt float %71, 0.000000e+00
  br i1 %72, label %73, label %80

73:                                               ; preds = %60
  %74 = load float, float* %6, align 4
  %75 = load i32, i32* @SCROLLBAR_SIZE, align 4
  %76 = sitofp i32 %75 to float
  %77 = fsub float %74, %76
  %78 = load float, float* %4, align 4
  %79 = fdiv float %77, %78
  store float %79, float* %5, align 4
  br label %81

80:                                               ; preds = %60
  store float 0.000000e+00, float* %5, align 4
  br label %81

81:                                               ; preds = %80, %73
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = load float, float* %83, align 4
  %85 = load float, float* %5, align 4
  %86 = fmul float %85, %84
  store float %86, float* %5, align 4
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %91, 1
  %93 = load i32, i32* @SCROLLBAR_SIZE, align 4
  %94 = add nsw i32 %92, %93
  %95 = sitofp i32 %94 to float
  %96 = load float, float* %5, align 4
  %97 = fadd float %95, %96
  %98 = fptosi float %97 to i32
  store i32 %98, i32* %2, align 4
  br label %99

99:                                               ; preds = %81, %42
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local float @Item_ListBox_MaxScroll(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
