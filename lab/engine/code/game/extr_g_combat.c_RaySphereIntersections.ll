; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_g_combat.c_RaySphereIntersections.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_g_combat.c_RaySphereIntersections.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RaySphereIntersections(i32* %0, float %1, i32* %2, i32* %3, i32** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca float, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32**, align 8
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  store i32* %0, i32** %7, align 8
  store float %1, float* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32** %4, i32*** %11, align 8
  %16 = load i32*, i32** %10, align 8
  %17 = call i32 @VectorNormalize(i32* %16)
  %18 = load i32*, i32** %10, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32*, i32** %9, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32*, i32** %7, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = sub nsw i32 %23, %26
  %28 = mul nsw i32 %20, %27
  %29 = load i32*, i32** %10, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32*, i32** %9, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** %7, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  %37 = load i32, i32* %36, align 4
  %38 = sub nsw i32 %34, %37
  %39 = mul nsw i32 %31, %38
  %40 = add nsw i32 %28, %39
  %41 = load i32*, i32** %10, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 2
  %43 = load i32, i32* %42, align 4
  %44 = load i32*, i32** %9, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 2
  %46 = load i32, i32* %45, align 4
  %47 = load i32*, i32** %7, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 2
  %49 = load i32, i32* %48, align 4
  %50 = sub nsw i32 %46, %49
  %51 = mul nsw i32 %43, %50
  %52 = add nsw i32 %40, %51
  %53 = mul nsw i32 2, %52
  %54 = sitofp i32 %53 to float
  store float %54, float* %12, align 4
  %55 = load i32*, i32** %9, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32*, i32** %7, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  %60 = load i32, i32* %59, align 4
  %61 = sub nsw i32 %57, %60
  %62 = load i32*, i32** %9, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32*, i32** %7, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  %67 = load i32, i32* %66, align 4
  %68 = sub nsw i32 %64, %67
  %69 = mul nsw i32 %61, %68
  %70 = load i32*, i32** %9, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32*, i32** %7, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 1
  %75 = load i32, i32* %74, align 4
  %76 = sub nsw i32 %72, %75
  %77 = load i32*, i32** %9, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32*, i32** %7, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 1
  %82 = load i32, i32* %81, align 4
  %83 = sub nsw i32 %79, %82
  %84 = mul nsw i32 %76, %83
  %85 = add nsw i32 %69, %84
  %86 = load i32*, i32** %9, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 2
  %88 = load i32, i32* %87, align 4
  %89 = load i32*, i32** %7, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 2
  %91 = load i32, i32* %90, align 4
  %92 = sub nsw i32 %88, %91
  %93 = load i32*, i32** %9, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 2
  %95 = load i32, i32* %94, align 4
  %96 = load i32*, i32** %7, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 2
  %98 = load i32, i32* %97, align 4
  %99 = sub nsw i32 %95, %98
  %100 = mul nsw i32 %92, %99
  %101 = add nsw i32 %85, %100
  %102 = sitofp i32 %101 to float
  %103 = load float, float* %8, align 4
  %104 = load float, float* %8, align 4
  %105 = fmul float %103, %104
  %106 = fsub float %102, %105
  store float %106, float* %13, align 4
  %107 = load float, float* %12, align 4
  %108 = load float, float* %12, align 4
  %109 = fmul float %107, %108
  %110 = load float, float* %13, align 4
  %111 = fmul float 4.000000e+00, %110
  %112 = fsub float %109, %111
  store float %112, float* %14, align 4
  %113 = load float, float* %14, align 4
  %114 = fcmp ogt float %113, 0.000000e+00
  br i1 %114, label %115, label %142

115:                                              ; preds = %5
  %116 = load float, float* %12, align 4
  %117 = fneg float %116
  %118 = load float, float* %14, align 4
  %119 = call float @sqrt(float %118)
  %120 = fadd float %117, %119
  %121 = fdiv float %120, 2.000000e+00
  store float %121, float* %15, align 4
  %122 = load i32*, i32** %9, align 8
  %123 = load float, float* %15, align 4
  %124 = load i32*, i32** %10, align 8
  %125 = load i32**, i32*** %11, align 8
  %126 = getelementptr inbounds i32*, i32** %125, i64 0
  %127 = load i32*, i32** %126, align 8
  %128 = call i32 @VectorMA(i32* %122, float %123, i32* %124, i32* %127)
  %129 = load float, float* %12, align 4
  %130 = fneg float %129
  %131 = load float, float* %14, align 4
  %132 = call float @sqrt(float %131)
  %133 = fsub float %130, %132
  %134 = fdiv float %133, 2.000000e+00
  store float %134, float* %15, align 4
  %135 = load i32*, i32** %9, align 8
  %136 = load float, float* %15, align 4
  %137 = load i32*, i32** %10, align 8
  %138 = load i32**, i32*** %11, align 8
  %139 = getelementptr inbounds i32*, i32** %138, i64 1
  %140 = load i32*, i32** %139, align 8
  %141 = call i32 @VectorMA(i32* %135, float %136, i32* %137, i32* %140)
  store i32 2, i32* %6, align 4
  br label %158

142:                                              ; preds = %5
  %143 = load float, float* %14, align 4
  %144 = fcmp oeq float %143, 0.000000e+00
  br i1 %144, label %145, label %156

145:                                              ; preds = %142
  %146 = load float, float* %12, align 4
  %147 = fneg float %146
  %148 = fdiv float %147, 2.000000e+00
  store float %148, float* %15, align 4
  %149 = load i32*, i32** %9, align 8
  %150 = load float, float* %15, align 4
  %151 = load i32*, i32** %10, align 8
  %152 = load i32**, i32*** %11, align 8
  %153 = getelementptr inbounds i32*, i32** %152, i64 0
  %154 = load i32*, i32** %153, align 8
  %155 = call i32 @VectorMA(i32* %149, float %150, i32* %151, i32* %154)
  store i32 1, i32* %6, align 4
  br label %158

156:                                              ; preds = %142
  br label %157

157:                                              ; preds = %156
  store i32 0, i32* %6, align 4
  br label %158

158:                                              ; preds = %157, %145, %115
  %159 = load i32, i32* %6, align 4
  ret i32 %159
}

declare dso_local i32 @VectorNormalize(i32*) #1

declare dso_local float @sqrt(float) #1

declare dso_local i32 @VectorMA(i32*, float, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
