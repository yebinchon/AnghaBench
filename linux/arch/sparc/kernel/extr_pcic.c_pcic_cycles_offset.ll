; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_pcic.c_pcic_cycles_offset.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_pcic.c_pcic_cycles_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@pcic0 = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@PCI_SYS_COUNTER = common dso_local global i64 0, align 8
@PCI_SYS_COUNTER_OVERFLOW = common dso_local global i32 0, align 4
@TICK_TIMER_LIMIT = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@USECS_PER_JIFFY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @pcic_cycles_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcic_cycles_offset() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pcic0, i32 0, i32 0), align 8
  %4 = load i64, i64* @PCI_SYS_COUNTER, align 8
  %5 = add nsw i64 %3, %4
  %6 = call i32 @readl(i64 %5)
  store i32 %6, i32* %1, align 4
  %7 = load i32, i32* %1, align 4
  %8 = load i32, i32* @PCI_SYS_COUNTER_OVERFLOW, align 4
  %9 = xor i32 %8, -1
  %10 = and i32 %7, %9
  store i32 %10, i32* %2, align 4
  %11 = load i32, i32* %1, align 4
  %12 = load i32, i32* @PCI_SYS_COUNTER_OVERFLOW, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %0
  %16 = load i32, i32* @TICK_TIMER_LIMIT, align 4
  %17 = load i32, i32* %2, align 4
  %18 = add nsw i32 %17, %16
  store i32 %18, i32* %2, align 4
  br label %19

19:                                               ; preds = %15, %0
  %20 = load i32, i32* %2, align 4
  %21 = load i32, i32* @HZ, align 4
  %22 = sdiv i32 %20, %21
  %23 = load i32, i32* @USECS_PER_JIFFY, align 4
  %24 = mul nsw i32 %22, %23
  %25 = load i32, i32* @TICK_TIMER_LIMIT, align 4
  %26 = load i32, i32* @HZ, align 4
  %27 = sdiv i32 %25, %26
  %28 = sdiv i32 %24, %27
  store i32 %28, i32* %2, align 4
  %29 = load i32, i32* %2, align 4
  %30 = mul nsw i32 %29, 2
  ret i32 %30
}

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
