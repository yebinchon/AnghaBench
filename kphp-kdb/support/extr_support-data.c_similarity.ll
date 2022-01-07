; ModuleID = '/home/carl/AnghaBench/kphp-kdb/support/extr_support-data.c_similarity.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/support/extr_support-data.c_similarity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @similarity(i32* %0, i32* %1, double* %2, double* %3) #0 {
  %5 = alloca double, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca double*, align 8
  %9 = alloca double*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store double* %2, double** %8, align 8
  store double* %3, double** %9, align 8
  %12 = load double*, double** %8, align 8
  store double 0.000000e+00, double* %12, align 8
  %13 = load double*, double** %9, align 8
  store double 0.000000e+00, double* %13, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %14

14:                                               ; preds = %108, %4
  %15 = load i32*, i32** %6, align 8
  %16 = load i32, i32* %10, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %14
  %22 = load i32*, i32** %7, align 8
  %23 = load i32, i32* %11, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br label %28

28:                                               ; preds = %21, %14
  %29 = phi i1 [ true, %14 ], [ %27, %21 ]
  br i1 %29, label %30, label %109

30:                                               ; preds = %28
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* %10, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** %7, align 8
  %37 = load i32, i32* %11, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %35, %40
  br i1 %41, label %42, label %57

42:                                               ; preds = %30
  %43 = load i32*, i32** %6, align 8
  %44 = load i32, i32* %10, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = call double @word_weight(i32 %47)
  %49 = fmul double 2.000000e+00, %48
  %50 = load double*, double** %8, align 8
  %51 = load double, double* %50, align 8
  %52 = fadd double %51, %49
  store double %52, double* %50, align 8
  %53 = load i32, i32* %10, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %11, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %11, align 4
  br label %108

57:                                               ; preds = %30
  %58 = load i32*, i32** %6, align 8
  %59 = load i32, i32* %10, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %95

64:                                               ; preds = %57
  %65 = load i32*, i32** %7, align 8
  %66 = load i32, i32* %11, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %83, label %71

71:                                               ; preds = %64
  %72 = load i32*, i32** %6, align 8
  %73 = load i32, i32* %10, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = load i32*, i32** %7, align 8
  %78 = load i32, i32* %11, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = icmp slt i32 %76, %81
  br i1 %82, label %83, label %95

83:                                               ; preds = %71, %64
  %84 = load i32*, i32** %6, align 8
  %85 = load i32, i32* %10, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = call double @word_weight(i32 %88)
  %90 = load double*, double** %9, align 8
  %91 = load double, double* %90, align 8
  %92 = fadd double %91, %89
  store double %92, double* %90, align 8
  %93 = load i32, i32* %10, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %10, align 4
  br label %107

95:                                               ; preds = %71, %57
  %96 = load i32*, i32** %7, align 8
  %97 = load i32, i32* %11, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = call double @word_weight(i32 %100)
  %102 = load double*, double** %9, align 8
  %103 = load double, double* %102, align 8
  %104 = fadd double %103, %101
  store double %104, double* %102, align 8
  %105 = load i32, i32* %11, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %11, align 4
  br label %107

107:                                              ; preds = %95, %83
  br label %108

108:                                              ; preds = %107, %42
  br label %14

109:                                              ; preds = %28
  %110 = load double*, double** %8, align 8
  %111 = load double, double* %110, align 8
  %112 = load double*, double** %9, align 8
  %113 = load double, double* %112, align 8
  %114 = fadd double %111, %113
  %115 = fcmp olt double %114, 1.000000e-09
  br i1 %115, label %116, label %117

116:                                              ; preds = %109
  store double -1.000000e+00, double* %5, align 8
  br label %130

117:                                              ; preds = %109
  %118 = load double*, double** %8, align 8
  %119 = load double, double* %118, align 8
  %120 = load double*, double** %9, align 8
  %121 = load double, double* %120, align 8
  %122 = fsub double %119, %121
  %123 = fmul double %122, 1.000000e+00
  %124 = load double*, double** %8, align 8
  %125 = load double, double* %124, align 8
  %126 = load double*, double** %9, align 8
  %127 = load double, double* %126, align 8
  %128 = fadd double %125, %127
  %129 = fdiv double %123, %128
  store double %129, double* %5, align 8
  br label %130

130:                                              ; preds = %117, %116
  %131 = load double, double* %5, align 8
  ret double %131
}

declare dso_local double @word_weight(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
