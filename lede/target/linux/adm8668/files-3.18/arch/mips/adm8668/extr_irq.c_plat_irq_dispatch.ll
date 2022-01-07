; ModuleID = '/home/carl/AnghaBench/lede/target/linux/adm8668/files-3.18/arch/mips/adm8668/extr_irq.c_plat_irq_dispatch.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/adm8668/files-3.18/arch/mips/adm8668/extr_irq.c_plat_irq_dispatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ST0_IM = common dso_local global i32 0, align 4
@STATUSF_IP7 = common dso_local global i32 0, align 4
@MIPS_CPU_IRQ_BASE = common dso_local global i64 0, align 8
@STATUSF_IP2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @plat_irq_dispatch() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @read_c0_cause()
  %3 = call i32 (...) @read_c0_status()
  %4 = and i32 %2, %3
  %5 = load i32, i32* @ST0_IM, align 4
  %6 = and i32 %4, %5
  store i32 %6, i32* %1, align 4
  %7 = load i32, i32* %1, align 4
  %8 = load i32, i32* @STATUSF_IP7, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %0
  %12 = load i64, i64* @MIPS_CPU_IRQ_BASE, align 8
  %13 = add nsw i64 %12, 7
  %14 = call i32 @do_IRQ(i64 %13)
  br label %25

15:                                               ; preds = %0
  %16 = load i32, i32* %1, align 4
  %17 = load i32, i32* @STATUSF_IP2, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = call i32 (...) @adm8668_irq_cascade()
  br label %24

22:                                               ; preds = %15
  %23 = call i32 (...) @spurious_interrupt()
  br label %24

24:                                               ; preds = %22, %20
  br label %25

25:                                               ; preds = %24, %11
  ret void
}

declare dso_local i32 @read_c0_cause(...) #1

declare dso_local i32 @read_c0_status(...) #1

declare dso_local i32 @do_IRQ(i64) #1

declare dso_local i32 @adm8668_irq_cascade(...) #1

declare dso_local i32 @spurious_interrupt(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
