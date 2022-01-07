; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/kernel/cpu/sh2a/extr_fpu.c_denormal_mulf.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/kernel/cpu/sh2a/extr_fpu.c_denormal_mulf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @denormal_mulf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @denormal_mulf(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  %13 = and i32 %12, 2147483647
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %5, align 4
  %15 = and i32 %14, 2147483647
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp ult i32 %16, 8388608
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* %6, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %18, %2
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* %5, align 4
  %24 = xor i32 %22, %23
  %25 = and i32 %24, -2147483648
  store i32 %25, i32* %3, align 4
  br label %92

26:                                               ; preds = %18
  %27 = load i32, i32* %7, align 4
  %28 = and i32 %27, 2139095040
  %29 = lshr i32 %28, 23
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %6, align 4
  %31 = and i32 %30, 8388607
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %7, align 4
  %33 = and i32 %32, 8388607
  %34 = or i32 %33, 8388608
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %6, align 4
  %36 = zext i32 %35 to i64
  %37 = load i32, i32* %7, align 4
  %38 = zext i32 %37 to i64
  %39 = mul i64 %36, %38
  store i64 %39, i64* %8, align 8
  %40 = load i64, i64* %8, align 8
  store i64 %40, i64* %9, align 8
  store i32 -1, i32* %11, align 4
  br label %41

41:                                               ; preds = %44, %26
  %42 = load i64, i64* %9, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %41
  %45 = load i64, i64* %9, align 8
  %46 = lshr i64 %45, 1
  store i64 %46, i64* %9, align 8
  %47 = load i32, i32* %11, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %11, align 4
  br label %41

49:                                               ; preds = %41
  %50 = load i32, i32* %11, align 4
  %51 = sub nsw i32 %50, 126
  %52 = sub nsw i32 %51, 46
  %53 = load i32, i32* %10, align 4
  %54 = add nsw i32 %53, %52
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %10, align 4
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %68

57:                                               ; preds = %49
  %58 = load i64, i64* %8, align 8
  %59 = load i32, i32* %11, align 4
  %60 = sub nsw i32 %59, 23
  %61 = zext i32 %60 to i64
  %62 = lshr i64 %58, %61
  %63 = trunc i64 %62 to i32
  %64 = and i32 %63, 8388607
  %65 = load i32, i32* %10, align 4
  %66 = shl i32 %65, 23
  %67 = or i32 %64, %66
  store i32 %67, i32* %6, align 4
  br label %84

68:                                               ; preds = %49
  %69 = load i32, i32* %10, align 4
  %70 = add nsw i32 %69, 22
  %71 = icmp sge i32 %70, 0
  br i1 %71, label %72, label %82

72:                                               ; preds = %68
  %73 = load i64, i64* %8, align 8
  %74 = load i32, i32* %11, align 4
  %75 = sub nsw i32 %74, 22
  %76 = load i32, i32* %10, align 4
  %77 = sub nsw i32 %75, %76
  %78 = zext i32 %77 to i64
  %79 = lshr i64 %73, %78
  %80 = trunc i64 %79 to i32
  %81 = and i32 %80, 8388607
  store i32 %81, i32* %6, align 4
  br label %83

82:                                               ; preds = %68
  store i32 0, i32* %6, align 4
  br label %83

83:                                               ; preds = %82, %72
  br label %84

84:                                               ; preds = %83, %57
  %85 = load i32, i32* %4, align 4
  %86 = load i32, i32* %5, align 4
  %87 = xor i32 %85, %86
  %88 = and i32 %87, -2147483648
  %89 = load i32, i32* %6, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %6, align 4
  %91 = load i32, i32* %6, align 4
  store i32 %91, i32* %3, align 4
  br label %92

92:                                               ; preds = %84, %21
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
