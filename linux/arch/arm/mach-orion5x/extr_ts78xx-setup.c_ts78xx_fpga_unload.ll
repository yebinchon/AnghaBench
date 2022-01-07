; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-orion5x/extr_ts78xx-setup.c_ts78xx_fpga_unload.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-orion5x/extr_ts78xx-setup.c_ts78xx_fpga_unload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@TS78XX_FPGA_REGS_VIRT_BASE = common dso_local global i32 0, align 4
@ts78xx_fpga = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [75 x i8] c"FPGA magic/rev mismatch\0ATS-78xx FPGA: was 0x%.6x/%.2x but now 0x%.6x/%.2x\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @ts78xx_fpga_unload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ts78xx_fpga_unload() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @TS78XX_FPGA_REGS_VIRT_BASE, align 4
  %4 = call i32 @readl(i32 %3)
  store i32 %4, i32* %2, align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ts78xx_fpga, i32 0, i32 0), align 4
  %6 = load i32, i32* %2, align 4
  %7 = icmp ne i32 %5, %6
  br i1 %7, label %8, label %22

8:                                                ; preds = %0
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ts78xx_fpga, i32 0, i32 0), align 4
  %10 = lshr i32 %9, 8
  %11 = and i32 %10, 16777215
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ts78xx_fpga, i32 0, i32 0), align 4
  %13 = and i32 %12, 255
  %14 = load i32, i32* %2, align 4
  %15 = lshr i32 %14, 8
  %16 = and i32 %15, 16777215
  %17 = load i32, i32* %2, align 4
  %18 = and i32 %17, 255
  %19 = call i32 @pr_err(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %13, i32 %16, i32 %18)
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ts78xx_fpga, i32 0, i32 1), align 4
  %20 = load i32, i32* @EBUSY, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %1, align 4
  br label %29

22:                                               ; preds = %0
  %23 = call i64 (...) @ts78xx_fpga_unload_devices()
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ts78xx_fpga, i32 0, i32 1), align 4
  %26 = load i32, i32* @EBUSY, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %1, align 4
  br label %29

28:                                               ; preds = %22
  store i32 0, i32* %1, align 4
  br label %29

29:                                               ; preds = %28, %25, %8
  %30 = load i32, i32* %1, align 4
  ret i32 %30
}

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @pr_err(i8*, i32, i32, i32, i32) #1

declare dso_local i64 @ts78xx_fpga_unload_devices(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
