; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_cpufreq-nforce2.c_nforce2_calc_pll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_cpufreq-nforce2.c_nforce2_calc_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @nforce2_calc_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nforce2_calc_pll(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8 0, i8* %6, align 1
  store i8 0, i8* %7, align 1
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %52, %1
  %10 = load i8, i8* %6, align 1
  %11 = zext i8 %10 to i32
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = load i8, i8* %7, align 1
  %15 = zext i8 %14 to i32
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %13, %9
  %18 = load i32, i32* %8, align 4
  %19 = icmp sle i32 %18, 3
  br label %20

20:                                               ; preds = %17, %13
  %21 = phi i1 [ false, %13 ], [ %19, %17 ]
  br i1 %21, label %22, label %55

22:                                               ; preds = %20
  store i8 2, i8* %5, align 1
  br label %23

23:                                               ; preds = %49, %22
  %24 = load i8, i8* %5, align 1
  %25 = zext i8 %24 to i32
  %26 = icmp sle i32 %25, 128
  br i1 %26, label %27, label %52

27:                                               ; preds = %23
  store i8 1, i8* %4, align 1
  br label %28

28:                                               ; preds = %45, %27
  %29 = load i8, i8* %4, align 1
  %30 = zext i8 %29 to i32
  %31 = icmp sle i32 %30, 254
  br i1 %31, label %32, label %48

32:                                               ; preds = %28
  %33 = load i8, i8* %4, align 1
  %34 = load i8, i8* %5, align 1
  %35 = call i32 @NFORCE2_PLL(i8 zeroext %33, i8 zeroext %34)
  %36 = call i32 @nforce2_calc_fsb(i32 %35)
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* %8, align 4
  %39 = add i32 %37, %38
  %40 = icmp eq i32 %36, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %32
  %42 = load i8, i8* %4, align 1
  store i8 %42, i8* %6, align 1
  %43 = load i8, i8* %5, align 1
  store i8 %43, i8* %7, align 1
  br label %44

44:                                               ; preds = %41, %32
  br label %45

45:                                               ; preds = %44
  %46 = load i8, i8* %4, align 1
  %47 = add i8 %46, 1
  store i8 %47, i8* %4, align 1
  br label %28

48:                                               ; preds = %28
  br label %49

49:                                               ; preds = %48
  %50 = load i8, i8* %5, align 1
  %51 = add i8 %50, 1
  store i8 %51, i8* %5, align 1
  br label %23

52:                                               ; preds = %23
  %53 = load i32, i32* %8, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %8, align 4
  br label %9

55:                                               ; preds = %20
  %56 = load i8, i8* %6, align 1
  %57 = zext i8 %56 to i32
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %55
  %60 = load i8, i8* %7, align 1
  %61 = zext i8 %60 to i32
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %59, %55
  store i32 -1, i32* %2, align 4
  br label %68

64:                                               ; preds = %59
  %65 = load i8, i8* %6, align 1
  %66 = load i8, i8* %7, align 1
  %67 = call i32 @NFORCE2_PLL(i8 zeroext %65, i8 zeroext %66)
  store i32 %67, i32* %2, align 4
  br label %68

68:                                               ; preds = %64, %63
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i32 @nforce2_calc_fsb(i32) #1

declare dso_local i32 @NFORCE2_PLL(i8 zeroext, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
