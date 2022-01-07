; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/loongson32/common/extr_reset.c_ls1x_restart.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/loongson32/common/extr_reset.c_ls1x_restart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@wdt_reg_base = common dso_local global i64 0, align 8
@WDT_EN = common dso_local global i64 0, align 8
@WDT_TIMER = common dso_local global i64 0, align 8
@WDT_SET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ls1x_restart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ls1x_restart(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i64, i64* @wdt_reg_base, align 8
  %4 = load i64, i64* @WDT_EN, align 8
  %5 = add nsw i64 %3, %4
  %6 = call i32 @__raw_writel(i32 1, i64 %5)
  %7 = load i64, i64* @wdt_reg_base, align 8
  %8 = load i64, i64* @WDT_TIMER, align 8
  %9 = add nsw i64 %7, %8
  %10 = call i32 @__raw_writel(i32 1, i64 %9)
  %11 = load i64, i64* @wdt_reg_base, align 8
  %12 = load i64, i64* @WDT_SET, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @__raw_writel(i32 1, i64 %13)
  %15 = call i32 (...) @ls1x_halt()
  ret void
}

declare dso_local i32 @__raw_writel(i32, i64) #1

declare dso_local i32 @ls1x_halt(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
