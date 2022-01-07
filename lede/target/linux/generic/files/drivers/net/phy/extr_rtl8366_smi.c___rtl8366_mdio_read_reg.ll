; ModuleID = '/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_rtl8366_smi.c___rtl8366_mdio_read_reg.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_rtl8366_smi.c___rtl8366_mdio_read_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8366_smi = type { %struct.mii_bus* }
%struct.mii_bus = type { i32, i32 (%struct.mii_bus*, i32, i32)*, i32 (%struct.mii_bus*, i32, i32, i32)* }

@MDC_REALTEK_PHY_ADDR = common dso_local global i32 0, align 4
@MDC_MDIO_START_REG = common dso_local global i32 0, align 4
@MDC_MDIO_START_OP = common dso_local global i32 0, align 4
@MDC_MDIO_CTRL0_REG = common dso_local global i32 0, align 4
@MDC_MDIO_ADDR_OP = common dso_local global i32 0, align 4
@MDC_MDIO_ADDRESS_REG = common dso_local global i32 0, align 4
@MDC_MDIO_CTRL1_REG = common dso_local global i32 0, align 4
@MDC_MDIO_READ_OP = common dso_local global i32 0, align 4
@MDC_MDIO_DATA_READ_REG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__rtl8366_mdio_read_reg(%struct.rtl8366_smi* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.rtl8366_smi*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mii_bus*, align 8
  store %struct.rtl8366_smi* %0, %struct.rtl8366_smi** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %9 = load i32, i32* @MDC_REALTEK_PHY_ADDR, align 4
  store i32 %9, i32* %7, align 4
  %10 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %4, align 8
  %11 = getelementptr inbounds %struct.rtl8366_smi, %struct.rtl8366_smi* %10, i32 0, i32 0
  %12 = load %struct.mii_bus*, %struct.mii_bus** %11, align 8
  store %struct.mii_bus* %12, %struct.mii_bus** %8, align 8
  %13 = call i32 (...) @in_interrupt()
  %14 = call i32 @BUG_ON(i32 %13)
  %15 = load %struct.mii_bus*, %struct.mii_bus** %8, align 8
  %16 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %15, i32 0, i32 0
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.mii_bus*, %struct.mii_bus** %8, align 8
  %19 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %18, i32 0, i32 2
  %20 = load i32 (%struct.mii_bus*, i32, i32, i32)*, i32 (%struct.mii_bus*, i32, i32, i32)** %19, align 8
  %21 = load %struct.mii_bus*, %struct.mii_bus** %8, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @MDC_MDIO_START_REG, align 4
  %24 = load i32, i32* @MDC_MDIO_START_OP, align 4
  %25 = call i32 %20(%struct.mii_bus* %21, i32 %22, i32 %23, i32 %24)
  %26 = load %struct.mii_bus*, %struct.mii_bus** %8, align 8
  %27 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %26, i32 0, i32 2
  %28 = load i32 (%struct.mii_bus*, i32, i32, i32)*, i32 (%struct.mii_bus*, i32, i32, i32)** %27, align 8
  %29 = load %struct.mii_bus*, %struct.mii_bus** %8, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @MDC_MDIO_CTRL0_REG, align 4
  %32 = load i32, i32* @MDC_MDIO_ADDR_OP, align 4
  %33 = call i32 %28(%struct.mii_bus* %29, i32 %30, i32 %31, i32 %32)
  %34 = load %struct.mii_bus*, %struct.mii_bus** %8, align 8
  %35 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %34, i32 0, i32 2
  %36 = load i32 (%struct.mii_bus*, i32, i32, i32)*, i32 (%struct.mii_bus*, i32, i32, i32)** %35, align 8
  %37 = load %struct.mii_bus*, %struct.mii_bus** %8, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @MDC_MDIO_START_REG, align 4
  %40 = load i32, i32* @MDC_MDIO_START_OP, align 4
  %41 = call i32 %36(%struct.mii_bus* %37, i32 %38, i32 %39, i32 %40)
  %42 = load %struct.mii_bus*, %struct.mii_bus** %8, align 8
  %43 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %42, i32 0, i32 2
  %44 = load i32 (%struct.mii_bus*, i32, i32, i32)*, i32 (%struct.mii_bus*, i32, i32, i32)** %43, align 8
  %45 = load %struct.mii_bus*, %struct.mii_bus** %8, align 8
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @MDC_MDIO_ADDRESS_REG, align 4
  %48 = load i32, i32* %5, align 4
  %49 = call i32 %44(%struct.mii_bus* %45, i32 %46, i32 %47, i32 %48)
  %50 = load %struct.mii_bus*, %struct.mii_bus** %8, align 8
  %51 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %50, i32 0, i32 2
  %52 = load i32 (%struct.mii_bus*, i32, i32, i32)*, i32 (%struct.mii_bus*, i32, i32, i32)** %51, align 8
  %53 = load %struct.mii_bus*, %struct.mii_bus** %8, align 8
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @MDC_MDIO_START_REG, align 4
  %56 = load i32, i32* @MDC_MDIO_START_OP, align 4
  %57 = call i32 %52(%struct.mii_bus* %53, i32 %54, i32 %55, i32 %56)
  %58 = load %struct.mii_bus*, %struct.mii_bus** %8, align 8
  %59 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %58, i32 0, i32 2
  %60 = load i32 (%struct.mii_bus*, i32, i32, i32)*, i32 (%struct.mii_bus*, i32, i32, i32)** %59, align 8
  %61 = load %struct.mii_bus*, %struct.mii_bus** %8, align 8
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* @MDC_MDIO_CTRL1_REG, align 4
  %64 = load i32, i32* @MDC_MDIO_READ_OP, align 4
  %65 = call i32 %60(%struct.mii_bus* %61, i32 %62, i32 %63, i32 %64)
  %66 = load %struct.mii_bus*, %struct.mii_bus** %8, align 8
  %67 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %66, i32 0, i32 2
  %68 = load i32 (%struct.mii_bus*, i32, i32, i32)*, i32 (%struct.mii_bus*, i32, i32, i32)** %67, align 8
  %69 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %4, align 8
  %70 = getelementptr inbounds %struct.rtl8366_smi, %struct.rtl8366_smi* %69, i32 0, i32 0
  %71 = load %struct.mii_bus*, %struct.mii_bus** %70, align 8
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* @MDC_MDIO_START_REG, align 4
  %74 = load i32, i32* @MDC_MDIO_START_OP, align 4
  %75 = call i32 %68(%struct.mii_bus* %71, i32 %72, i32 %73, i32 %74)
  %76 = load %struct.mii_bus*, %struct.mii_bus** %8, align 8
  %77 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %76, i32 0, i32 1
  %78 = load i32 (%struct.mii_bus*, i32, i32)*, i32 (%struct.mii_bus*, i32, i32)** %77, align 8
  %79 = load %struct.mii_bus*, %struct.mii_bus** %8, align 8
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* @MDC_MDIO_DATA_READ_REG, align 4
  %82 = call i32 %78(%struct.mii_bus* %79, i32 %80, i32 %81)
  %83 = load i32*, i32** %6, align 8
  store i32 %82, i32* %83, align 4
  %84 = load %struct.mii_bus*, %struct.mii_bus** %8, align 8
  %85 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %84, i32 0, i32 0
  %86 = call i32 @mutex_unlock(i32* %85)
  ret i32 0
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @in_interrupt(...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
