; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/jazz/extr_irq.c_enable_r4030_irq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/jazz/extr_irq.c_enable_r4030_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }

@JAZZ_IRQ_START = common dso_local global i32 0, align 4
@r4030_lock = common dso_local global i32 0, align 4
@JAZZ_IO_IRQ_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @enable_r4030_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enable_r4030_irq(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %5 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %6 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @JAZZ_IRQ_START, align 4
  %9 = sub nsw i32 %7, %8
  %10 = shl i32 1, %9
  store i32 %10, i32* %3, align 4
  %11 = load i64, i64* %4, align 8
  %12 = call i32 @raw_spin_lock_irqsave(i32* @r4030_lock, i64 %11)
  %13 = load i32, i32* @JAZZ_IO_IRQ_ENABLE, align 4
  %14 = call i32 @r4030_read_reg16(i32 %13)
  %15 = load i32, i32* %3, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* @JAZZ_IO_IRQ_ENABLE, align 4
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @r4030_write_reg16(i32 %17, i32 %18)
  %20 = load i64, i64* %4, align 8
  %21 = call i32 @raw_spin_unlock_irqrestore(i32* @r4030_lock, i64 %20)
  ret void
}

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @r4030_read_reg16(i32) #1

declare dso_local i32 @r4030_write_reg16(i32, i32) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
