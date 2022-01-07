; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/nwfpe/extr_softfloat.c_float32_to_int32_round_to_zero.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/nwfpe/extr_softfloat.c_float32_to_int32_round_to_zero.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@float_flag_invalid = common dso_local global i32 0, align 4
@float_flag_inexact = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @float32_to_int32_round_to_zero(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @extractFloat32Frac(i32 %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @extractFloat32Exp(i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call i64 @extractFloat32Sign(i32 %13)
  store i64 %14, i64* %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sub nsw i32 %15, 158
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp sle i32 0, %17
  br i1 %18, label %19, label %36

19:                                               ; preds = %1
  %20 = load i32, i32* %3, align 4
  %21 = icmp eq i32 %20, -822083584
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i32 -2147483648, i32* %2, align 4
  br label %75

23:                                               ; preds = %19
  %24 = load i32, i32* @float_flag_invalid, align 4
  %25 = call i32 @float_raise(i32 %24)
  %26 = load i64, i64* %4, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load i32, i32* %5, align 4
  %30 = icmp eq i32 %29, 255
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %31, %23
  store i32 2147483647, i32* %2, align 4
  br label %75

35:                                               ; preds = %31, %28
  store i32 -2147483648, i32* %2, align 4
  br label %75

36:                                               ; preds = %1
  %37 = load i32, i32* %5, align 4
  %38 = icmp sle i32 %37, 126
  br i1 %38, label %39, label %48

39:                                               ; preds = %36
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* %7, align 4
  %42 = or i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i32, i32* @float_flag_inexact, align 4
  %46 = call i32 @float_raise(i32 %45)
  br label %47

47:                                               ; preds = %44, %39
  store i32 0, i32* %2, align 4
  br label %75

48:                                               ; preds = %36
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %7, align 4
  %51 = or i32 %50, 8388608
  %52 = shl i32 %51, 8
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %6, align 4
  %55 = sub nsw i32 0, %54
  %56 = ashr i32 %53, %55
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %6, align 4
  %59 = and i32 %58, 31
  %60 = shl i32 %57, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %49
  %63 = load i32, i32* @float_flag_inexact, align 4
  %64 = call i32 @float_raise(i32 %63)
  br label %65

65:                                               ; preds = %62, %49
  %66 = load i64, i64* %4, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load i32, i32* %8, align 4
  %70 = sub nsw i32 0, %69
  br label %73

71:                                               ; preds = %65
  %72 = load i32, i32* %8, align 4
  br label %73

73:                                               ; preds = %71, %68
  %74 = phi i32 [ %70, %68 ], [ %72, %71 ]
  store i32 %74, i32* %2, align 4
  br label %75

75:                                               ; preds = %73, %47, %35, %34, %22
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local i32 @extractFloat32Frac(i32) #1

declare dso_local i32 @extractFloat32Exp(i32) #1

declare dso_local i64 @extractFloat32Sign(i32) #1

declare dso_local i32 @float_raise(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
