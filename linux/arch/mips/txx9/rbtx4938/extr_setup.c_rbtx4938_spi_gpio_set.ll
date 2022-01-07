; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/txx9/rbtx4938/extr_setup.c_rbtx4938_spi_gpio_set.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/txx9/rbtx4938/extr_setup.c_rbtx4938_spi_gpio_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }

@rbtx4938_spi_gpio_lock = common dso_local global i32 0, align 4
@rbtx4938_spics_addr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gpio_chip*, i32, i32)* @rbtx4938_spi_gpio_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rbtx4938_spi_gpio_set(%struct.gpio_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i64, i64* %8, align 8
  %10 = call i32 @spin_lock_irqsave(i32* @rbtx4938_spi_gpio_lock, i64 %9)
  %11 = load i32, i32* @rbtx4938_spics_addr, align 4
  %12 = call i32 @readb(i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %3
  %16 = load i32, i32* %5, align 4
  %17 = shl i32 1, %16
  %18 = load i32, i32* %7, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %7, align 4
  br label %26

20:                                               ; preds = %3
  %21 = load i32, i32* %5, align 4
  %22 = shl i32 1, %21
  %23 = xor i32 %22, -1
  %24 = load i32, i32* %7, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %7, align 4
  br label %26

26:                                               ; preds = %20, %15
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @rbtx4938_spics_addr, align 4
  %29 = call i32 @writeb(i32 %27, i32 %28)
  %30 = call i32 (...) @mmiowb()
  %31 = load i64, i64* %8, align 8
  %32 = call i32 @spin_unlock_irqrestore(i32* @rbtx4938_spi_gpio_lock, i64 %31)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readb(i32) #1

declare dso_local i32 @writeb(i32, i32) #1

declare dso_local i32 @mmiowb(...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
