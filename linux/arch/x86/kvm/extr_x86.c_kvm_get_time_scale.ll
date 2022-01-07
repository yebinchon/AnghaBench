; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_kvm_get_time_scale.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_kvm_get_time_scale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i64*, i32*)* @kvm_get_time_scale to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvm_get_time_scale(i32 %0, i32 %1, i64* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  store i32* %3, i32** %8, align 8
  store i64 0, i64* %10, align 8
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* %5, align 4
  store i32 %14, i32* %9, align 4
  br label %15

15:                                               ; preds = %27, %4
  %16 = load i32, i32* %11, align 4
  %17 = load i32, i32* %9, align 4
  %18 = mul nsw i32 %17, 2
  %19 = icmp sgt i32 %16, %18
  br i1 %19, label %25, label %20

20:                                               ; preds = %15
  %21 = load i32, i32* %11, align 4
  %22 = sext i32 %21 to i64
  %23 = and i64 %22, -4294967296
  %24 = icmp ne i64 %23, 0
  br label %25

25:                                               ; preds = %20, %15
  %26 = phi i1 [ true, %15 ], [ %24, %20 ]
  br i1 %26, label %27, label %32

27:                                               ; preds = %25
  %28 = load i32, i32* %11, align 4
  %29 = ashr i32 %28, 1
  store i32 %29, i32* %11, align 4
  %30 = load i64, i64* %10, align 8
  %31 = add nsw i64 %30, -1
  store i64 %31, i64* %10, align 8
  br label %15

32:                                               ; preds = %25
  %33 = load i32, i32* %11, align 4
  store i32 %33, i32* %12, align 4
  br label %34

34:                                               ; preds = %60, %32
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp sle i32 %35, %36
  br i1 %37, label %43, label %38

38:                                               ; preds = %34
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = and i64 %40, -4294967296
  %42 = icmp ne i64 %41, 0
  br label %43

43:                                               ; preds = %38, %34
  %44 = phi i1 [ true, %34 ], [ %42, %38 ]
  br i1 %44, label %45, label %63

45:                                               ; preds = %43
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = and i64 %47, -4294967296
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %45
  %51 = load i32, i32* %12, align 4
  %52 = and i32 %51, -2147483648
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %50, %45
  %55 = load i32, i32* %9, align 4
  %56 = ashr i32 %55, 1
  store i32 %56, i32* %9, align 4
  br label %60

57:                                               ; preds = %50
  %58 = load i32, i32* %12, align 4
  %59 = shl i32 %58, 1
  store i32 %59, i32* %12, align 4
  br label %60

60:                                               ; preds = %57, %54
  %61 = load i64, i64* %10, align 8
  %62 = add nsw i64 %61, 1
  store i64 %62, i64* %10, align 8
  br label %34

63:                                               ; preds = %43
  %64 = load i64, i64* %10, align 8
  %65 = load i64*, i64** %7, align 8
  store i64 %64, i64* %65, align 8
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* %12, align 4
  %68 = call i32 @div_frac(i32 %66, i32 %67)
  %69 = load i32*, i32** %8, align 8
  store i32 %68, i32* %69, align 4
  ret void
}

declare dso_local i32 @div_frac(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
