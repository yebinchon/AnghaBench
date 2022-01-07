; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/lantiq/xway/extr_sysctrl.c_clkdev_add_pci.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/lantiq/xway/extr_sysctrl.c_clkdev_add_pci.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { %struct.TYPE_2__, i32, i32, i32, i64, i32, i32 }
%struct.TYPE_2__ = type { i8*, i8*, %struct.clk* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"17000000.pci\00", align 1
@CLOCK_33M = common dso_local global i32 0, align 4
@valid_pci_rates = common dso_local global i32 0, align 4
@pci_enable = common dso_local global i32 0, align 4
@pmu_disable = common dso_local global i32 0, align 4
@PMU_PCI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"external\00", align 1
@pci_ext_enable = common dso_local global i32 0, align 4
@pci_ext_disable = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @clkdev_add_pci to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clkdev_add_pci() #0 {
  %1 = alloca %struct.clk*, align 8
  %2 = alloca %struct.clk*, align 8
  %3 = load i32, i32* @GFP_KERNEL, align 4
  %4 = call %struct.clk* @kzalloc(i32 56, i32 %3)
  store %struct.clk* %4, %struct.clk** %1, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.clk* @kzalloc(i32 56, i32 %5)
  store %struct.clk* %6, %struct.clk** %2, align 8
  %7 = load %struct.clk*, %struct.clk** %1, align 8
  %8 = getelementptr inbounds %struct.clk, %struct.clk* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  %10 = load %struct.clk*, %struct.clk** %1, align 8
  %11 = getelementptr inbounds %struct.clk, %struct.clk* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  store i8* null, i8** %12, align 8
  %13 = load %struct.clk*, %struct.clk** %1, align 8
  %14 = load %struct.clk*, %struct.clk** %1, align 8
  %15 = getelementptr inbounds %struct.clk, %struct.clk* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 2
  store %struct.clk* %13, %struct.clk** %16, align 8
  %17 = load i32, i32* @CLOCK_33M, align 4
  %18 = load %struct.clk*, %struct.clk** %1, align 8
  %19 = getelementptr inbounds %struct.clk, %struct.clk* %18, i32 0, i32 6
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* @valid_pci_rates, align 4
  %21 = load %struct.clk*, %struct.clk** %1, align 8
  %22 = getelementptr inbounds %struct.clk, %struct.clk* %21, i32 0, i32 5
  store i32 %20, i32* %22, align 8
  %23 = load i32, i32* @pci_enable, align 4
  %24 = load %struct.clk*, %struct.clk** %1, align 8
  %25 = getelementptr inbounds %struct.clk, %struct.clk* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* @pmu_disable, align 4
  %27 = load %struct.clk*, %struct.clk** %1, align 8
  %28 = getelementptr inbounds %struct.clk, %struct.clk* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 8
  %29 = load %struct.clk*, %struct.clk** %1, align 8
  %30 = getelementptr inbounds %struct.clk, %struct.clk* %29, i32 0, i32 4
  store i64 0, i64* %30, align 8
  %31 = load i32, i32* @PMU_PCI, align 4
  %32 = load %struct.clk*, %struct.clk** %1, align 8
  %33 = getelementptr inbounds %struct.clk, %struct.clk* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 8
  %34 = load %struct.clk*, %struct.clk** %1, align 8
  %35 = getelementptr inbounds %struct.clk, %struct.clk* %34, i32 0, i32 0
  %36 = call i32 @clkdev_add(%struct.TYPE_2__* %35)
  %37 = load %struct.clk*, %struct.clk** %2, align 8
  %38 = getelementptr inbounds %struct.clk, %struct.clk* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %39, align 8
  %40 = load %struct.clk*, %struct.clk** %2, align 8
  %41 = getelementptr inbounds %struct.clk, %struct.clk* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %42, align 8
  %43 = load %struct.clk*, %struct.clk** %2, align 8
  %44 = load %struct.clk*, %struct.clk** %2, align 8
  %45 = getelementptr inbounds %struct.clk, %struct.clk* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 2
  store %struct.clk* %43, %struct.clk** %46, align 8
  %47 = load i32, i32* @pci_ext_enable, align 4
  %48 = load %struct.clk*, %struct.clk** %2, align 8
  %49 = getelementptr inbounds %struct.clk, %struct.clk* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* @pci_ext_disable, align 4
  %51 = load %struct.clk*, %struct.clk** %2, align 8
  %52 = getelementptr inbounds %struct.clk, %struct.clk* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 8
  %53 = load %struct.clk*, %struct.clk** %2, align 8
  %54 = getelementptr inbounds %struct.clk, %struct.clk* %53, i32 0, i32 0
  %55 = call i32 @clkdev_add(%struct.TYPE_2__* %54)
  ret void
}

declare dso_local %struct.clk* @kzalloc(i32, i32) #1

declare dso_local i32 @clkdev_add(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
