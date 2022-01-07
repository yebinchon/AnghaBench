; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_extramath.c_Mat4SimpleInverse.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_extramath.c_Mat4SimpleInverse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Mat4SimpleInverse(float* %0, float* %1) #0 {
  %3 = alloca float*, align 8
  %4 = alloca float*, align 8
  %5 = alloca float*, align 8
  %6 = alloca float, align 4
  store float* %0, float** %3, align 8
  store float* %1, float** %4, align 8
  %7 = load float*, float** %3, align 8
  %8 = getelementptr inbounds float, float* %7, i64 0
  %9 = load float*, float** %5, align 8
  %10 = call i32 @VectorCopy(float* %8, float* %9)
  %11 = load float*, float** %5, align 8
  %12 = load float*, float** %5, align 8
  %13 = call float @DotProduct(float* %11, float* %12)
  %14 = fdiv float 1.000000e+00, %13
  store float %14, float* %6, align 4
  %15 = load float*, float** %5, align 8
  %16 = load float, float* %6, align 4
  %17 = load float*, float** %5, align 8
  %18 = call i32 @VectorScale(float* %15, float %16, float* %17)
  %19 = load float*, float** %5, align 8
  %20 = getelementptr inbounds float, float* %19, i64 0
  %21 = load float, float* %20, align 4
  %22 = load float*, float** %4, align 8
  %23 = getelementptr inbounds float, float* %22, i64 0
  store float %21, float* %23, align 4
  %24 = load float*, float** %5, align 8
  %25 = getelementptr inbounds float, float* %24, i64 1
  %26 = load float, float* %25, align 4
  %27 = load float*, float** %4, align 8
  %28 = getelementptr inbounds float, float* %27, i64 4
  store float %26, float* %28, align 4
  %29 = load float*, float** %5, align 8
  %30 = getelementptr inbounds float, float* %29, i64 2
  %31 = load float, float* %30, align 4
  %32 = load float*, float** %4, align 8
  %33 = getelementptr inbounds float, float* %32, i64 8
  store float %31, float* %33, align 4
  %34 = load float*, float** %5, align 8
  %35 = load float*, float** %3, align 8
  %36 = getelementptr inbounds float, float* %35, i64 12
  %37 = call float @DotProduct(float* %34, float* %36)
  %38 = fneg float %37
  %39 = load float*, float** %4, align 8
  %40 = getelementptr inbounds float, float* %39, i64 12
  store float %38, float* %40, align 4
  %41 = load float*, float** %3, align 8
  %42 = getelementptr inbounds float, float* %41, i64 4
  %43 = load float*, float** %5, align 8
  %44 = call i32 @VectorCopy(float* %42, float* %43)
  %45 = load float*, float** %5, align 8
  %46 = load float*, float** %5, align 8
  %47 = call float @DotProduct(float* %45, float* %46)
  %48 = fdiv float 1.000000e+00, %47
  store float %48, float* %6, align 4
  %49 = load float*, float** %5, align 8
  %50 = load float, float* %6, align 4
  %51 = load float*, float** %5, align 8
  %52 = call i32 @VectorScale(float* %49, float %50, float* %51)
  %53 = load float*, float** %5, align 8
  %54 = getelementptr inbounds float, float* %53, i64 0
  %55 = load float, float* %54, align 4
  %56 = load float*, float** %4, align 8
  %57 = getelementptr inbounds float, float* %56, i64 1
  store float %55, float* %57, align 4
  %58 = load float*, float** %5, align 8
  %59 = getelementptr inbounds float, float* %58, i64 1
  %60 = load float, float* %59, align 4
  %61 = load float*, float** %4, align 8
  %62 = getelementptr inbounds float, float* %61, i64 5
  store float %60, float* %62, align 4
  %63 = load float*, float** %5, align 8
  %64 = getelementptr inbounds float, float* %63, i64 2
  %65 = load float, float* %64, align 4
  %66 = load float*, float** %4, align 8
  %67 = getelementptr inbounds float, float* %66, i64 9
  store float %65, float* %67, align 4
  %68 = load float*, float** %5, align 8
  %69 = load float*, float** %3, align 8
  %70 = getelementptr inbounds float, float* %69, i64 12
  %71 = call float @DotProduct(float* %68, float* %70)
  %72 = fneg float %71
  %73 = load float*, float** %4, align 8
  %74 = getelementptr inbounds float, float* %73, i64 13
  store float %72, float* %74, align 4
  %75 = load float*, float** %3, align 8
  %76 = getelementptr inbounds float, float* %75, i64 8
  %77 = load float*, float** %5, align 8
  %78 = call i32 @VectorCopy(float* %76, float* %77)
  %79 = load float*, float** %5, align 8
  %80 = load float*, float** %5, align 8
  %81 = call float @DotProduct(float* %79, float* %80)
  %82 = fdiv float 1.000000e+00, %81
  store float %82, float* %6, align 4
  %83 = load float*, float** %5, align 8
  %84 = load float, float* %6, align 4
  %85 = load float*, float** %5, align 8
  %86 = call i32 @VectorScale(float* %83, float %84, float* %85)
  %87 = load float*, float** %5, align 8
  %88 = getelementptr inbounds float, float* %87, i64 0
  %89 = load float, float* %88, align 4
  %90 = load float*, float** %4, align 8
  %91 = getelementptr inbounds float, float* %90, i64 2
  store float %89, float* %91, align 4
  %92 = load float*, float** %5, align 8
  %93 = getelementptr inbounds float, float* %92, i64 1
  %94 = load float, float* %93, align 4
  %95 = load float*, float** %4, align 8
  %96 = getelementptr inbounds float, float* %95, i64 6
  store float %94, float* %96, align 4
  %97 = load float*, float** %5, align 8
  %98 = getelementptr inbounds float, float* %97, i64 2
  %99 = load float, float* %98, align 4
  %100 = load float*, float** %4, align 8
  %101 = getelementptr inbounds float, float* %100, i64 10
  store float %99, float* %101, align 4
  %102 = load float*, float** %5, align 8
  %103 = load float*, float** %3, align 8
  %104 = getelementptr inbounds float, float* %103, i64 12
  %105 = call float @DotProduct(float* %102, float* %104)
  %106 = fneg float %105
  %107 = load float*, float** %4, align 8
  %108 = getelementptr inbounds float, float* %107, i64 14
  store float %106, float* %108, align 4
  %109 = load float*, float** %4, align 8
  %110 = getelementptr inbounds float, float* %109, i64 3
  store float 0.000000e+00, float* %110, align 4
  %111 = load float*, float** %4, align 8
  %112 = getelementptr inbounds float, float* %111, i64 7
  store float 0.000000e+00, float* %112, align 4
  %113 = load float*, float** %4, align 8
  %114 = getelementptr inbounds float, float* %113, i64 11
  store float 0.000000e+00, float* %114, align 4
  %115 = load float*, float** %4, align 8
  %116 = getelementptr inbounds float, float* %115, i64 15
  store float 1.000000e+00, float* %116, align 4
  ret void
}

declare dso_local i32 @VectorCopy(float*, float*) #1

declare dso_local float @DotProduct(float*, float*) #1

declare dso_local i32 @VectorScale(float*, float, float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
