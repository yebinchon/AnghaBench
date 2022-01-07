; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/boards/mach-cayman/extr_irq.c_disable_cayman_irq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/boards/mach-cayman/extr_irq.c_disable_cayman_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }

@START_EXT_IRQS = common dso_local global i64 0, align 8
@EPLD_MASK_BASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @disable_cayman_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @disable_cayman_irq(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %8 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %9 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %3, align 4
  %11 = load i64, i64* @START_EXT_IRQS, align 8
  %12 = load i32, i32* %3, align 4
  %13 = zext i32 %12 to i64
  %14 = sub nsw i64 %13, %11
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* @EPLD_MASK_BASE, align 4
  %17 = load i32, i32* %3, align 4
  %18 = udiv i32 %17, 8
  %19 = shl i32 %18, 2
  %20 = add i32 %16, %19
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %3, align 4
  %22 = urem i32 %21, 8
  %23 = shl i32 1, %22
  %24 = trunc i32 %23 to i8
  store i8 %24, i8* %7, align 1
  %25 = load i64, i64* %4, align 8
  %26 = call i32 @local_irq_save(i64 %25)
  %27 = load i32, i32* %6, align 4
  %28 = call i64 @__raw_readl(i32 %27)
  store i64 %28, i64* %5, align 8
  %29 = load i8, i8* %7, align 1
  %30 = zext i8 %29 to i32
  %31 = xor i32 %30, -1
  %32 = sext i32 %31 to i64
  %33 = load i64, i64* %5, align 8
  %34 = and i64 %33, %32
  store i64 %34, i64* %5, align 8
  %35 = load i64, i64* %5, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @__raw_writel(i64 %35, i32 %36)
  %38 = load i64, i64* %4, align 8
  %39 = call i32 @local_irq_restore(i64 %38)
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i64 @__raw_readl(i32) #1

declare dso_local i32 @__raw_writel(i64, i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
