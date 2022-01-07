; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/ar7/extr_clock.c_tnetd7300_dsp_clock.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/ar7/extr_clock.c_tnetd7300_dsp_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AR7_REGS_GPIO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @tnetd7300_dsp_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tnetd7300_dsp_clock() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = call i32 (...) @ar7_chip_rev()
  store i32 %5, i32* %4, align 4
  %6 = load i64, i64* @AR7_REGS_GPIO, align 8
  %7 = add nsw i64 %6, 24
  %8 = call i64 @KSEG1ADDR(i64 %7)
  %9 = inttoptr i64 %8 to i8*
  %10 = call i32 @readl(i8* %9)
  store i32 %10, i32* %2, align 4
  %11 = load i64, i64* @AR7_REGS_GPIO, align 8
  %12 = add nsw i64 %11, 28
  %13 = call i64 @KSEG1ADDR(i64 %12)
  %14 = inttoptr i64 %13 to i8*
  %15 = call i32 @readl(i8* %14)
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = and i32 %16, 8388608
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %38

20:                                               ; preds = %0
  %21 = load i32, i32* %4, align 4
  %22 = icmp sge i32 %21, 35
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 87
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store i32 250000000, i32* %1, align 4
  br label %38

27:                                               ; preds = %23, %20
  %28 = load i32, i32* %3, align 4
  %29 = and i32 %28, 8191
  %30 = shl i32 %29, 10
  %31 = load i32, i32* %2, align 4
  %32 = and i32 %31, -4194304
  %33 = lshr i32 %32, 22
  %34 = or i32 %30, %33
  %35 = icmp ugt i32 %34, 4208000
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  store i32 250000000, i32* %1, align 4
  br label %38

37:                                               ; preds = %27
  store i32 0, i32* %1, align 4
  br label %38

38:                                               ; preds = %37, %36, %26, %19
  %39 = load i32, i32* %1, align 4
  ret i32 %39
}

declare dso_local i32 @ar7_chip_rev(...) #1

declare dso_local i32 @readl(i8*) #1

declare dso_local i64 @KSEG1ADDR(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
