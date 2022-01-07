; ModuleID = '/home/carl/AnghaBench/lab/engine/code/botlib/extr_l_libvar.c_LibVarStringValue.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/botlib/extr_l_libvar.c_LibVarStringValue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @LibVarStringValue(i8* %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca float, align 4
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %4, align 4
  store float 0.000000e+00, float* %5, align 4
  br label %6

6:                                                ; preds = %61, %1
  %7 = load i8*, i8** %3, align 8
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  br i1 %9, label %10, label %64

10:                                               ; preds = %6
  %11 = load i8*, i8** %3, align 8
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp slt i32 %13, 48
  br i1 %14, label %20, label %15

15:                                               ; preds = %10
  %16 = load i8*, i8** %3, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp sgt i32 %18, 57
  br i1 %19, label %20, label %33

20:                                               ; preds = %15, %10
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %20
  %24 = load i8*, i8** %3, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp ne i32 %26, 46
  br i1 %27, label %28, label %29

28:                                               ; preds = %23, %20
  store float 0.000000e+00, float* %2, align 4
  br label %66

29:                                               ; preds = %23
  store i32 10, i32* %4, align 4
  %30 = load i8*, i8** %3, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %3, align 8
  br label %32

32:                                               ; preds = %29
  br label %33

33:                                               ; preds = %32, %15
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %33
  %37 = load float, float* %5, align 4
  %38 = load i8*, i8** %3, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = sub nsw i32 %40, 48
  %42 = sitofp i32 %41 to float
  %43 = load i32, i32* %4, align 4
  %44 = sitofp i32 %43 to float
  %45 = fdiv float %42, %44
  %46 = fadd float %37, %45
  store float %46, float* %5, align 4
  %47 = load i32, i32* %4, align 4
  %48 = mul nsw i32 %47, 10
  store i32 %48, i32* %4, align 4
  br label %61

49:                                               ; preds = %33
  %50 = load float, float* %5, align 4
  %51 = fpext float %50 to double
  %52 = fmul double %51, 1.000000e+01
  %53 = load i8*, i8** %3, align 8
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = sub nsw i32 %55, 48
  %57 = sitofp i32 %56 to float
  %58 = fpext float %57 to double
  %59 = fadd double %52, %58
  %60 = fptrunc double %59 to float
  store float %60, float* %5, align 4
  br label %61

61:                                               ; preds = %49, %36
  %62 = load i8*, i8** %3, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %3, align 8
  br label %6

64:                                               ; preds = %6
  %65 = load float, float* %5, align 4
  store float %65, float* %2, align 4
  br label %66

66:                                               ; preds = %64, %28
  %67 = load float, float* %2, align 4
  ret float %67
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
