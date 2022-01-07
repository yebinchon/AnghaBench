; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_model_iqm.c_InterpolateMatrix.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_model_iqm.c_InterpolateMatrix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float*, float*, float, float*)* @InterpolateMatrix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @InterpolateMatrix(float* %0, float* %1, float %2, float* %3) #0 {
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca float, align 4
  %8 = alloca float*, align 8
  %9 = alloca float, align 4
  store float* %0, float** %5, align 8
  store float* %1, float** %6, align 8
  store float %2, float* %7, align 4
  store float* %3, float** %8, align 8
  %10 = load float, float* %7, align 4
  %11 = fsub float 1.000000e+00, %10
  store float %11, float* %9, align 4
  %12 = load float*, float** %5, align 8
  %13 = getelementptr inbounds float, float* %12, i64 0
  %14 = load float, float* %13, align 4
  %15 = load float, float* %9, align 4
  %16 = fmul float %14, %15
  %17 = load float*, float** %6, align 8
  %18 = getelementptr inbounds float, float* %17, i64 0
  %19 = load float, float* %18, align 4
  %20 = load float, float* %7, align 4
  %21 = fmul float %19, %20
  %22 = fadd float %16, %21
  %23 = load float*, float** %8, align 8
  %24 = getelementptr inbounds float, float* %23, i64 0
  store float %22, float* %24, align 4
  %25 = load float*, float** %5, align 8
  %26 = getelementptr inbounds float, float* %25, i64 1
  %27 = load float, float* %26, align 4
  %28 = load float, float* %9, align 4
  %29 = fmul float %27, %28
  %30 = load float*, float** %6, align 8
  %31 = getelementptr inbounds float, float* %30, i64 1
  %32 = load float, float* %31, align 4
  %33 = load float, float* %7, align 4
  %34 = fmul float %32, %33
  %35 = fadd float %29, %34
  %36 = load float*, float** %8, align 8
  %37 = getelementptr inbounds float, float* %36, i64 1
  store float %35, float* %37, align 4
  %38 = load float*, float** %5, align 8
  %39 = getelementptr inbounds float, float* %38, i64 2
  %40 = load float, float* %39, align 4
  %41 = load float, float* %9, align 4
  %42 = fmul float %40, %41
  %43 = load float*, float** %6, align 8
  %44 = getelementptr inbounds float, float* %43, i64 2
  %45 = load float, float* %44, align 4
  %46 = load float, float* %7, align 4
  %47 = fmul float %45, %46
  %48 = fadd float %42, %47
  %49 = load float*, float** %8, align 8
  %50 = getelementptr inbounds float, float* %49, i64 2
  store float %48, float* %50, align 4
  %51 = load float*, float** %5, align 8
  %52 = getelementptr inbounds float, float* %51, i64 3
  %53 = load float, float* %52, align 4
  %54 = load float, float* %9, align 4
  %55 = fmul float %53, %54
  %56 = load float*, float** %6, align 8
  %57 = getelementptr inbounds float, float* %56, i64 3
  %58 = load float, float* %57, align 4
  %59 = load float, float* %7, align 4
  %60 = fmul float %58, %59
  %61 = fadd float %55, %60
  %62 = load float*, float** %8, align 8
  %63 = getelementptr inbounds float, float* %62, i64 3
  store float %61, float* %63, align 4
  %64 = load float*, float** %5, align 8
  %65 = getelementptr inbounds float, float* %64, i64 4
  %66 = load float, float* %65, align 4
  %67 = load float, float* %9, align 4
  %68 = fmul float %66, %67
  %69 = load float*, float** %6, align 8
  %70 = getelementptr inbounds float, float* %69, i64 4
  %71 = load float, float* %70, align 4
  %72 = load float, float* %7, align 4
  %73 = fmul float %71, %72
  %74 = fadd float %68, %73
  %75 = load float*, float** %8, align 8
  %76 = getelementptr inbounds float, float* %75, i64 4
  store float %74, float* %76, align 4
  %77 = load float*, float** %5, align 8
  %78 = getelementptr inbounds float, float* %77, i64 5
  %79 = load float, float* %78, align 4
  %80 = load float, float* %9, align 4
  %81 = fmul float %79, %80
  %82 = load float*, float** %6, align 8
  %83 = getelementptr inbounds float, float* %82, i64 5
  %84 = load float, float* %83, align 4
  %85 = load float, float* %7, align 4
  %86 = fmul float %84, %85
  %87 = fadd float %81, %86
  %88 = load float*, float** %8, align 8
  %89 = getelementptr inbounds float, float* %88, i64 5
  store float %87, float* %89, align 4
  %90 = load float*, float** %5, align 8
  %91 = getelementptr inbounds float, float* %90, i64 6
  %92 = load float, float* %91, align 4
  %93 = load float, float* %9, align 4
  %94 = fmul float %92, %93
  %95 = load float*, float** %6, align 8
  %96 = getelementptr inbounds float, float* %95, i64 6
  %97 = load float, float* %96, align 4
  %98 = load float, float* %7, align 4
  %99 = fmul float %97, %98
  %100 = fadd float %94, %99
  %101 = load float*, float** %8, align 8
  %102 = getelementptr inbounds float, float* %101, i64 6
  store float %100, float* %102, align 4
  %103 = load float*, float** %5, align 8
  %104 = getelementptr inbounds float, float* %103, i64 7
  %105 = load float, float* %104, align 4
  %106 = load float, float* %9, align 4
  %107 = fmul float %105, %106
  %108 = load float*, float** %6, align 8
  %109 = getelementptr inbounds float, float* %108, i64 7
  %110 = load float, float* %109, align 4
  %111 = load float, float* %7, align 4
  %112 = fmul float %110, %111
  %113 = fadd float %107, %112
  %114 = load float*, float** %8, align 8
  %115 = getelementptr inbounds float, float* %114, i64 7
  store float %113, float* %115, align 4
  %116 = load float*, float** %5, align 8
  %117 = getelementptr inbounds float, float* %116, i64 8
  %118 = load float, float* %117, align 4
  %119 = load float, float* %9, align 4
  %120 = fmul float %118, %119
  %121 = load float*, float** %6, align 8
  %122 = getelementptr inbounds float, float* %121, i64 8
  %123 = load float, float* %122, align 4
  %124 = load float, float* %7, align 4
  %125 = fmul float %123, %124
  %126 = fadd float %120, %125
  %127 = load float*, float** %8, align 8
  %128 = getelementptr inbounds float, float* %127, i64 8
  store float %126, float* %128, align 4
  %129 = load float*, float** %5, align 8
  %130 = getelementptr inbounds float, float* %129, i64 9
  %131 = load float, float* %130, align 4
  %132 = load float, float* %9, align 4
  %133 = fmul float %131, %132
  %134 = load float*, float** %6, align 8
  %135 = getelementptr inbounds float, float* %134, i64 9
  %136 = load float, float* %135, align 4
  %137 = load float, float* %7, align 4
  %138 = fmul float %136, %137
  %139 = fadd float %133, %138
  %140 = load float*, float** %8, align 8
  %141 = getelementptr inbounds float, float* %140, i64 9
  store float %139, float* %141, align 4
  %142 = load float*, float** %5, align 8
  %143 = getelementptr inbounds float, float* %142, i64 10
  %144 = load float, float* %143, align 4
  %145 = load float, float* %9, align 4
  %146 = fmul float %144, %145
  %147 = load float*, float** %6, align 8
  %148 = getelementptr inbounds float, float* %147, i64 10
  %149 = load float, float* %148, align 4
  %150 = load float, float* %7, align 4
  %151 = fmul float %149, %150
  %152 = fadd float %146, %151
  %153 = load float*, float** %8, align 8
  %154 = getelementptr inbounds float, float* %153, i64 10
  store float %152, float* %154, align 4
  %155 = load float*, float** %5, align 8
  %156 = getelementptr inbounds float, float* %155, i64 11
  %157 = load float, float* %156, align 4
  %158 = load float, float* %9, align 4
  %159 = fmul float %157, %158
  %160 = load float*, float** %6, align 8
  %161 = getelementptr inbounds float, float* %160, i64 11
  %162 = load float, float* %161, align 4
  %163 = load float, float* %7, align 4
  %164 = fmul float %162, %163
  %165 = fadd float %159, %164
  %166 = load float*, float** %8, align 8
  %167 = getelementptr inbounds float, float* %166, i64 11
  store float %165, float* %167, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
