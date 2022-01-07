; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_light.c_PointToPolygonFormFactor.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_light.c_PointToPolygonFormFactor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32* }

@MAX_POINTS_ON_WINDING = common dso_local global i32 0, align 4
@ONE_OVER_2PI = common dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @PointToPolygonFormFactor(i32 %0, i32 %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca float, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %7, align 8
  %19 = load i32, i32* @MAX_POINTS_ON_WINDING, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %12, align 8
  %22 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %13, align 8
  store i32 0, i32* %10, align 4
  br label %23

23:                                               ; preds = %52, %3
  %24 = load i32, i32* %10, align 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %55

29:                                               ; preds = %23
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %10, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %22, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @VectorSubtract(i32 %36, i32 %37, i32 %41)
  %43 = load i32, i32* %10, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %22, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %22, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = call float @VectorNormalize(i32 %46, i32 %50)
  br label %52

52:                                               ; preds = %29
  %53 = load i32, i32* %10, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %10, align 4
  br label %23

55:                                               ; preds = %23
  %56 = getelementptr inbounds i32, i32* %22, i64 0
  %57 = load i32, i32* %56, align 16
  %58 = load i32, i32* %10, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %22, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @VectorCopy(i32 %57, i32 %61)
  store float 0.000000e+00, float* %14, align 4
  store i32 0, i32* %10, align 4
  br label %63

63:                                               ; preds = %123, %55
  %64 = load i32, i32* %10, align 4
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp slt i32 %64, %67
  br i1 %68, label %69, label %126

69:                                               ; preds = %63
  %70 = load i32, i32* %10, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %11, align 4
  %72 = load i32, i32* %10, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %22, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %11, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %22, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = call float @DotProduct(i32 %75, i32 %79)
  store float %80, float* %15, align 4
  %81 = load float, float* %15, align 4
  %82 = fcmp ogt float %81, 1.000000e+00
  br i1 %82, label %83, label %84

83:                                               ; preds = %69
  store float 1.000000e+00, float* %15, align 4
  br label %89

84:                                               ; preds = %69
  %85 = load float, float* %15, align 4
  %86 = fcmp olt float %85, -1.000000e+00
  br i1 %86, label %87, label %88

87:                                               ; preds = %84
  store float -1.000000e+00, float* %15, align 4
  br label %88

88:                                               ; preds = %87, %84
  br label %89

89:                                               ; preds = %88, %83
  %90 = load float, float* %15, align 4
  %91 = call float @acos(float %90)
  store float %91, float* %16, align 4
  %92 = load i32, i32* %10, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %22, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %11, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %22, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %8, align 4
  %101 = call i32 @CrossProduct(i32 %95, i32 %99, i32 %100)
  %102 = load i32, i32* %8, align 4
  %103 = load i32, i32* %9, align 4
  %104 = call float @VectorNormalize(i32 %102, i32 %103)
  %105 = fcmp olt float %104, 0x3F1A36E2E0000000
  br i1 %105, label %106, label %107

106:                                              ; preds = %89
  br label %123

107:                                              ; preds = %89
  %108 = load i32, i32* %6, align 4
  %109 = load i32, i32* %9, align 4
  %110 = call float @DotProduct(i32 %108, i32 %109)
  store float %110, float* %17, align 4
  %111 = load float, float* %17, align 4
  %112 = load float, float* %16, align 4
  %113 = fmul float %111, %112
  %114 = load float, float* %14, align 4
  %115 = fadd float %114, %113
  store float %115, float* %14, align 4
  %116 = load float, float* %14, align 4
  %117 = fcmp ogt float %116, 0x4019333340000000
  br i1 %117, label %121, label %118

118:                                              ; preds = %107
  %119 = load float, float* %14, align 4
  %120 = fcmp olt float %119, 0xC019333340000000
  br i1 %120, label %121, label %122

121:                                              ; preds = %118, %107
  store float 0.000000e+00, float* %4, align 4
  store i32 1, i32* %18, align 4
  br label %131

122:                                              ; preds = %118
  br label %123

123:                                              ; preds = %122, %106
  %124 = load i32, i32* %10, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %10, align 4
  br label %63

126:                                              ; preds = %63
  %127 = load float, float* @ONE_OVER_2PI, align 4
  %128 = load float, float* %14, align 4
  %129 = fmul float %128, %127
  store float %129, float* %14, align 4
  %130 = load float, float* %14, align 4
  store float %130, float* %4, align 4
  store i32 1, i32* %18, align 4
  br label %131

131:                                              ; preds = %126, %121
  %132 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %132)
  %133 = load float, float* %4, align 4
  ret float %133
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @VectorSubtract(i32, i32, i32) #2

declare dso_local float @VectorNormalize(i32, i32) #2

declare dso_local i32 @VectorCopy(i32, i32) #2

declare dso_local float @DotProduct(i32, i32) #2

declare dso_local float @acos(float) #2

declare dso_local i32 @CrossProduct(i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
