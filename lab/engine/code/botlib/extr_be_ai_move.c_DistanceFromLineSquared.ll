; ModuleID = '/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_ai_move.c_DistanceFromLineSquared.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_ai_move.c_DistanceFromLineSquared.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @DistanceFromLineSquared(i64* %0, i64* %1, i64* %2) #0 {
  %4 = alloca float, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  store i64* %0, i64** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  %11 = load i64*, i64** %5, align 8
  %12 = load i64*, i64** %6, align 8
  %13 = load i64*, i64** %7, align 8
  %14 = load i64*, i64** %8, align 8
  %15 = call i32 @AAS_ProjectPointOntoVector(i64* %11, i64* %12, i64* %13, i64* %14)
  store i32 0, i32* %10, align 4
  br label %16

16:                                               ; preds = %69, %3
  %17 = load i32, i32* %10, align 4
  %18 = icmp slt i32 %17, 3
  br i1 %18, label %19, label %72

19:                                               ; preds = %16
  %20 = load i64*, i64** %8, align 8
  %21 = load i32, i32* %10, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i64, i64* %20, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = load i64*, i64** %6, align 8
  %26 = load i32, i32* %10, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i64, i64* %25, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = icmp sgt i64 %24, %29
  br i1 %30, label %31, label %43

31:                                               ; preds = %19
  %32 = load i64*, i64** %8, align 8
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = load i64*, i64** %7, align 8
  %38 = load i32, i32* %10, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i64, i64* %37, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = icmp sgt i64 %36, %41
  br i1 %42, label %67, label %43

43:                                               ; preds = %31, %19
  %44 = load i64*, i64** %8, align 8
  %45 = load i32, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i64, i64* %44, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = load i64*, i64** %6, align 8
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i64, i64* %49, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = icmp slt i64 %48, %53
  br i1 %54, label %55, label %68

55:                                               ; preds = %43
  %56 = load i64*, i64** %8, align 8
  %57 = load i32, i32* %10, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i64, i64* %56, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = load i64*, i64** %7, align 8
  %62 = load i32, i32* %10, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i64, i64* %61, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = icmp slt i64 %60, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %55, %31
  br label %72

68:                                               ; preds = %55, %43
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %10, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %10, align 4
  br label %16

72:                                               ; preds = %67, %16
  %73 = load i32, i32* %10, align 4
  %74 = icmp slt i32 %73, 3
  br i1 %74, label %75, label %114

75:                                               ; preds = %72
  %76 = load i64*, i64** %8, align 8
  %77 = load i32, i32* %10, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i64, i64* %76, i64 %78
  %80 = load i64, i64* %79, align 8
  %81 = load i64*, i64** %6, align 8
  %82 = load i32, i32* %10, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i64, i64* %81, i64 %83
  %85 = load i64, i64* %84, align 8
  %86 = sub nsw i64 %80, %85
  %87 = call i64 @fabs(i64 %86)
  %88 = load i64*, i64** %8, align 8
  %89 = load i32, i32* %10, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i64, i64* %88, i64 %90
  %92 = load i64, i64* %91, align 8
  %93 = load i64*, i64** %7, align 8
  %94 = load i32, i32* %10, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i64, i64* %93, i64 %95
  %97 = load i64, i64* %96, align 8
  %98 = sub nsw i64 %92, %97
  %99 = call i64 @fabs(i64 %98)
  %100 = icmp slt i64 %87, %99
  br i1 %100, label %101, label %106

101:                                              ; preds = %75
  %102 = load i64*, i64** %5, align 8
  %103 = load i64*, i64** %6, align 8
  %104 = load i64*, i64** %9, align 8
  %105 = call i32 @VectorSubtract(i64* %102, i64* %103, i64* %104)
  br label %111

106:                                              ; preds = %75
  %107 = load i64*, i64** %5, align 8
  %108 = load i64*, i64** %7, align 8
  %109 = load i64*, i64** %9, align 8
  %110 = call i32 @VectorSubtract(i64* %107, i64* %108, i64* %109)
  br label %111

111:                                              ; preds = %106, %101
  %112 = load i64*, i64** %9, align 8
  %113 = call float @VectorLengthSquared(i64* %112)
  store float %113, float* %4, align 4
  br label %121

114:                                              ; preds = %72
  %115 = load i64*, i64** %5, align 8
  %116 = load i64*, i64** %8, align 8
  %117 = load i64*, i64** %9, align 8
  %118 = call i32 @VectorSubtract(i64* %115, i64* %116, i64* %117)
  %119 = load i64*, i64** %9, align 8
  %120 = call float @VectorLengthSquared(i64* %119)
  store float %120, float* %4, align 4
  br label %121

121:                                              ; preds = %114, %111
  %122 = load float, float* %4, align 4
  ret float %122
}

declare dso_local i32 @AAS_ProjectPointOntoVector(i64*, i64*, i64*, i64*) #1

declare dso_local i64 @fabs(i64) #1

declare dso_local i32 @VectorSubtract(i64*, i64*, i64*) #1

declare dso_local float @VectorLengthSquared(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
