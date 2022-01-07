; ModuleID = '/home/carl/AnghaBench/linux/arch/m68k/mvme16x/extr_config.c_mvme16x_read_clk.c'
source_filename = "/home/carl/AnghaBench/linux/arch/m68k/mvme16x/extr_config.c_mvme16x_read_clk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clocksource = type { i32 }

@PCCTOVR1 = common dso_local global i32 0, align 4
@PCCTCNT1 = common dso_local global i32 0, align 4
@PCC_TIMER_CYCLES = common dso_local global i32 0, align 4
@clk_total = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clocksource*)* @mvme16x_read_clk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvme16x_read_clk(%struct.clocksource* %0) #0 {
  %2 = alloca %struct.clocksource*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.clocksource* %0, %struct.clocksource** %2, align 8
  %7 = load i64, i64* %3, align 8
  %8 = call i32 @local_irq_save(i64 %7)
  %9 = load i32, i32* @PCCTOVR1, align 4
  %10 = call i32 @in_8(i32 %9)
  %11 = ashr i32 %10, 4
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* @PCCTCNT1, align 4
  %13 = call i32 @in_be32(i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* @PCCTOVR1, align 4
  %15 = call i32 @in_8(i32 %14)
  %16 = ashr i32 %15, 4
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load i32, i32* @PCCTCNT1, align 4
  %22 = call i32 @in_be32(i32 %21)
  store i32 %22, i32* %6, align 4
  br label %23

23:                                               ; preds = %20, %1
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @PCC_TIMER_CYCLES, align 4
  %26 = mul nsw i32 %24, %25
  %27 = load i32, i32* %6, align 4
  %28 = add nsw i32 %27, %26
  store i32 %28, i32* %6, align 4
  %29 = load i64, i64* @clk_total, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 %31, %29
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %6, align 4
  %34 = load i64, i64* %3, align 8
  %35 = call i32 @local_irq_restore(i64 %34)
  %36 = load i32, i32* %6, align 4
  ret i32 %36
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @in_8(i32) #1

declare dso_local i32 @in_be32(i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
