; ModuleID = '/home/carl/AnghaBench/linux/arch/m68k/coldfire/extr_sltimers.c_mcfslt_read_clk.c'
source_filename = "/home/carl/AnghaBench/linux/arch/m68k/coldfire/extr_sltimers.c_mcfslt_read_clk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clocksource = type { i32 }

@MCFSLT_SCNT = common dso_local global i32 0, align 4
@mcfslt_cnt = common dso_local global i32 0, align 4
@MCFSLT_SSR = common dso_local global i32 0, align 4
@MCFSLT_SSR_TE = common dso_local global i32 0, align 4
@mcfslt_cycles_per_jiffy = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clocksource*)* @mcfslt_read_clk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcfslt_read_clk(%struct.clocksource* %0) #0 {
  %2 = alloca %struct.clocksource*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.clocksource* %0, %struct.clocksource** %2, align 8
  %6 = load i64, i64* %3, align 8
  %7 = call i32 @local_irq_save(i64 %6)
  %8 = load i32, i32* @MCFSLT_SCNT, align 4
  %9 = call i32 @TA(i32 %8)
  %10 = call i32 @__raw_readl(i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* @mcfslt_cnt, align 4
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* @MCFSLT_SSR, align 4
  %13 = call i32 @TA(i32 %12)
  %14 = call i32 @__raw_readl(i32 %13)
  %15 = load i32, i32* @MCFSLT_SSR_TE, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %1
  %19 = load i32, i32* @mcfslt_cycles_per_jiffy, align 4
  %20 = load i32, i32* %4, align 4
  %21 = add nsw i32 %20, %19
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* @MCFSLT_SCNT, align 4
  %23 = call i32 @TA(i32 %22)
  %24 = call i32 @__raw_readl(i32 %23)
  store i32 %24, i32* %5, align 4
  br label %25

25:                                               ; preds = %18, %1
  %26 = load i64, i64* %3, align 8
  %27 = call i32 @local_irq_restore(i64 %26)
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @mcfslt_cycles_per_jiffy, align 4
  %30 = sub nsw i32 %29, 1
  %31 = load i32, i32* %5, align 4
  %32 = sub nsw i32 %30, %31
  %33 = add nsw i32 %28, %32
  ret i32 %33
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @__raw_readl(i32) #1

declare dso_local i32 @TA(i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
