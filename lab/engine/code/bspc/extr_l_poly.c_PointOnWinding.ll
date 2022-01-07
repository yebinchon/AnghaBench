; ModuleID = '/home/carl/AnghaBench/lab/engine/code/bspc/extr_l_poly.c_PointOnWinding.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/bspc/extr_l_poly.c_PointOnWinding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32* }

@MELT_ON_EPSILON = common dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PointOnWinding(%struct.TYPE_3__* %0, i32 %1, float %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca float, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %7, align 8
  store i32 %1, i32* %8, align 4
  store float %2, float* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %20 = load i32*, i32** %11, align 8
  store i32 0, i32* %20, align 4
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call double @DotProduct(i32 %21, i32 %22)
  %24 = load float, float* %9, align 4
  %25 = fpext float %24 to double
  %26 = fsub double %23, %25
  %27 = fptrunc double %26 to float
  store float %27, float* %19, align 4
  %28 = load float, float* %19, align 4
  %29 = load float, float* @MELT_ON_EPSILON, align 4
  %30 = fneg float %29
  %31 = fcmp olt float %28, %30
  br i1 %31, label %36, label %32

32:                                               ; preds = %5
  %33 = load float, float* %19, align 4
  %34 = load float, float* @MELT_ON_EPSILON, align 4
  %35 = fcmp ogt float %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %32, %5
  store i32 0, i32* %6, align 4
  br label %143

37:                                               ; preds = %32
  store i32 0, i32* %12, align 4
  br label %38

38:                                               ; preds = %139, %37
  %39 = load i32, i32* %12, align 4
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %44, label %142

44:                                               ; preds = %38
  %45 = load i32, i32* %12, align 4
  %46 = add nsw i32 %45, 1
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = srem i32 %46, %49
  store i32 %50, i32* %13, align 4
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %13, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %12, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %17, align 4
  %66 = call i32 @VectorSubtract(i32 %57, i32 %64, i32 %65)
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* %17, align 4
  %69 = load i32, i32* %16, align 4
  %70 = call i32 @CrossProduct(i32 %67, i32 %68, i32 %69)
  %71 = load i32, i32* %16, align 4
  %72 = call double @VectorNormalize(i32 %71)
  %73 = load i32, i32* %16, align 4
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %12, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = call double @DotProduct(i32 %73, i32 %80)
  %82 = fptrunc double %81 to float
  store float %82, float* %18, align 4
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* %16, align 4
  %85 = call double @DotProduct(i32 %83, i32 %84)
  %86 = load float, float* %18, align 4
  %87 = fpext float %86 to double
  %88 = fsub double %85, %87
  %89 = fptrunc double %88 to float
  store float %89, float* %19, align 4
  %90 = load float, float* %19, align 4
  %91 = load float, float* @MELT_ON_EPSILON, align 4
  %92 = fneg float %91
  %93 = fcmp olt float %90, %92
  br i1 %93, label %98, label %94

94:                                               ; preds = %44
  %95 = load float, float* %19, align 4
  %96 = load float, float* @MELT_ON_EPSILON, align 4
  %97 = fcmp ogt float %95, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %94, %44
  br label %139

99:                                               ; preds = %94
  %100 = load i32, i32* %10, align 4
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %12, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %14, align 4
  %109 = call i32 @VectorSubtract(i32 %100, i32 %107, i32 %108)
  %110 = load i32, i32* %10, align 4
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 1
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %13, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %15, align 4
  %119 = call i32 @VectorSubtract(i32 %110, i32 %117, i32 %118)
  %120 = load i32, i32* %14, align 4
  %121 = call double @VectorNormalize(i32 %120)
  %122 = fcmp olt double %121, 5.000000e-01
  br i1 %122, label %123, label %124

123:                                              ; preds = %99
  store i32 0, i32* %6, align 4
  br label %143

124:                                              ; preds = %99
  %125 = load i32, i32* %15, align 4
  %126 = call double @VectorNormalize(i32 %125)
  %127 = fcmp olt double %126, 5.000000e-01
  br i1 %127, label %128, label %129

128:                                              ; preds = %124
  store i32 0, i32* %6, align 4
  br label %143

129:                                              ; preds = %124
  %130 = load i32, i32* %14, align 4
  %131 = load i32, i32* %15, align 4
  %132 = call double @DotProduct(i32 %130, i32 %131)
  %133 = fcmp olt double %132, 0xBFEFAE147AE147AE
  br i1 %133, label %134, label %138

134:                                              ; preds = %129
  %135 = load i32, i32* %12, align 4
  %136 = add nsw i32 %135, 1
  %137 = load i32*, i32** %11, align 8
  store i32 %136, i32* %137, align 4
  store i32 1, i32* %6, align 4
  br label %143

138:                                              ; preds = %129
  br label %139

139:                                              ; preds = %138, %98
  %140 = load i32, i32* %12, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %12, align 4
  br label %38

142:                                              ; preds = %38
  store i32 0, i32* %6, align 4
  br label %143

143:                                              ; preds = %142, %134, %128, %123, %36
  %144 = load i32, i32* %6, align 4
  ret i32 %144
}

declare dso_local double @DotProduct(i32, i32) #1

declare dso_local i32 @VectorSubtract(i32, i32, i32) #1

declare dso_local i32 @CrossProduct(i32, i32, i32) #1

declare dso_local double @VectorNormalize(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
