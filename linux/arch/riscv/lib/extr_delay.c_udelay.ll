; ModuleID = '/home/carl/AnghaBench/linux/arch/riscv/lib/extr_delay.c_udelay.c'
source_filename = "/home/carl/AnghaBench/linux/arch/riscv/lib/extr_delay.c_udelay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@lpj_fine = common dso_local global i32 0, align 4
@UDELAY_MULT = common dso_local global i32 0, align 4
@MAX_UDELAY_US = common dso_local global i64 0, align 8
@riscv_timebase = common dso_local global i32 0, align 4
@UDELAY_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @udelay(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = trunc i64 %5 to i32
  %7 = load i32, i32* @lpj_fine, align 4
  %8 = mul nsw i32 %6, %7
  %9 = load i32, i32* @UDELAY_MULT, align 4
  %10 = mul nsw i32 %8, %9
  store i32 %10, i32* %3, align 4
  %11 = load i64, i64* %2, align 8
  %12 = load i64, i64* @MAX_UDELAY_US, align 8
  %13 = icmp ugt i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %1
  %18 = load i64, i64* %2, align 8
  %19 = trunc i64 %18 to i32
  %20 = load i32, i32* @riscv_timebase, align 4
  %21 = mul nsw i32 %19, %20
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @do_div(i32 %22, i32 1000000)
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @__delay(i32 %24)
  br label %31

26:                                               ; preds = %1
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @UDELAY_SHIFT, align 4
  %29 = ashr i32 %27, %28
  %30 = call i32 @__delay(i32 %29)
  br label %31

31:                                               ; preds = %26, %17
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i32 @__delay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
