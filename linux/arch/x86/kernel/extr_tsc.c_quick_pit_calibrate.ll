; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_tsc.c_quick_pit_calibrate.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_tsc.c_quick_pit_calibrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_QUICK_PIT_ITERATIONS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Fast TSC calibration failed\0A\00", align 1
@PIT_TICK_RATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Fast TSC calibration using PIT\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @quick_pit_calibrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @quick_pit_calibrate() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = call i32 (...) @has_legacy_pic()
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %0
  store i64 0, i64* %1, align 8
  br label %83

10:                                               ; preds = %0
  %11 = call i32 @inb(i32 97)
  %12 = and i32 %11, -3
  %13 = or i32 %12, 1
  %14 = call i32 @outb(i32 %13, i32 97)
  %15 = call i32 @outb(i32 176, i32 67)
  %16 = call i32 @outb(i32 255, i32 66)
  %17 = call i32 @outb(i32 255, i32 66)
  %18 = call i32 @pit_verify_msb(i32 0)
  %19 = call i64 @pit_expect_msb(i32 255, i32* %3, i64* %5)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %69

21:                                               ; preds = %10
  store i32 1, i32* %2, align 4
  br label %22

22:                                               ; preds = %65, %21
  %23 = load i32, i32* %2, align 4
  %24 = load i32, i32* @MAX_QUICK_PIT_ITERATIONS, align 4
  %25 = icmp sle i32 %23, %24
  br i1 %25, label %26, label %68

26:                                               ; preds = %22
  %27 = load i32, i32* %2, align 4
  %28 = sub nsw i32 255, %27
  %29 = call i64 @pit_expect_msb(i32 %28, i32* %4, i64* %6)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  br label %68

32:                                               ; preds = %26
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* %4, align 4
  %35 = sub nsw i32 %34, %33
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %2, align 4
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %38, label %49

38:                                               ; preds = %32
  %39 = load i64, i64* %5, align 8
  %40 = load i64, i64* %6, align 8
  %41 = add i64 %39, %40
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @MAX_QUICK_PIT_ITERATIONS, align 4
  %44 = mul nsw i32 %42, %43
  %45 = ashr i32 %44, 11
  %46 = sext i32 %45 to i64
  %47 = icmp uge i64 %41, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %38
  store i64 0, i64* %1, align 8
  br label %83

49:                                               ; preds = %38, %32
  %50 = load i64, i64* %5, align 8
  %51 = load i64, i64* %6, align 8
  %52 = add i64 %50, %51
  %53 = load i32, i32* %4, align 4
  %54 = ashr i32 %53, 11
  %55 = sext i32 %54 to i64
  %56 = icmp uge i64 %52, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %49
  br label %65

58:                                               ; preds = %49
  %59 = load i32, i32* %2, align 4
  %60 = sub nsw i32 254, %59
  %61 = call i32 @pit_verify_msb(i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %58
  br label %68

64:                                               ; preds = %58
  br label %71

65:                                               ; preds = %57
  %66 = load i32, i32* %2, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %2, align 4
  br label %22

68:                                               ; preds = %63, %31, %22
  br label %69

69:                                               ; preds = %68, %10
  %70 = call i32 @pr_info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %1, align 8
  br label %83

71:                                               ; preds = %64
  %72 = load i32, i32* @PIT_TICK_RATE, align 4
  %73 = load i32, i32* %4, align 4
  %74 = mul nsw i32 %73, %72
  store i32 %74, i32* %4, align 4
  %75 = load i32, i32* %4, align 4
  %76 = load i32, i32* %2, align 4
  %77 = mul nsw i32 %76, 256
  %78 = mul nsw i32 %77, 1000
  %79 = call i32 @do_div(i32 %75, i32 %78)
  %80 = call i32 @pr_info(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %81 = load i32, i32* %4, align 4
  %82 = sext i32 %81 to i64
  store i64 %82, i64* %1, align 8
  br label %83

83:                                               ; preds = %71, %69, %48, %9
  %84 = load i64, i64* %1, align 8
  ret i64 %84
}

declare dso_local i32 @has_legacy_pic(...) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @pit_verify_msb(i32) #1

declare dso_local i64 @pit_expect_msb(i32, i32*, i64*) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @do_div(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
