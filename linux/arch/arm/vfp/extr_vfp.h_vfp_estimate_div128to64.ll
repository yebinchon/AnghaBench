; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/vfp/extr_vfp.h_vfp_estimate_div128to64.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/vfp/extr_vfp.h_vfp_estimate_div128to64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64, i64)* @vfp_estimate_div128to64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @vfp_estimate_div128to64(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* %7, align 8
  %17 = icmp uge i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i64 -1, i64* %4, align 8
  br label %78

19:                                               ; preds = %3
  %20 = load i64, i64* %7, align 8
  %21 = lshr i64 %20, 32
  store i64 %21, i64* %8, align 8
  %22 = load i64, i64* %8, align 8
  %23 = shl i64 %22, 32
  %24 = load i64, i64* %5, align 8
  %25 = icmp ule i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  store i64 -4294967296, i64* %14, align 8
  br label %34

27:                                               ; preds = %19
  %28 = load i64, i64* %5, align 8
  store i64 %28, i64* %14, align 8
  %29 = load i64, i64* %14, align 8
  %30 = load i64, i64* %8, align 8
  %31 = call i32 @do_div(i64 %29, i64 %30)
  %32 = load i64, i64* %14, align 8
  %33 = shl i64 %32, 32
  store i64 %33, i64* %14, align 8
  br label %34

34:                                               ; preds = %27, %26
  %35 = load i64, i64* %7, align 8
  %36 = load i64, i64* %14, align 8
  %37 = call i32 @mul64to128(i64* %12, i64* %13, i64 %35, i64 %36)
  %38 = load i64, i64* %5, align 8
  %39 = load i64, i64* %6, align 8
  %40 = load i64, i64* %12, align 8
  %41 = load i64, i64* %13, align 8
  %42 = call i32 @sub128(i64* %10, i64* %11, i64 %38, i64 %39, i64 %40, i64 %41)
  %43 = load i64, i64* %7, align 8
  %44 = shl i64 %43, 32
  store i64 %44, i64* %9, align 8
  br label %45

45:                                               ; preds = %48, %34
  %46 = load i64, i64* %10, align 8
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %45
  %49 = load i64, i64* %14, align 8
  %50 = sub i64 %49, 4294967296
  store i64 %50, i64* %14, align 8
  %51 = load i64, i64* %10, align 8
  %52 = load i64, i64* %11, align 8
  %53 = load i64, i64* %8, align 8
  %54 = load i64, i64* %9, align 8
  %55 = call i32 @add128(i64* %10, i64* %11, i64 %51, i64 %52, i64 %53, i64 %54)
  br label %45

56:                                               ; preds = %45
  %57 = load i64, i64* %10, align 8
  %58 = shl i64 %57, 32
  %59 = load i64, i64* %11, align 8
  %60 = lshr i64 %59, 32
  %61 = or i64 %58, %60
  store i64 %61, i64* %10, align 8
  %62 = load i64, i64* %8, align 8
  %63 = shl i64 %62, 32
  %64 = load i64, i64* %10, align 8
  %65 = icmp ule i64 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %56
  %67 = load i64, i64* %14, align 8
  %68 = or i64 %67, 4294967295
  store i64 %68, i64* %14, align 8
  br label %76

69:                                               ; preds = %56
  %70 = load i64, i64* %10, align 8
  %71 = load i64, i64* %8, align 8
  %72 = call i32 @do_div(i64 %70, i64 %71)
  %73 = load i64, i64* %10, align 8
  %74 = load i64, i64* %14, align 8
  %75 = or i64 %74, %73
  store i64 %75, i64* %14, align 8
  br label %76

76:                                               ; preds = %69, %66
  %77 = load i64, i64* %14, align 8
  store i64 %77, i64* %4, align 8
  br label %78

78:                                               ; preds = %76, %18
  %79 = load i64, i64* %4, align 8
  ret i64 %79
}

declare dso_local i32 @do_div(i64, i64) #1

declare dso_local i32 @mul64to128(i64*, i64*, i64, i64) #1

declare dso_local i32 @sub128(i64*, i64*, i64, i64, i64, i64) #1

declare dso_local i32 @add128(i64*, i64*, i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
