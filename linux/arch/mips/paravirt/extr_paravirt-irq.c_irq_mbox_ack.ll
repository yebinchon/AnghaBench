; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/paravirt/extr_paravirt-irq.c_irq_mbox_ack.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/paravirt/extr_paravirt-irq.c_irq_mbox_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }

@MIPS_IRQ_MBOX0 = common dso_local global i32 0, align 4
@MBOX_BITS_PER_CPU = common dso_local global i32 0, align 4
@mips_irq_chip = common dso_local global i64 0, align 8
@mips_irq_chip_reg_raw_w1c = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @irq_mbox_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @irq_mbox_ack(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %5 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %6 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @MIPS_IRQ_MBOX0, align 4
  %9 = sub i32 %7, %8
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @MBOX_BITS_PER_CPU, align 4
  %12 = icmp uge i32 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @WARN_ON(i32 %13)
  %15 = call i32 (...) @get_ebase_cpunum()
  %16 = load i32, i32* @MBOX_BITS_PER_CPU, align 4
  %17 = mul i32 %15, %16
  %18 = load i32, i32* %4, align 4
  %19 = add i32 %17, %18
  %20 = shl i32 1, %19
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  %22 = load i64, i64* @mips_irq_chip, align 8
  %23 = load i64, i64* @mips_irq_chip_reg_raw_w1c, align 8
  %24 = add nsw i64 %22, %23
  %25 = add i64 %24, 4
  %26 = call i32 @__raw_writel(i32 %21, i64 %25)
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @get_ebase_cpunum(...) #1

declare dso_local i32 @__raw_writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
