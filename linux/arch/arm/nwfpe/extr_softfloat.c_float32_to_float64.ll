; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/nwfpe/extr_softfloat.c_float32_to_float64.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/nwfpe/extr_softfloat.c_float32_to_float64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @float32_to_float64(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i64 @extractFloat32Frac(i32 %7)
  store i64 %8, i64* %6, align 8
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @extractFloat32Exp(i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @extractFloat32Sign(i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp eq i32 %13, 255
  br i1 %14, label %15, label %25

15:                                               ; preds = %1
  %16 = load i64, i64* %6, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @float32ToCommonNaN(i32 %19)
  %21 = call i32 @commonNaNToFloat64(i32 %20)
  store i32 %21, i32* %2, align 4
  br label %47

22:                                               ; preds = %15
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @packFloat64(i32 %23, i32 2047, i32 0)
  store i32 %24, i32* %2, align 4
  br label %47

25:                                               ; preds = %1
  %26 = load i32, i32* %5, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %25
  %29 = load i64, i64* %6, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @packFloat64(i32 %32, i32 0, i32 0)
  store i32 %33, i32* %2, align 4
  br label %47

34:                                               ; preds = %28
  %35 = load i64, i64* %6, align 8
  %36 = call i32 @normalizeFloat32Subnormal(i64 %35, i32* %5, i64* %6)
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %34, %25
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 %41, 896
  %43 = load i64, i64* %6, align 8
  %44 = trunc i64 %43 to i32
  %45 = shl i32 %44, 29
  %46 = call i32 @packFloat64(i32 %40, i32 %42, i32 %45)
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %39, %31, %22, %18
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i64 @extractFloat32Frac(i32) #1

declare dso_local i32 @extractFloat32Exp(i32) #1

declare dso_local i32 @extractFloat32Sign(i32) #1

declare dso_local i32 @commonNaNToFloat64(i32) #1

declare dso_local i32 @float32ToCommonNaN(i32) #1

declare dso_local i32 @packFloat64(i32, i32, i32) #1

declare dso_local i32 @normalizeFloat32Subnormal(i64, i32*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
