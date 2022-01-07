; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/nwfpe/extr_softfloat.c_float32_eq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/nwfpe/extr_softfloat.c_float32_eq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@float_flag_invalid = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @float32_eq(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @extractFloat32Exp(i32 %6)
  %8 = icmp eq i32 %7, 255
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = call i64 @extractFloat32Frac(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %21, label %13

13:                                               ; preds = %9, %2
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @extractFloat32Exp(i32 %14)
  %16 = icmp eq i32 %15, 255
  br i1 %16, label %17, label %33

17:                                               ; preds = %13
  %18 = load i32, i32* %5, align 4
  %19 = call i64 @extractFloat32Frac(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %17, %9
  %22 = load i32, i32* %4, align 4
  %23 = call i64 @float32_is_signaling_nan(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* %5, align 4
  %27 = call i64 @float32_is_signaling_nan(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %25, %21
  %30 = load i32, i32* @float_flag_invalid, align 4
  %31 = call i32 @float_raise(i32 %30)
  br label %32

32:                                               ; preds = %29, %25
  store i32 0, i32* %3, align 4
  br label %47

33:                                               ; preds = %17, %13
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %44, label %37

37:                                               ; preds = %33
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* %5, align 4
  %40 = or i32 %38, %39
  %41 = shl i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = icmp eq i64 %42, 0
  br label %44

44:                                               ; preds = %37, %33
  %45 = phi i1 [ true, %33 ], [ %43, %37 ]
  %46 = zext i1 %45 to i32
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %44, %32
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @extractFloat32Exp(i32) #1

declare dso_local i64 @extractFloat32Frac(i32) #1

declare dso_local i64 @float32_is_signaling_nan(i32) #1

declare dso_local i32 @float_raise(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
