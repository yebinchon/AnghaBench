; ModuleID = '/home/carl/AnghaBench/lab/q3map2/libs/mathlib/extr_m4x4.c_m4x4_transform_vec4.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/libs/mathlib/extr_m4x4.c_m4x4_transform_vec4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @m4x4_transform_vec4(float* %0, float* %1) #0 {
  %3 = alloca float*, align 8
  %4 = alloca float*, align 8
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  store float* %0, float** %3, align 8
  store float* %1, float** %4, align 8
  %9 = load float*, float** %3, align 8
  %10 = getelementptr inbounds float, float* %9, i64 0
  %11 = load float, float* %10, align 4
  %12 = load float*, float** %4, align 8
  %13 = getelementptr inbounds float, float* %12, i64 0
  %14 = load float, float* %13, align 4
  %15 = fmul float %11, %14
  store float %15, float* %5, align 4
  %16 = load float*, float** %3, align 8
  %17 = getelementptr inbounds float, float* %16, i64 1
  %18 = load float, float* %17, align 4
  %19 = load float*, float** %4, align 8
  %20 = getelementptr inbounds float, float* %19, i64 0
  %21 = load float, float* %20, align 4
  %22 = fmul float %18, %21
  store float %22, float* %6, align 4
  %23 = load float*, float** %3, align 8
  %24 = getelementptr inbounds float, float* %23, i64 2
  %25 = load float, float* %24, align 4
  %26 = load float*, float** %4, align 8
  %27 = getelementptr inbounds float, float* %26, i64 0
  %28 = load float, float* %27, align 4
  %29 = fmul float %25, %28
  store float %29, float* %7, align 4
  %30 = load float*, float** %3, align 8
  %31 = getelementptr inbounds float, float* %30, i64 3
  %32 = load float, float* %31, align 4
  %33 = load float*, float** %4, align 8
  %34 = getelementptr inbounds float, float* %33, i64 0
  %35 = load float, float* %34, align 4
  %36 = fmul float %32, %35
  store float %36, float* %8, align 4
  %37 = load float*, float** %3, align 8
  %38 = getelementptr inbounds float, float* %37, i64 4
  %39 = load float, float* %38, align 4
  %40 = load float*, float** %4, align 8
  %41 = getelementptr inbounds float, float* %40, i64 1
  %42 = load float, float* %41, align 4
  %43 = fmul float %39, %42
  %44 = load float, float* %5, align 4
  %45 = fadd float %44, %43
  store float %45, float* %5, align 4
  %46 = load float*, float** %3, align 8
  %47 = getelementptr inbounds float, float* %46, i64 5
  %48 = load float, float* %47, align 4
  %49 = load float*, float** %4, align 8
  %50 = getelementptr inbounds float, float* %49, i64 1
  %51 = load float, float* %50, align 4
  %52 = fmul float %48, %51
  %53 = load float, float* %6, align 4
  %54 = fadd float %53, %52
  store float %54, float* %6, align 4
  %55 = load float*, float** %3, align 8
  %56 = getelementptr inbounds float, float* %55, i64 6
  %57 = load float, float* %56, align 4
  %58 = load float*, float** %4, align 8
  %59 = getelementptr inbounds float, float* %58, i64 1
  %60 = load float, float* %59, align 4
  %61 = fmul float %57, %60
  %62 = load float, float* %7, align 4
  %63 = fadd float %62, %61
  store float %63, float* %7, align 4
  %64 = load float*, float** %3, align 8
  %65 = getelementptr inbounds float, float* %64, i64 7
  %66 = load float, float* %65, align 4
  %67 = load float*, float** %4, align 8
  %68 = getelementptr inbounds float, float* %67, i64 1
  %69 = load float, float* %68, align 4
  %70 = fmul float %66, %69
  %71 = load float, float* %8, align 4
  %72 = fadd float %71, %70
  store float %72, float* %8, align 4
  %73 = load float*, float** %3, align 8
  %74 = getelementptr inbounds float, float* %73, i64 8
  %75 = load float, float* %74, align 4
  %76 = load float*, float** %4, align 8
  %77 = getelementptr inbounds float, float* %76, i64 2
  %78 = load float, float* %77, align 4
  %79 = fmul float %75, %78
  %80 = load float, float* %5, align 4
  %81 = fadd float %80, %79
  store float %81, float* %5, align 4
  %82 = load float*, float** %3, align 8
  %83 = getelementptr inbounds float, float* %82, i64 9
  %84 = load float, float* %83, align 4
  %85 = load float*, float** %4, align 8
  %86 = getelementptr inbounds float, float* %85, i64 2
  %87 = load float, float* %86, align 4
  %88 = fmul float %84, %87
  %89 = load float, float* %6, align 4
  %90 = fadd float %89, %88
  store float %90, float* %6, align 4
  %91 = load float*, float** %3, align 8
  %92 = getelementptr inbounds float, float* %91, i64 10
  %93 = load float, float* %92, align 4
  %94 = load float*, float** %4, align 8
  %95 = getelementptr inbounds float, float* %94, i64 2
  %96 = load float, float* %95, align 4
  %97 = fmul float %93, %96
  %98 = load float, float* %7, align 4
  %99 = fadd float %98, %97
  store float %99, float* %7, align 4
  %100 = load float*, float** %3, align 8
  %101 = getelementptr inbounds float, float* %100, i64 11
  %102 = load float, float* %101, align 4
  %103 = load float*, float** %4, align 8
  %104 = getelementptr inbounds float, float* %103, i64 2
  %105 = load float, float* %104, align 4
  %106 = fmul float %102, %105
  %107 = load float, float* %8, align 4
  %108 = fadd float %107, %106
  store float %108, float* %8, align 4
  %109 = load float*, float** %3, align 8
  %110 = getelementptr inbounds float, float* %109, i64 12
  %111 = load float, float* %110, align 4
  %112 = load float*, float** %4, align 8
  %113 = getelementptr inbounds float, float* %112, i64 3
  %114 = load float, float* %113, align 4
  %115 = fmul float %111, %114
  %116 = load float, float* %5, align 4
  %117 = fadd float %116, %115
  store float %117, float* %5, align 4
  %118 = load float*, float** %3, align 8
  %119 = getelementptr inbounds float, float* %118, i64 13
  %120 = load float, float* %119, align 4
  %121 = load float*, float** %4, align 8
  %122 = getelementptr inbounds float, float* %121, i64 3
  %123 = load float, float* %122, align 4
  %124 = fmul float %120, %123
  %125 = load float, float* %6, align 4
  %126 = fadd float %125, %124
  store float %126, float* %6, align 4
  %127 = load float*, float** %3, align 8
  %128 = getelementptr inbounds float, float* %127, i64 14
  %129 = load float, float* %128, align 4
  %130 = load float*, float** %4, align 8
  %131 = getelementptr inbounds float, float* %130, i64 3
  %132 = load float, float* %131, align 4
  %133 = fmul float %129, %132
  %134 = load float, float* %7, align 4
  %135 = fadd float %134, %133
  store float %135, float* %7, align 4
  %136 = load float*, float** %3, align 8
  %137 = getelementptr inbounds float, float* %136, i64 15
  %138 = load float, float* %137, align 4
  %139 = load float*, float** %4, align 8
  %140 = getelementptr inbounds float, float* %139, i64 3
  %141 = load float, float* %140, align 4
  %142 = fmul float %138, %141
  %143 = load float, float* %8, align 4
  %144 = fadd float %143, %142
  store float %144, float* %8, align 4
  %145 = load float, float* %5, align 4
  %146 = load float*, float** %4, align 8
  %147 = getelementptr inbounds float, float* %146, i64 0
  store float %145, float* %147, align 4
  %148 = load float, float* %6, align 4
  %149 = load float*, float** %4, align 8
  %150 = getelementptr inbounds float, float* %149, i64 1
  store float %148, float* %150, align 4
  %151 = load float, float* %7, align 4
  %152 = load float*, float** %4, align 8
  %153 = getelementptr inbounds float, float* %152, i64 2
  store float %151, float* %153, align 4
  %154 = load float, float* %8, align 4
  %155 = load float*, float** %4, align 8
  %156 = getelementptr inbounds float, float* %155, i64 3
  store float %154, float* %156, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
