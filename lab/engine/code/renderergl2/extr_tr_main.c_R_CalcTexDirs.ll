; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_main.c_R_CalcTexDirs.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_main.c_R_CalcTexDirs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @R_CalcTexDirs(float* %0, float* %1, float* %2, float* %3, float* %4, float* %5, float* %6, float* %7) #0 {
  %9 = alloca float*, align 8
  %10 = alloca float*, align 8
  %11 = alloca float*, align 8
  %12 = alloca float*, align 8
  %13 = alloca float*, align 8
  %14 = alloca float*, align 8
  %15 = alloca float*, align 8
  %16 = alloca float*, align 8
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  %23 = alloca float, align 4
  %24 = alloca float, align 4
  %25 = alloca float, align 4
  %26 = alloca float, align 4
  %27 = alloca float, align 4
  store float* %0, float** %9, align 8
  store float* %1, float** %10, align 8
  store float* %2, float** %11, align 8
  store float* %3, float** %12, align 8
  store float* %4, float** %13, align 8
  store float* %5, float** %14, align 8
  store float* %6, float** %15, align 8
  store float* %7, float** %16, align 8
  %28 = load float*, float** %12, align 8
  %29 = getelementptr inbounds float, float* %28, i64 0
  %30 = load float, float* %29, align 4
  %31 = load float*, float** %11, align 8
  %32 = getelementptr inbounds float, float* %31, i64 0
  %33 = load float, float* %32, align 4
  %34 = fsub float %30, %33
  store float %34, float* %17, align 4
  %35 = load float*, float** %13, align 8
  %36 = getelementptr inbounds float, float* %35, i64 0
  %37 = load float, float* %36, align 4
  %38 = load float*, float** %11, align 8
  %39 = getelementptr inbounds float, float* %38, i64 0
  %40 = load float, float* %39, align 4
  %41 = fsub float %37, %40
  store float %41, float* %18, align 4
  %42 = load float*, float** %12, align 8
  %43 = getelementptr inbounds float, float* %42, i64 1
  %44 = load float, float* %43, align 4
  %45 = load float*, float** %11, align 8
  %46 = getelementptr inbounds float, float* %45, i64 1
  %47 = load float, float* %46, align 4
  %48 = fsub float %44, %47
  store float %48, float* %19, align 4
  %49 = load float*, float** %13, align 8
  %50 = getelementptr inbounds float, float* %49, i64 1
  %51 = load float, float* %50, align 4
  %52 = load float*, float** %11, align 8
  %53 = getelementptr inbounds float, float* %52, i64 1
  %54 = load float, float* %53, align 4
  %55 = fsub float %51, %54
  store float %55, float* %20, align 4
  %56 = load float*, float** %12, align 8
  %57 = getelementptr inbounds float, float* %56, i64 2
  %58 = load float, float* %57, align 4
  %59 = load float*, float** %11, align 8
  %60 = getelementptr inbounds float, float* %59, i64 2
  %61 = load float, float* %60, align 4
  %62 = fsub float %58, %61
  store float %62, float* %21, align 4
  %63 = load float*, float** %13, align 8
  %64 = getelementptr inbounds float, float* %63, i64 2
  %65 = load float, float* %64, align 4
  %66 = load float*, float** %11, align 8
  %67 = getelementptr inbounds float, float* %66, i64 2
  %68 = load float, float* %67, align 4
  %69 = fsub float %65, %68
  store float %69, float* %22, align 4
  %70 = load float*, float** %15, align 8
  %71 = getelementptr inbounds float, float* %70, i64 0
  %72 = load float, float* %71, align 4
  %73 = load float*, float** %14, align 8
  %74 = getelementptr inbounds float, float* %73, i64 0
  %75 = load float, float* %74, align 4
  %76 = fsub float %72, %75
  store float %76, float* %23, align 4
  %77 = load float*, float** %16, align 8
  %78 = getelementptr inbounds float, float* %77, i64 0
  %79 = load float, float* %78, align 4
  %80 = load float*, float** %14, align 8
  %81 = getelementptr inbounds float, float* %80, i64 0
  %82 = load float, float* %81, align 4
  %83 = fsub float %79, %82
  store float %83, float* %24, align 4
  %84 = load float*, float** %15, align 8
  %85 = getelementptr inbounds float, float* %84, i64 1
  %86 = load float, float* %85, align 4
  %87 = load float*, float** %14, align 8
  %88 = getelementptr inbounds float, float* %87, i64 1
  %89 = load float, float* %88, align 4
  %90 = fsub float %86, %89
  store float %90, float* %25, align 4
  %91 = load float*, float** %16, align 8
  %92 = getelementptr inbounds float, float* %91, i64 1
  %93 = load float, float* %92, align 4
  %94 = load float*, float** %14, align 8
  %95 = getelementptr inbounds float, float* %94, i64 1
  %96 = load float, float* %95, align 4
  %97 = fsub float %93, %96
  store float %97, float* %26, align 4
  %98 = load float, float* %23, align 4
  %99 = load float, float* %26, align 4
  %100 = fmul float %98, %99
  %101 = load float, float* %24, align 4
  %102 = load float, float* %25, align 4
  %103 = fmul float %101, %102
  %104 = fsub float %100, %103
  store float %104, float* %27, align 4
  %105 = load float, float* %27, align 4
  %106 = fcmp une float %105, 0.000000e+00
  br i1 %106, label %107, label %110

107:                                              ; preds = %8
  %108 = load float, float* %27, align 4
  %109 = fdiv float 1.000000e+00, %108
  store float %109, float* %27, align 4
  br label %110

110:                                              ; preds = %107, %8
  %111 = load float*, float** %9, align 8
  %112 = load float, float* %26, align 4
  %113 = load float, float* %17, align 4
  %114 = fmul float %112, %113
  %115 = load float, float* %25, align 4
  %116 = load float, float* %18, align 4
  %117 = fmul float %115, %116
  %118 = fsub float %114, %117
  %119 = load float, float* %27, align 4
  %120 = fmul float %118, %119
  %121 = load float, float* %26, align 4
  %122 = load float, float* %19, align 4
  %123 = fmul float %121, %122
  %124 = load float, float* %25, align 4
  %125 = load float, float* %20, align 4
  %126 = fmul float %124, %125
  %127 = fsub float %123, %126
  %128 = load float, float* %27, align 4
  %129 = fmul float %127, %128
  %130 = load float, float* %26, align 4
  %131 = load float, float* %21, align 4
  %132 = fmul float %130, %131
  %133 = load float, float* %25, align 4
  %134 = load float, float* %22, align 4
  %135 = fmul float %133, %134
  %136 = fsub float %132, %135
  %137 = load float, float* %27, align 4
  %138 = fmul float %136, %137
  %139 = call i32 @VectorSet(float* %111, float %120, float %129, float %138)
  %140 = load float*, float** %10, align 8
  %141 = load float, float* %23, align 4
  %142 = load float, float* %18, align 4
  %143 = fmul float %141, %142
  %144 = load float, float* %24, align 4
  %145 = load float, float* %17, align 4
  %146 = fmul float %144, %145
  %147 = fsub float %143, %146
  %148 = load float, float* %27, align 4
  %149 = fmul float %147, %148
  %150 = load float, float* %23, align 4
  %151 = load float, float* %20, align 4
  %152 = fmul float %150, %151
  %153 = load float, float* %24, align 4
  %154 = load float, float* %19, align 4
  %155 = fmul float %153, %154
  %156 = fsub float %152, %155
  %157 = load float, float* %27, align 4
  %158 = fmul float %156, %157
  %159 = load float, float* %23, align 4
  %160 = load float, float* %22, align 4
  %161 = fmul float %159, %160
  %162 = load float, float* %24, align 4
  %163 = load float, float* %21, align 4
  %164 = fmul float %162, %163
  %165 = fsub float %161, %164
  %166 = load float, float* %27, align 4
  %167 = fmul float %165, %166
  %168 = call i32 @VectorSet(float* %140, float %149, float %158, float %167)
  ret void
}

declare dso_local i32 @VectorSet(float*, float, float, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
