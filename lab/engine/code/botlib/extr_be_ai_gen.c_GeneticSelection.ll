; ModuleID = '/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_ai_gen.c_GeneticSelection.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_ai_gen.c_GeneticSelection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @GeneticSelection(i32 %0, float* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca float*, align 8
  %6 = alloca float, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store float* %1, float** %5, align 8
  store float 0.000000e+00, float* %6, align 4
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %29, %2
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %32

13:                                               ; preds = %9
  %14 = load float*, float** %5, align 8
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds float, float* %14, i64 %16
  %18 = load float, float* %17, align 4
  %19 = fcmp olt float %18, 0.000000e+00
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  br label %29

21:                                               ; preds = %13
  %22 = load float*, float** %5, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds float, float* %22, i64 %24
  %26 = load float, float* %25, align 4
  %27 = load float, float* %6, align 4
  %28 = fadd float %27, %26
  store float %28, float* %6, align 4
  br label %29

29:                                               ; preds = %21, %20
  %30 = load i32, i32* %7, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %7, align 4
  br label %9

32:                                               ; preds = %9
  %33 = load float, float* %6, align 4
  %34 = fcmp ogt float %33, 0.000000e+00
  br i1 %34, label %35, label %65

35:                                               ; preds = %32
  store i32 0, i32* %7, align 4
  br label %36

36:                                               ; preds = %61, %35
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %64

40:                                               ; preds = %36
  %41 = load float*, float** %5, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds float, float* %41, i64 %43
  %45 = load float, float* %44, align 4
  %46 = fcmp olt float %45, 0.000000e+00
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  br label %61

48:                                               ; preds = %40
  %49 = load float*, float** %5, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds float, float* %49, i64 %51
  %53 = load float, float* %52, align 4
  %54 = load float, float* %6, align 4
  %55 = fsub float %54, %53
  store float %55, float* %6, align 4
  %56 = load float, float* %6, align 4
  %57 = fcmp ole float %56, 0.000000e+00
  br i1 %57, label %58, label %60

58:                                               ; preds = %48
  %59 = load i32, i32* %7, align 4
  store i32 %59, i32* %3, align 4
  br label %91

60:                                               ; preds = %48
  br label %61

61:                                               ; preds = %60, %47
  %62 = load i32, i32* %7, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %7, align 4
  br label %36

64:                                               ; preds = %36
  br label %65

65:                                               ; preds = %64, %32
  %66 = call i32 (...) @random()
  %67 = load i32, i32* %4, align 4
  %68 = mul nsw i32 %66, %67
  store i32 %68, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %69

69:                                               ; preds = %87, %65
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* %4, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %90

73:                                               ; preds = %69
  %74 = load float*, float** %5, align 8
  %75 = load i32, i32* %8, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds float, float* %74, i64 %76
  %78 = load float, float* %77, align 4
  %79 = fcmp oge float %78, 0.000000e+00
  br i1 %79, label %80, label %82

80:                                               ; preds = %73
  %81 = load i32, i32* %8, align 4
  store i32 %81, i32* %3, align 4
  br label %91

82:                                               ; preds = %73
  %83 = load i32, i32* %8, align 4
  %84 = add nsw i32 %83, 1
  %85 = load i32, i32* %4, align 4
  %86 = srem i32 %84, %85
  store i32 %86, i32* %8, align 4
  br label %87

87:                                               ; preds = %82
  %88 = load i32, i32* %7, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %7, align 4
  br label %69

90:                                               ; preds = %69
  store i32 0, i32* %3, align 4
  br label %91

91:                                               ; preds = %90, %80, %58
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32 @random(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
