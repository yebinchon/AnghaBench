; ModuleID = '/home/carl/AnghaBench/h2o/deps/brotli/c/enc/extr_backward_references_hq.c_ZopfliCostModelSetFromLiteralCosts.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/brotli/c/enc/extr_backward_references_hq.c_ZopfliCostModelSetFromLiteralCosts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { float*, float*, float*, i64, float }

@BROTLI_NUM_COMMAND_SYMBOLS = common dso_local global i64 0, align 8
@BROTLI_NUM_DISTANCE_SYMBOLS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i64, i32*, i64)* @ZopfliCostModelSetFromLiteralCosts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ZopfliCostModelSetFromLiteralCosts(%struct.TYPE_3__* %0, i64 %1, i32* %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca float*, align 8
  %10 = alloca float*, align 8
  %11 = alloca float*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  store i64 %3, i64* %8, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load float*, float** %15, align 8
  store float* %16, float** %9, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load float*, float** %18, align 8
  store float* %19, float** %10, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 2
  %22 = load float*, float** %21, align 8
  store float* %22, float** %11, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %12, align 8
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* %12, align 8
  %28 = load i64, i64* %8, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = load float*, float** %9, align 8
  %31 = getelementptr inbounds float, float* %30, i64 1
  %32 = call i32 @BrotliEstimateBitCostsForLiterals(i64 %26, i64 %27, i64 %28, i32* %29, float* %31)
  %33 = load float*, float** %9, align 8
  %34 = getelementptr inbounds float, float* %33, i64 0
  store float 0.000000e+00, float* %34, align 4
  store i64 0, i64* %13, align 8
  br label %35

35:                                               ; preds = %50, %4
  %36 = load i64, i64* %13, align 8
  %37 = load i64, i64* %12, align 8
  %38 = icmp ult i64 %36, %37
  br i1 %38, label %39, label %53

39:                                               ; preds = %35
  %40 = load float*, float** %9, align 8
  %41 = load i64, i64* %13, align 8
  %42 = getelementptr inbounds float, float* %40, i64 %41
  %43 = load float, float* %42, align 4
  %44 = load float*, float** %9, align 8
  %45 = load i64, i64* %13, align 8
  %46 = add i64 %45, 1
  %47 = getelementptr inbounds float, float* %44, i64 %46
  %48 = load float, float* %47, align 4
  %49 = fadd float %48, %43
  store float %49, float* %47, align 4
  br label %50

50:                                               ; preds = %39
  %51 = load i64, i64* %13, align 8
  %52 = add i64 %51, 1
  store i64 %52, i64* %13, align 8
  br label %35

53:                                               ; preds = %35
  store i64 0, i64* %13, align 8
  br label %54

54:                                               ; preds = %67, %53
  %55 = load i64, i64* %13, align 8
  %56 = load i64, i64* @BROTLI_NUM_COMMAND_SYMBOLS, align 8
  %57 = icmp ult i64 %55, %56
  br i1 %57, label %58, label %70

58:                                               ; preds = %54
  %59 = load i64, i64* %13, align 8
  %60 = trunc i64 %59 to i32
  %61 = add nsw i32 11, %60
  %62 = call i64 @FastLog2(i32 %61)
  %63 = sitofp i64 %62 to float
  %64 = load float*, float** %11, align 8
  %65 = load i64, i64* %13, align 8
  %66 = getelementptr inbounds float, float* %64, i64 %65
  store float %63, float* %66, align 4
  br label %67

67:                                               ; preds = %58
  %68 = load i64, i64* %13, align 8
  %69 = add i64 %68, 1
  store i64 %69, i64* %13, align 8
  br label %54

70:                                               ; preds = %54
  store i64 0, i64* %13, align 8
  br label %71

71:                                               ; preds = %84, %70
  %72 = load i64, i64* %13, align 8
  %73 = load i64, i64* @BROTLI_NUM_DISTANCE_SYMBOLS, align 8
  %74 = icmp ult i64 %72, %73
  br i1 %74, label %75, label %87

75:                                               ; preds = %71
  %76 = load i64, i64* %13, align 8
  %77 = trunc i64 %76 to i32
  %78 = add nsw i32 20, %77
  %79 = call i64 @FastLog2(i32 %78)
  %80 = sitofp i64 %79 to float
  %81 = load float*, float** %10, align 8
  %82 = load i64, i64* %13, align 8
  %83 = getelementptr inbounds float, float* %81, i64 %82
  store float %80, float* %83, align 4
  br label %84

84:                                               ; preds = %75
  %85 = load i64, i64* %13, align 8
  %86 = add i64 %85, 1
  store i64 %86, i64* %13, align 8
  br label %71

87:                                               ; preds = %71
  %88 = call i64 @FastLog2(i32 11)
  %89 = sitofp i64 %88 to float
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 4
  store float %89, float* %91, align 8
  ret void
}

declare dso_local i32 @BrotliEstimateBitCostsForLiterals(i64, i64, i64, i32*, float*) #1

declare dso_local i64 @FastLog2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
