; ModuleID = '/home/carl/AnghaBench/lab/q3map2/libs/picomodel/extr_picomodel.c_PicoVertexCoordGenerateHash.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/libs/picomodel/extr_picomodel.c_PicoVertexCoordGenerateHash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HASHTABLE_SIZE = common dso_local global i32 0, align 4
@HASH_XYZ_EPSILONSPACE_MULTIPLIER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PicoVertexCoordGenerateHash(float* %0) #0 {
  %2 = alloca float*, align 8
  %3 = alloca i32, align 4
  store float* %0, float** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load float*, float** %2, align 8
  %5 = getelementptr inbounds float, float* %4, i64 0
  %6 = bitcast float* %5 to i32*
  %7 = load i32, i32* %6, align 4
  %8 = shl i32 %7, 15
  %9 = xor i32 %8, -1
  %10 = load i32, i32* %3, align 4
  %11 = add i32 %10, %9
  store i32 %11, i32* %3, align 4
  %12 = load float*, float** %2, align 8
  %13 = getelementptr inbounds float, float* %12, i64 0
  %14 = bitcast float* %13 to i32*
  %15 = load i32, i32* %14, align 4
  %16 = lshr i32 %15, 10
  %17 = load i32, i32* %3, align 4
  %18 = xor i32 %17, %16
  store i32 %18, i32* %3, align 4
  %19 = load float*, float** %2, align 8
  %20 = getelementptr inbounds float, float* %19, i64 1
  %21 = bitcast float* %20 to i32*
  %22 = load i32, i32* %21, align 4
  %23 = shl i32 %22, 3
  %24 = load i32, i32* %3, align 4
  %25 = add i32 %24, %23
  store i32 %25, i32* %3, align 4
  %26 = load float*, float** %2, align 8
  %27 = getelementptr inbounds float, float* %26, i64 1
  %28 = bitcast float* %27 to i32*
  %29 = load i32, i32* %28, align 4
  %30 = lshr i32 %29, 6
  %31 = load i32, i32* %3, align 4
  %32 = xor i32 %31, %30
  store i32 %32, i32* %3, align 4
  %33 = load float*, float** %2, align 8
  %34 = getelementptr inbounds float, float* %33, i64 2
  %35 = bitcast float* %34 to i32*
  %36 = load i32, i32* %35, align 4
  %37 = shl i32 %36, 11
  %38 = xor i32 %37, -1
  %39 = load i32, i32* %3, align 4
  %40 = add i32 %39, %38
  store i32 %40, i32* %3, align 4
  %41 = load float*, float** %2, align 8
  %42 = getelementptr inbounds float, float* %41, i64 2
  %43 = bitcast float* %42 to i32*
  %44 = load i32, i32* %43, align 4
  %45 = lshr i32 %44, 16
  %46 = load i32, i32* %3, align 4
  %47 = xor i32 %46, %45
  store i32 %47, i32* %3, align 4
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* @HASHTABLE_SIZE, align 4
  %50 = urem i32 %48, %49
  store i32 %50, i32* %3, align 4
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
