; ModuleID = '/home/carl/AnghaBench/lab/q3map2/libs/mathlib/extr_m4x4.c_m4x4_rotation_for_quat.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/libs/mathlib/extr_m4x4.c_m4x4_rotation_for_quat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @m4x4_rotation_for_quat(i32* %0, float* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca float*, align 8
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  store i32* %0, i32** %3, align 8
  store float* %1, float** %4, align 8
  %14 = load float*, float** %4, align 8
  %15 = getelementptr inbounds float, float* %14, i64 0
  %16 = load float, float* %15, align 4
  %17 = load float*, float** %4, align 8
  %18 = getelementptr inbounds float, float* %17, i64 0
  %19 = load float, float* %18, align 4
  %20 = fmul float %16, %19
  store float %20, float* %5, align 4
  %21 = load float*, float** %4, align 8
  %22 = getelementptr inbounds float, float* %21, i64 0
  %23 = load float, float* %22, align 4
  %24 = load float*, float** %4, align 8
  %25 = getelementptr inbounds float, float* %24, i64 1
  %26 = load float, float* %25, align 4
  %27 = fmul float %23, %26
  store float %27, float* %6, align 4
  %28 = load float*, float** %4, align 8
  %29 = getelementptr inbounds float, float* %28, i64 0
  %30 = load float, float* %29, align 4
  %31 = load float*, float** %4, align 8
  %32 = getelementptr inbounds float, float* %31, i64 2
  %33 = load float, float* %32, align 4
  %34 = fmul float %30, %33
  store float %34, float* %7, align 4
  %35 = load float*, float** %4, align 8
  %36 = getelementptr inbounds float, float* %35, i64 0
  %37 = load float, float* %36, align 4
  %38 = load float*, float** %4, align 8
  %39 = getelementptr inbounds float, float* %38, i64 3
  %40 = load float, float* %39, align 4
  %41 = fmul float %37, %40
  store float %41, float* %8, align 4
  %42 = load float*, float** %4, align 8
  %43 = getelementptr inbounds float, float* %42, i64 1
  %44 = load float, float* %43, align 4
  %45 = load float*, float** %4, align 8
  %46 = getelementptr inbounds float, float* %45, i64 1
  %47 = load float, float* %46, align 4
  %48 = fmul float %44, %47
  store float %48, float* %9, align 4
  %49 = load float*, float** %4, align 8
  %50 = getelementptr inbounds float, float* %49, i64 1
  %51 = load float, float* %50, align 4
  %52 = load float*, float** %4, align 8
  %53 = getelementptr inbounds float, float* %52, i64 2
  %54 = load float, float* %53, align 4
  %55 = fmul float %51, %54
  store float %55, float* %10, align 4
  %56 = load float*, float** %4, align 8
  %57 = getelementptr inbounds float, float* %56, i64 1
  %58 = load float, float* %57, align 4
  %59 = load float*, float** %4, align 8
  %60 = getelementptr inbounds float, float* %59, i64 3
  %61 = load float, float* %60, align 4
  %62 = fmul float %58, %61
  store float %62, float* %11, align 4
  %63 = load float*, float** %4, align 8
  %64 = getelementptr inbounds float, float* %63, i64 2
  %65 = load float, float* %64, align 4
  %66 = load float*, float** %4, align 8
  %67 = getelementptr inbounds float, float* %66, i64 2
  %68 = load float, float* %67, align 4
  %69 = fmul float %65, %68
  store float %69, float* %12, align 4
  %70 = load float*, float** %4, align 8
  %71 = getelementptr inbounds float, float* %70, i64 2
  %72 = load float, float* %71, align 4
  %73 = load float*, float** %4, align 8
  %74 = getelementptr inbounds float, float* %73, i64 3
  %75 = load float, float* %74, align 4
  %76 = fmul float %72, %75
  store float %76, float* %13, align 4
  %77 = load float, float* %9, align 4
  %78 = load float, float* %12, align 4
  %79 = fadd float %77, %78
  %80 = fmul float 2.000000e+00, %79
  %81 = fsub float 1.000000e+00, %80
  %82 = fptosi float %81 to i32
  %83 = load i32*, i32** %3, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 0
  store i32 %82, i32* %84, align 4
  %85 = load float, float* %6, align 4
  %86 = load float, float* %13, align 4
  %87 = fsub float %85, %86
  %88 = fmul float 2.000000e+00, %87
  %89 = fptosi float %88 to i32
  %90 = load i32*, i32** %3, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 4
  store i32 %89, i32* %91, align 4
  %92 = load float, float* %7, align 4
  %93 = load float, float* %11, align 4
  %94 = fadd float %92, %93
  %95 = fmul float 2.000000e+00, %94
  %96 = fptosi float %95 to i32
  %97 = load i32*, i32** %3, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 8
  store i32 %96, i32* %98, align 4
  %99 = load float, float* %6, align 4
  %100 = load float, float* %13, align 4
  %101 = fadd float %99, %100
  %102 = fmul float 2.000000e+00, %101
  %103 = fptosi float %102 to i32
  %104 = load i32*, i32** %3, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 1
  store i32 %103, i32* %105, align 4
  %106 = load float, float* %5, align 4
  %107 = load float, float* %12, align 4
  %108 = fadd float %106, %107
  %109 = fmul float 2.000000e+00, %108
  %110 = fsub float 1.000000e+00, %109
  %111 = fptosi float %110 to i32
  %112 = load i32*, i32** %3, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 5
  store i32 %111, i32* %113, align 4
  %114 = load float, float* %10, align 4
  %115 = load float, float* %8, align 4
  %116 = fsub float %114, %115
  %117 = fmul float 2.000000e+00, %116
  %118 = fptosi float %117 to i32
  %119 = load i32*, i32** %3, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 9
  store i32 %118, i32* %120, align 4
  %121 = load float, float* %7, align 4
  %122 = load float, float* %11, align 4
  %123 = fsub float %121, %122
  %124 = fmul float 2.000000e+00, %123
  %125 = fptosi float %124 to i32
  %126 = load i32*, i32** %3, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 2
  store i32 %125, i32* %127, align 4
  %128 = load float, float* %10, align 4
  %129 = load float, float* %8, align 4
  %130 = fadd float %128, %129
  %131 = fmul float 2.000000e+00, %130
  %132 = fptosi float %131 to i32
  %133 = load i32*, i32** %3, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 6
  store i32 %132, i32* %134, align 4
  %135 = load float, float* %5, align 4
  %136 = load float, float* %9, align 4
  %137 = fadd float %135, %136
  %138 = fmul float 2.000000e+00, %137
  %139 = fsub float 1.000000e+00, %138
  %140 = fptosi float %139 to i32
  %141 = load i32*, i32** %3, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 10
  store i32 %140, i32* %142, align 4
  %143 = load i32*, i32** %3, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 14
  store i32 0, i32* %144, align 4
  %145 = load i32*, i32** %3, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 13
  store i32 0, i32* %146, align 4
  %147 = load i32*, i32** %3, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 12
  store i32 0, i32* %148, align 4
  %149 = load i32*, i32** %3, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 11
  store i32 0, i32* %150, align 4
  %151 = load i32*, i32** %3, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 7
  store i32 0, i32* %152, align 4
  %153 = load i32*, i32** %3, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 3
  store i32 0, i32* %154, align 4
  %155 = load i32*, i32** %3, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 15
  store i32 1, i32* %156, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
