; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/paravirt/extr_paravirt-irq.c_irq_mbox_ipi.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/paravirt/extr_paravirt-irq.c_irq_mbox_ipi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MBOX_BITS_PER_CPU = common dso_local global i32 0, align 4
@mips_irq_chip = common dso_local global i64 0, align 8
@mips_irq_chip_reg_raw_w1s = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @irq_mbox_ipi(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @cpunum_for_cpu(i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @MBOX_BITS_PER_CPU, align 4
  %11 = shl i32 1, %10
  %12 = icmp uge i32 %9, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @WARN_ON(i32 %13)
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @MBOX_BITS_PER_CPU, align 4
  %18 = mul i32 %16, %17
  %19 = shl i32 %15, %18
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i64, i64* @mips_irq_chip, align 8
  %22 = load i64, i64* @mips_irq_chip_reg_raw_w1s, align 8
  %23 = add nsw i64 %21, %22
  %24 = add i64 %23, 4
  %25 = call i32 @__raw_writel(i32 %20, i64 %24)
  ret void
}

declare dso_local i32 @cpunum_for_cpu(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @__raw_writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
