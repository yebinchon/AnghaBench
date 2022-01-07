; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_cm_trace.c_CM_DistanceFromLineSquared.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_cm_trace.c_CM_DistanceFromLineSquared.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @CM_DistanceFromLineSquared(i64* %0, i64* %1, i64* %2, i64* %3) #0 {
  %5 = alloca float, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  store i64* %0, i64** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  %13 = load i64*, i64** %6, align 8
  %14 = load i64*, i64** %7, align 8
  %15 = load i64*, i64** %9, align 8
  %16 = load i64*, i64** %10, align 8
  %17 = call i32 @CM_ProjectPointOntoVector(i64* %13, i64* %14, i64* %15, i64* %16)
  store i32 0, i32* %12, align 4
  br label %18

18:                                               ; preds = %71, %4
  %19 = load i32, i32* %12, align 4
  %20 = icmp slt i32 %19, 3
  br i1 %20, label %21, label %74

21:                                               ; preds = %18
  %22 = load i64*, i64** %10, align 8
  %23 = load i32, i32* %12, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %22, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = load i64*, i64** %7, align 8
  %28 = load i32, i32* %12, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i64, i64* %27, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = icmp sgt i64 %26, %31
  br i1 %32, label %33, label %45

33:                                               ; preds = %21
  %34 = load i64*, i64** %10, align 8
  %35 = load i32, i32* %12, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i64, i64* %34, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = load i64*, i64** %8, align 8
  %40 = load i32, i32* %12, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i64, i64* %39, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = icmp sgt i64 %38, %43
  br i1 %44, label %69, label %45

45:                                               ; preds = %33, %21
  %46 = load i64*, i64** %10, align 8
  %47 = load i32, i32* %12, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %46, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = load i64*, i64** %7, align 8
  %52 = load i32, i32* %12, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i64, i64* %51, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = icmp slt i64 %50, %55
  br i1 %56, label %57, label %70

57:                                               ; preds = %45
  %58 = load i64*, i64** %10, align 8
  %59 = load i32, i32* %12, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i64, i64* %58, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = load i64*, i64** %8, align 8
  %64 = load i32, i32* %12, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i64, i64* %63, i64 %65
  %67 = load i64, i64* %66, align 8
  %68 = icmp slt i64 %62, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %57, %33
  br label %74

70:                                               ; preds = %57, %45
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %12, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %12, align 4
  br label %18

74:                                               ; preds = %69, %18
  %75 = load i32, i32* %12, align 4
  %76 = icmp slt i32 %75, 3
  br i1 %76, label %77, label %116

77:                                               ; preds = %74
  %78 = load i64*, i64** %10, align 8
  %79 = load i32, i32* %12, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i64, i64* %78, i64 %80
  %82 = load i64, i64* %81, align 8
  %83 = load i64*, i64** %7, align 8
  %84 = load i32, i32* %12, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i64, i64* %83, i64 %85
  %87 = load i64, i64* %86, align 8
  %88 = sub nsw i64 %82, %87
  %89 = call i64 @fabs(i64 %88)
  %90 = load i64*, i64** %10, align 8
  %91 = load i32, i32* %12, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i64, i64* %90, i64 %92
  %94 = load i64, i64* %93, align 8
  %95 = load i64*, i64** %8, align 8
  %96 = load i32, i32* %12, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i64, i64* %95, i64 %97
  %99 = load i64, i64* %98, align 8
  %100 = sub nsw i64 %94, %99
  %101 = call i64 @fabs(i64 %100)
  %102 = icmp slt i64 %89, %101
  br i1 %102, label %103, label %108

103:                                              ; preds = %77
  %104 = load i64*, i64** %6, align 8
  %105 = load i64*, i64** %7, align 8
  %106 = load i64*, i64** %11, align 8
  %107 = call i32 @VectorSubtract(i64* %104, i64* %105, i64* %106)
  br label %113

108:                                              ; preds = %77
  %109 = load i64*, i64** %6, align 8
  %110 = load i64*, i64** %8, align 8
  %111 = load i64*, i64** %11, align 8
  %112 = call i32 @VectorSubtract(i64* %109, i64* %110, i64* %111)
  br label %113

113:                                              ; preds = %108, %103
  %114 = load i64*, i64** %11, align 8
  %115 = call float @VectorLengthSquared(i64* %114)
  store float %115, float* %5, align 4
  br label %123

116:                                              ; preds = %74
  %117 = load i64*, i64** %6, align 8
  %118 = load i64*, i64** %10, align 8
  %119 = load i64*, i64** %11, align 8
  %120 = call i32 @VectorSubtract(i64* %117, i64* %118, i64* %119)
  %121 = load i64*, i64** %11, align 8
  %122 = call float @VectorLengthSquared(i64* %121)
  store float %122, float* %5, align 4
  br label %123

123:                                              ; preds = %116, %113
  %124 = load float, float* %5, align 4
  ret float %124
}

declare dso_local i32 @CM_ProjectPointOntoVector(i64*, i64*, i64*, i64*) #1

declare dso_local i64 @fabs(i64) #1

declare dso_local i32 @VectorSubtract(i64*, i64*, i64*) #1

declare dso_local float @VectorLengthSquared(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
