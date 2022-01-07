; ModuleID = '/home/carl/AnghaBench/lab/q3map2/libs/mathlib/extr_m4x4.c_m4_submat.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/libs/mathlib/extr_m4x4.c_m4_submat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @m4_submat(i32* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %13

13:                                               ; preds = %68, %4
  %14 = load i32, i32* %9, align 4
  %15 = icmp slt i32 %14, 4
  br i1 %15, label %16, label %71

16:                                               ; preds = %13
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  br label %68

21:                                               ; preds = %16
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i32, i32* %9, align 4
  store i32 %26, i32* %11, align 4
  br label %30

27:                                               ; preds = %21
  %28 = load i32, i32* %9, align 4
  %29 = sub nsw i32 %28, 1
  store i32 %29, i32* %11, align 4
  br label %30

30:                                               ; preds = %27, %25
  store i32 0, i32* %10, align 4
  br label %31

31:                                               ; preds = %64, %30
  %32 = load i32, i32* %10, align 4
  %33 = icmp slt i32 %32, 4
  br i1 %33, label %34, label %67

34:                                               ; preds = %31
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  br label %64

39:                                               ; preds = %34
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = load i32, i32* %10, align 4
  store i32 %44, i32* %12, align 4
  br label %48

45:                                               ; preds = %39
  %46 = load i32, i32* %10, align 4
  %47 = sub nsw i32 %46, 1
  store i32 %47, i32* %12, align 4
  br label %48

48:                                               ; preds = %45, %43
  %49 = load i32*, i32** %5, align 8
  %50 = load i32, i32* %9, align 4
  %51 = mul nsw i32 %50, 4
  %52 = load i32, i32* %10, align 4
  %53 = add nsw i32 %51, %52
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %49, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = load i32*, i32** %6, align 8
  %58 = load i32, i32* %11, align 4
  %59 = mul nsw i32 %58, 3
  %60 = load i32, i32* %12, align 4
  %61 = add nsw i32 %59, %60
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %57, i64 %62
  store i32 %56, i32* %63, align 4
  br label %64

64:                                               ; preds = %48, %38
  %65 = load i32, i32* %10, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %10, align 4
  br label %31

67:                                               ; preds = %31
  br label %68

68:                                               ; preds = %67, %20
  %69 = load i32, i32* %9, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %9, align 4
  br label %13

71:                                               ; preds = %13
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
