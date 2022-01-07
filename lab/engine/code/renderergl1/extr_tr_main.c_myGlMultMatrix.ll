; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_main.c_myGlMultMatrix.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_main.c_myGlMultMatrix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @myGlMultMatrix(float* %0, float* %1, float* %2) #0 {
  %4 = alloca float*, align 8
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store float* %0, float** %4, align 8
  store float* %1, float** %5, align 8
  store float* %2, float** %6, align 8
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %87, %3
  %10 = load i32, i32* %7, align 4
  %11 = icmp slt i32 %10, 4
  br i1 %11, label %12, label %90

12:                                               ; preds = %9
  store i32 0, i32* %8, align 4
  br label %13

13:                                               ; preds = %83, %12
  %14 = load i32, i32* %8, align 4
  %15 = icmp slt i32 %14, 4
  br i1 %15, label %16, label %86

16:                                               ; preds = %13
  %17 = load float*, float** %4, align 8
  %18 = load i32, i32* %7, align 4
  %19 = mul nsw i32 %18, 4
  %20 = add nsw i32 %19, 0
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds float, float* %17, i64 %21
  %23 = load float, float* %22, align 4
  %24 = load float*, float** %5, align 8
  %25 = load i32, i32* %8, align 4
  %26 = add nsw i32 0, %25
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds float, float* %24, i64 %27
  %29 = load float, float* %28, align 4
  %30 = fmul float %23, %29
  %31 = load float*, float** %4, align 8
  %32 = load i32, i32* %7, align 4
  %33 = mul nsw i32 %32, 4
  %34 = add nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds float, float* %31, i64 %35
  %37 = load float, float* %36, align 4
  %38 = load float*, float** %5, align 8
  %39 = load i32, i32* %8, align 4
  %40 = add nsw i32 4, %39
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds float, float* %38, i64 %41
  %43 = load float, float* %42, align 4
  %44 = fmul float %37, %43
  %45 = fadd float %30, %44
  %46 = load float*, float** %4, align 8
  %47 = load i32, i32* %7, align 4
  %48 = mul nsw i32 %47, 4
  %49 = add nsw i32 %48, 2
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds float, float* %46, i64 %50
  %52 = load float, float* %51, align 4
  %53 = load float*, float** %5, align 8
  %54 = load i32, i32* %8, align 4
  %55 = add nsw i32 8, %54
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds float, float* %53, i64 %56
  %58 = load float, float* %57, align 4
  %59 = fmul float %52, %58
  %60 = fadd float %45, %59
  %61 = load float*, float** %4, align 8
  %62 = load i32, i32* %7, align 4
  %63 = mul nsw i32 %62, 4
  %64 = add nsw i32 %63, 3
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds float, float* %61, i64 %65
  %67 = load float, float* %66, align 4
  %68 = load float*, float** %5, align 8
  %69 = load i32, i32* %8, align 4
  %70 = add nsw i32 12, %69
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds float, float* %68, i64 %71
  %73 = load float, float* %72, align 4
  %74 = fmul float %67, %73
  %75 = fadd float %60, %74
  %76 = load float*, float** %6, align 8
  %77 = load i32, i32* %7, align 4
  %78 = mul nsw i32 %77, 4
  %79 = load i32, i32* %8, align 4
  %80 = add nsw i32 %78, %79
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds float, float* %76, i64 %81
  store float %75, float* %82, align 4
  br label %83

83:                                               ; preds = %16
  %84 = load i32, i32* %8, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %8, align 4
  br label %13

86:                                               ; preds = %13
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %7, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %7, align 4
  br label %9

90:                                               ; preds = %9
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
