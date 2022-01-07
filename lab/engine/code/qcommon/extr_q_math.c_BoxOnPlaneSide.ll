; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_q_math.c_BoxOnPlaneSide.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_q_math.c_BoxOnPlaneSide.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cplane_s = type { i32, float, i32, float* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BoxOnPlaneSide(float* %0, float* %1, %struct.cplane_s* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca %struct.cplane_s*, align 8
  %8 = alloca [2 x float], align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store float* %0, float** %5, align 8
  store float* %1, float** %6, align 8
  store %struct.cplane_s* %2, %struct.cplane_s** %7, align 8
  %12 = load %struct.cplane_s*, %struct.cplane_s** %7, align 8
  %13 = getelementptr inbounds %struct.cplane_s, %struct.cplane_s* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %14, 3
  br i1 %15, label %16, label %43

16:                                               ; preds = %3
  %17 = load %struct.cplane_s*, %struct.cplane_s** %7, align 8
  %18 = getelementptr inbounds %struct.cplane_s, %struct.cplane_s* %17, i32 0, i32 1
  %19 = load float, float* %18, align 4
  %20 = load float*, float** %5, align 8
  %21 = load %struct.cplane_s*, %struct.cplane_s** %7, align 8
  %22 = getelementptr inbounds %struct.cplane_s, %struct.cplane_s* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds float, float* %20, i64 %24
  %26 = load float, float* %25, align 4
  %27 = fcmp ole float %19, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %16
  store i32 1, i32* %4, align 4
  br label %124

29:                                               ; preds = %16
  %30 = load %struct.cplane_s*, %struct.cplane_s** %7, align 8
  %31 = getelementptr inbounds %struct.cplane_s, %struct.cplane_s* %30, i32 0, i32 1
  %32 = load float, float* %31, align 4
  %33 = load float*, float** %6, align 8
  %34 = load %struct.cplane_s*, %struct.cplane_s** %7, align 8
  %35 = getelementptr inbounds %struct.cplane_s, %struct.cplane_s* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds float, float* %33, i64 %37
  %39 = load float, float* %38, align 4
  %40 = fcmp oge float %32, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %29
  store i32 2, i32* %4, align 4
  br label %124

42:                                               ; preds = %29
  store i32 3, i32* %4, align 4
  br label %124

43:                                               ; preds = %3
  %44 = getelementptr inbounds [2 x float], [2 x float]* %8, i64 0, i64 1
  store float 0.000000e+00, float* %44, align 4
  %45 = getelementptr inbounds [2 x float], [2 x float]* %8, i64 0, i64 0
  store float 0.000000e+00, float* %45, align 4
  %46 = load %struct.cplane_s*, %struct.cplane_s** %7, align 8
  %47 = getelementptr inbounds %struct.cplane_s, %struct.cplane_s* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = icmp slt i32 %48, 8
  br i1 %49, label %50, label %104

50:                                               ; preds = %43
  store i32 0, i32* %11, align 4
  br label %51

51:                                               ; preds = %100, %50
  %52 = load i32, i32* %11, align 4
  %53 = icmp slt i32 %52, 3
  br i1 %53, label %54, label %103

54:                                               ; preds = %51
  %55 = load %struct.cplane_s*, %struct.cplane_s** %7, align 8
  %56 = getelementptr inbounds %struct.cplane_s, %struct.cplane_s* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %11, align 4
  %59 = ashr i32 %57, %58
  %60 = and i32 %59, 1
  store i32 %60, i32* %10, align 4
  %61 = load %struct.cplane_s*, %struct.cplane_s** %7, align 8
  %62 = getelementptr inbounds %struct.cplane_s, %struct.cplane_s* %61, i32 0, i32 3
  %63 = load float*, float** %62, align 8
  %64 = load i32, i32* %11, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds float, float* %63, i64 %65
  %67 = load float, float* %66, align 4
  %68 = load float*, float** %6, align 8
  %69 = load i32, i32* %11, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds float, float* %68, i64 %70
  %72 = load float, float* %71, align 4
  %73 = fmul float %67, %72
  %74 = load i32, i32* %10, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [2 x float], [2 x float]* %8, i64 0, i64 %75
  %77 = load float, float* %76, align 4
  %78 = fadd float %77, %73
  store float %78, float* %76, align 4
  %79 = load %struct.cplane_s*, %struct.cplane_s** %7, align 8
  %80 = getelementptr inbounds %struct.cplane_s, %struct.cplane_s* %79, i32 0, i32 3
  %81 = load float*, float** %80, align 8
  %82 = load i32, i32* %11, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds float, float* %81, i64 %83
  %85 = load float, float* %84, align 4
  %86 = load float*, float** %5, align 8
  %87 = load i32, i32* %11, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds float, float* %86, i64 %88
  %90 = load float, float* %89, align 4
  %91 = fmul float %85, %90
  %92 = load i32, i32* %10, align 4
  %93 = icmp ne i32 %92, 0
  %94 = xor i1 %93, true
  %95 = zext i1 %94 to i32
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [2 x float], [2 x float]* %8, i64 0, i64 %96
  %98 = load float, float* %97, align 4
  %99 = fadd float %98, %91
  store float %99, float* %97, align 4
  br label %100

100:                                              ; preds = %54
  %101 = load i32, i32* %11, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %11, align 4
  br label %51

103:                                              ; preds = %51
  br label %104

104:                                              ; preds = %103, %43
  store i32 0, i32* %9, align 4
  %105 = getelementptr inbounds [2 x float], [2 x float]* %8, i64 0, i64 0
  %106 = load float, float* %105, align 4
  %107 = load %struct.cplane_s*, %struct.cplane_s** %7, align 8
  %108 = getelementptr inbounds %struct.cplane_s, %struct.cplane_s* %107, i32 0, i32 1
  %109 = load float, float* %108, align 4
  %110 = fcmp oge float %106, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %104
  store i32 1, i32* %9, align 4
  br label %112

112:                                              ; preds = %111, %104
  %113 = getelementptr inbounds [2 x float], [2 x float]* %8, i64 0, i64 1
  %114 = load float, float* %113, align 4
  %115 = load %struct.cplane_s*, %struct.cplane_s** %7, align 8
  %116 = getelementptr inbounds %struct.cplane_s, %struct.cplane_s* %115, i32 0, i32 1
  %117 = load float, float* %116, align 4
  %118 = fcmp olt float %114, %117
  br i1 %118, label %119, label %122

119:                                              ; preds = %112
  %120 = load i32, i32* %9, align 4
  %121 = or i32 %120, 2
  store i32 %121, i32* %9, align 4
  br label %122

122:                                              ; preds = %119, %112
  %123 = load i32, i32* %9, align 4
  store i32 %123, i32* %4, align 4
  br label %124

124:                                              ; preds = %122, %42, %41, %28
  %125 = load i32, i32* %4, align 4
  ret i32 %125
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
