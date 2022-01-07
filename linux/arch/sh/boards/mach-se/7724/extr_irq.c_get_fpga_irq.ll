; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/boards/mach-se/7724/extr_irq.c_get_fpga_irq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/boards/mach-se/7724/extr_irq.c_get_fpga_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpga_irq = type { i32, i32, i32, i32 }

@IRQ0_SR = common dso_local global i32 0, align 4
@IRQ0_MR = common dso_local global i32 0, align 4
@IRQ0_MASK = common dso_local global i32 0, align 4
@IRQ0_BASE = common dso_local global i32 0, align 4
@IRQ1_SR = common dso_local global i32 0, align 4
@IRQ1_MR = common dso_local global i32 0, align 4
@IRQ1_MASK = common dso_local global i32 0, align 4
@IRQ1_BASE = common dso_local global i32 0, align 4
@IRQ2_SR = common dso_local global i32 0, align 4
@IRQ2_MR = common dso_local global i32 0, align 4
@IRQ2_MASK = common dso_local global i32 0, align 4
@IRQ2_BASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast ({ i64, i64 } (i32)* @get_fpga_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal { i64, i64 } @get_fpga_irq(i32 %0) #0 {
  %2 = alloca %struct.fpga_irq, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %23 [
    i32 129, label %5
    i32 128, label %14
  ]

5:                                                ; preds = %1
  %6 = load i32, i32* @IRQ0_SR, align 4
  %7 = getelementptr inbounds %struct.fpga_irq, %struct.fpga_irq* %2, i32 0, i32 3
  store i32 %6, i32* %7, align 4
  %8 = load i32, i32* @IRQ0_MR, align 4
  %9 = getelementptr inbounds %struct.fpga_irq, %struct.fpga_irq* %2, i32 0, i32 2
  store i32 %8, i32* %9, align 4
  %10 = load i32, i32* @IRQ0_MASK, align 4
  %11 = getelementptr inbounds %struct.fpga_irq, %struct.fpga_irq* %2, i32 0, i32 1
  store i32 %10, i32* %11, align 4
  %12 = load i32, i32* @IRQ0_BASE, align 4
  %13 = getelementptr inbounds %struct.fpga_irq, %struct.fpga_irq* %2, i32 0, i32 0
  store i32 %12, i32* %13, align 4
  br label %32

14:                                               ; preds = %1
  %15 = load i32, i32* @IRQ1_SR, align 4
  %16 = getelementptr inbounds %struct.fpga_irq, %struct.fpga_irq* %2, i32 0, i32 3
  store i32 %15, i32* %16, align 4
  %17 = load i32, i32* @IRQ1_MR, align 4
  %18 = getelementptr inbounds %struct.fpga_irq, %struct.fpga_irq* %2, i32 0, i32 2
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* @IRQ1_MASK, align 4
  %20 = getelementptr inbounds %struct.fpga_irq, %struct.fpga_irq* %2, i32 0, i32 1
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* @IRQ1_BASE, align 4
  %22 = getelementptr inbounds %struct.fpga_irq, %struct.fpga_irq* %2, i32 0, i32 0
  store i32 %21, i32* %22, align 4
  br label %32

23:                                               ; preds = %1
  %24 = load i32, i32* @IRQ2_SR, align 4
  %25 = getelementptr inbounds %struct.fpga_irq, %struct.fpga_irq* %2, i32 0, i32 3
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* @IRQ2_MR, align 4
  %27 = getelementptr inbounds %struct.fpga_irq, %struct.fpga_irq* %2, i32 0, i32 2
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* @IRQ2_MASK, align 4
  %29 = getelementptr inbounds %struct.fpga_irq, %struct.fpga_irq* %2, i32 0, i32 1
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* @IRQ2_BASE, align 4
  %31 = getelementptr inbounds %struct.fpga_irq, %struct.fpga_irq* %2, i32 0, i32 0
  store i32 %30, i32* %31, align 4
  br label %32

32:                                               ; preds = %23, %14, %5
  %33 = bitcast %struct.fpga_irq* %2 to { i64, i64 }*
  %34 = load { i64, i64 }, { i64, i64 }* %33, align 4
  ret { i64, i64 } %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
