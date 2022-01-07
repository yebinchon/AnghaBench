; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap1/extr_fpga.c_fpga_unmask_irq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap1/extr_fpga.c_fpga_unmask_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }

@OMAP_FPGA_IRQ_BASE = common dso_local global i32 0, align 4
@OMAP1510_FPGA_IMR_LO = common dso_local global i32 0, align 4
@OMAP1510_FPGA_IMR_HI = common dso_local global i32 0, align 4
@INNOVATOR_FPGA_IMR2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @fpga_unmask_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fpga_unmask_irq(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %4 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %5 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @OMAP_FPGA_IRQ_BASE, align 4
  %8 = sub i32 %6, %7
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp ult i32 %9, 8
  br i1 %10, label %11, label %19

11:                                               ; preds = %1
  %12 = load i32, i32* @OMAP1510_FPGA_IMR_LO, align 4
  %13 = call i32 @__raw_readb(i32 %12)
  %14 = load i32, i32* %3, align 4
  %15 = shl i32 1, %14
  %16 = or i32 %13, %15
  %17 = load i32, i32* @OMAP1510_FPGA_IMR_LO, align 4
  %18 = call i32 @__raw_writeb(i32 %16, i32 %17)
  br label %41

19:                                               ; preds = %1
  %20 = load i32, i32* %3, align 4
  %21 = icmp ult i32 %20, 16
  br i1 %21, label %22, label %31

22:                                               ; preds = %19
  %23 = load i32, i32* @OMAP1510_FPGA_IMR_HI, align 4
  %24 = call i32 @__raw_readb(i32 %23)
  %25 = load i32, i32* %3, align 4
  %26 = sub i32 %25, 8
  %27 = shl i32 1, %26
  %28 = or i32 %24, %27
  %29 = load i32, i32* @OMAP1510_FPGA_IMR_HI, align 4
  %30 = call i32 @__raw_writeb(i32 %28, i32 %29)
  br label %40

31:                                               ; preds = %19
  %32 = load i32, i32* @INNOVATOR_FPGA_IMR2, align 4
  %33 = call i32 @__raw_readb(i32 %32)
  %34 = load i32, i32* %3, align 4
  %35 = sub i32 %34, 16
  %36 = shl i32 1, %35
  %37 = or i32 %33, %36
  %38 = load i32, i32* @INNOVATOR_FPGA_IMR2, align 4
  %39 = call i32 @__raw_writeb(i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %31, %22
  br label %41

41:                                               ; preds = %40, %11
  ret void
}

declare dso_local i32 @__raw_writeb(i32, i32) #1

declare dso_local i32 @__raw_readb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
