; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_model_iqm.c_JointToMatrix.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_model_iqm.c_JointToMatrix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float*, float*, float*, float*)* @JointToMatrix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @JointToMatrix(float* %0, float* %1, float* %2, float* %3) #0 {
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  store float* %0, float** %5, align 8
  store float* %1, float** %6, align 8
  store float* %2, float** %7, align 8
  store float* %3, float** %8, align 8
  %18 = load float*, float** %5, align 8
  %19 = getelementptr inbounds float, float* %18, i64 0
  %20 = load float, float* %19, align 4
  %21 = fmul float 2.000000e+00, %20
  %22 = load float*, float** %5, align 8
  %23 = getelementptr inbounds float, float* %22, i64 0
  %24 = load float, float* %23, align 4
  %25 = fmul float %21, %24
  store float %25, float* %9, align 4
  %26 = load float*, float** %5, align 8
  %27 = getelementptr inbounds float, float* %26, i64 1
  %28 = load float, float* %27, align 4
  %29 = fmul float 2.000000e+00, %28
  %30 = load float*, float** %5, align 8
  %31 = getelementptr inbounds float, float* %30, i64 1
  %32 = load float, float* %31, align 4
  %33 = fmul float %29, %32
  store float %33, float* %10, align 4
  %34 = load float*, float** %5, align 8
  %35 = getelementptr inbounds float, float* %34, i64 2
  %36 = load float, float* %35, align 4
  %37 = fmul float 2.000000e+00, %36
  %38 = load float*, float** %5, align 8
  %39 = getelementptr inbounds float, float* %38, i64 2
  %40 = load float, float* %39, align 4
  %41 = fmul float %37, %40
  store float %41, float* %11, align 4
  %42 = load float*, float** %5, align 8
  %43 = getelementptr inbounds float, float* %42, i64 0
  %44 = load float, float* %43, align 4
  %45 = fmul float 2.000000e+00, %44
  %46 = load float*, float** %5, align 8
  %47 = getelementptr inbounds float, float* %46, i64 1
  %48 = load float, float* %47, align 4
  %49 = fmul float %45, %48
  store float %49, float* %12, align 4
  %50 = load float*, float** %5, align 8
  %51 = getelementptr inbounds float, float* %50, i64 0
  %52 = load float, float* %51, align 4
  %53 = fmul float 2.000000e+00, %52
  %54 = load float*, float** %5, align 8
  %55 = getelementptr inbounds float, float* %54, i64 2
  %56 = load float, float* %55, align 4
  %57 = fmul float %53, %56
  store float %57, float* %13, align 4
  %58 = load float*, float** %5, align 8
  %59 = getelementptr inbounds float, float* %58, i64 1
  %60 = load float, float* %59, align 4
  %61 = fmul float 2.000000e+00, %60
  %62 = load float*, float** %5, align 8
  %63 = getelementptr inbounds float, float* %62, i64 2
  %64 = load float, float* %63, align 4
  %65 = fmul float %61, %64
  store float %65, float* %14, align 4
  %66 = load float*, float** %5, align 8
  %67 = getelementptr inbounds float, float* %66, i64 3
  %68 = load float, float* %67, align 4
  %69 = fmul float 2.000000e+00, %68
  %70 = load float*, float** %5, align 8
  %71 = getelementptr inbounds float, float* %70, i64 0
  %72 = load float, float* %71, align 4
  %73 = fmul float %69, %72
  store float %73, float* %15, align 4
  %74 = load float*, float** %5, align 8
  %75 = getelementptr inbounds float, float* %74, i64 3
  %76 = load float, float* %75, align 4
  %77 = fmul float 2.000000e+00, %76
  %78 = load float*, float** %5, align 8
  %79 = getelementptr inbounds float, float* %78, i64 1
  %80 = load float, float* %79, align 4
  %81 = fmul float %77, %80
  store float %81, float* %16, align 4
  %82 = load float*, float** %5, align 8
  %83 = getelementptr inbounds float, float* %82, i64 3
  %84 = load float, float* %83, align 4
  %85 = fmul float 2.000000e+00, %84
  %86 = load float*, float** %5, align 8
  %87 = getelementptr inbounds float, float* %86, i64 2
  %88 = load float, float* %87, align 4
  %89 = fmul float %85, %88
  store float %89, float* %17, align 4
  %90 = load float*, float** %6, align 8
  %91 = getelementptr inbounds float, float* %90, i64 0
  %92 = load float, float* %91, align 4
  %93 = load float, float* %10, align 4
  %94 = load float, float* %11, align 4
  %95 = fadd float %93, %94
  %96 = fsub float 1.000000e+00, %95
  %97 = fmul float %92, %96
  %98 = load float*, float** %8, align 8
  %99 = getelementptr inbounds float, float* %98, i64 0
  store float %97, float* %99, align 4
  %100 = load float*, float** %6, align 8
  %101 = getelementptr inbounds float, float* %100, i64 0
  %102 = load float, float* %101, align 4
  %103 = load float, float* %12, align 4
  %104 = load float, float* %17, align 4
  %105 = fsub float %103, %104
  %106 = fmul float %102, %105
  %107 = load float*, float** %8, align 8
  %108 = getelementptr inbounds float, float* %107, i64 1
  store float %106, float* %108, align 4
  %109 = load float*, float** %6, align 8
  %110 = getelementptr inbounds float, float* %109, i64 0
  %111 = load float, float* %110, align 4
  %112 = load float, float* %13, align 4
  %113 = load float, float* %16, align 4
  %114 = fadd float %112, %113
  %115 = fmul float %111, %114
  %116 = load float*, float** %8, align 8
  %117 = getelementptr inbounds float, float* %116, i64 2
  store float %115, float* %117, align 4
  %118 = load float*, float** %7, align 8
  %119 = getelementptr inbounds float, float* %118, i64 0
  %120 = load float, float* %119, align 4
  %121 = load float*, float** %8, align 8
  %122 = getelementptr inbounds float, float* %121, i64 3
  store float %120, float* %122, align 4
  %123 = load float*, float** %6, align 8
  %124 = getelementptr inbounds float, float* %123, i64 1
  %125 = load float, float* %124, align 4
  %126 = load float, float* %12, align 4
  %127 = load float, float* %17, align 4
  %128 = fadd float %126, %127
  %129 = fmul float %125, %128
  %130 = load float*, float** %8, align 8
  %131 = getelementptr inbounds float, float* %130, i64 4
  store float %129, float* %131, align 4
  %132 = load float*, float** %6, align 8
  %133 = getelementptr inbounds float, float* %132, i64 1
  %134 = load float, float* %133, align 4
  %135 = load float, float* %9, align 4
  %136 = load float, float* %11, align 4
  %137 = fadd float %135, %136
  %138 = fsub float 1.000000e+00, %137
  %139 = fmul float %134, %138
  %140 = load float*, float** %8, align 8
  %141 = getelementptr inbounds float, float* %140, i64 5
  store float %139, float* %141, align 4
  %142 = load float*, float** %6, align 8
  %143 = getelementptr inbounds float, float* %142, i64 1
  %144 = load float, float* %143, align 4
  %145 = load float, float* %14, align 4
  %146 = load float, float* %15, align 4
  %147 = fsub float %145, %146
  %148 = fmul float %144, %147
  %149 = load float*, float** %8, align 8
  %150 = getelementptr inbounds float, float* %149, i64 6
  store float %148, float* %150, align 4
  %151 = load float*, float** %7, align 8
  %152 = getelementptr inbounds float, float* %151, i64 1
  %153 = load float, float* %152, align 4
  %154 = load float*, float** %8, align 8
  %155 = getelementptr inbounds float, float* %154, i64 7
  store float %153, float* %155, align 4
  %156 = load float*, float** %6, align 8
  %157 = getelementptr inbounds float, float* %156, i64 2
  %158 = load float, float* %157, align 4
  %159 = load float, float* %13, align 4
  %160 = load float, float* %16, align 4
  %161 = fsub float %159, %160
  %162 = fmul float %158, %161
  %163 = load float*, float** %8, align 8
  %164 = getelementptr inbounds float, float* %163, i64 8
  store float %162, float* %164, align 4
  %165 = load float*, float** %6, align 8
  %166 = getelementptr inbounds float, float* %165, i64 2
  %167 = load float, float* %166, align 4
  %168 = load float, float* %14, align 4
  %169 = load float, float* %15, align 4
  %170 = fadd float %168, %169
  %171 = fmul float %167, %170
  %172 = load float*, float** %8, align 8
  %173 = getelementptr inbounds float, float* %172, i64 9
  store float %171, float* %173, align 4
  %174 = load float*, float** %6, align 8
  %175 = getelementptr inbounds float, float* %174, i64 2
  %176 = load float, float* %175, align 4
  %177 = load float, float* %9, align 4
  %178 = load float, float* %10, align 4
  %179 = fadd float %177, %178
  %180 = fsub float 1.000000e+00, %179
  %181 = fmul float %176, %180
  %182 = load float*, float** %8, align 8
  %183 = getelementptr inbounds float, float* %182, i64 10
  store float %181, float* %183, align 4
  %184 = load float*, float** %7, align 8
  %185 = getelementptr inbounds float, float* %184, i64 2
  %186 = load float, float* %185, align 4
  %187 = load float*, float** %8, align 8
  %188 = getelementptr inbounds float, float* %187, i64 11
  store float %186, float* %188, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
