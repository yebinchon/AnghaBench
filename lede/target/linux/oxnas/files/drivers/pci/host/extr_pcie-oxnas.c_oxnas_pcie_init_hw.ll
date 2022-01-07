; ModuleID = '/home/carl/AnghaBench/lede/target/linux/oxnas/files/drivers/pci/host/extr_pcie-oxnas.c_oxnas_pcie_init_hw.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/oxnas/files/drivers/pci/host/extr_pcie-oxnas.c_oxnas_pcie_init_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.oxnas_pcie = type { i64, i32, i32, i64, i64, i32, i32, i32 }

@SYS_CTRL_HCSL_CTRL_REGOFFSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"core reset failed %d\0A\00", align 1
@PCI_CONFIG_VERSION_DEVICEID = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"PCIe version/deviceID 0x%x\0A\00", align 1
@VERSION_ID_MAGIC = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"PCIe controller not found\0A\00", align 1
@PCIE_READY_ENTR_L23 = common dso_local global i32 0, align 4
@PCIE_DEVICE_TYPE_MASK = common dso_local global i32 0, align 4
@PCIE_DEVICE_TYPE_ROOT = common dso_local global i32 0, align 4
@PCIE_LTSSM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.platform_device*, %struct.oxnas_pcie*)* @oxnas_pcie_init_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @oxnas_pcie_init_hw(%struct.platform_device* %0, %struct.oxnas_pcie* %1) #0 {
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.oxnas_pcie*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store %struct.oxnas_pcie* %1, %struct.oxnas_pcie** %4, align 8
  %7 = load %struct.oxnas_pcie*, %struct.oxnas_pcie** %4, align 8
  %8 = getelementptr inbounds %struct.oxnas_pcie, %struct.oxnas_pcie* %7, i32 0, i32 7
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @clk_prepare_enable(i32 %9)
  %11 = load %struct.oxnas_pcie*, %struct.oxnas_pcie** %4, align 8
  %12 = getelementptr inbounds %struct.oxnas_pcie, %struct.oxnas_pcie* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp sge i64 %13, 0
  br i1 %14, label %15, label %30

15:                                               ; preds = %2
  %16 = load %struct.oxnas_pcie*, %struct.oxnas_pcie** %4, align 8
  %17 = getelementptr inbounds %struct.oxnas_pcie, %struct.oxnas_pcie* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @gpio_direction_output(i64 %18, i32 0)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %30, label %21

21:                                               ; preds = %15
  %22 = call i32 (...) @wmb()
  %23 = call i32 @mdelay(i32 10)
  %24 = load %struct.oxnas_pcie*, %struct.oxnas_pcie** %4, align 8
  %25 = getelementptr inbounds %struct.oxnas_pcie, %struct.oxnas_pcie* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @gpio_direction_input(i64 %26)
  %28 = call i32 (...) @wmb()
  %29 = call i32 @mdelay(i32 100)
  br label %30

30:                                               ; preds = %21, %15, %2
  %31 = load %struct.oxnas_pcie*, %struct.oxnas_pcie** %4, align 8
  %32 = getelementptr inbounds %struct.oxnas_pcie, %struct.oxnas_pcie* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @SYS_CTRL_HCSL_CTRL_REGOFFSET, align 4
  %35 = load %struct.oxnas_pcie*, %struct.oxnas_pcie** %4, align 8
  %36 = getelementptr inbounds %struct.oxnas_pcie, %struct.oxnas_pcie* %35, i32 0, i32 6
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @BIT(i32 %37)
  %39 = load %struct.oxnas_pcie*, %struct.oxnas_pcie** %4, align 8
  %40 = getelementptr inbounds %struct.oxnas_pcie, %struct.oxnas_pcie* %39, i32 0, i32 6
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @BIT(i32 %41)
  %43 = call i32 @regmap_update_bits(i32 %33, i32 %34, i32 %38, i32 %42)
  %44 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %45 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %44, i32 0, i32 0
  %46 = call i32 @device_reset(i32* %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %30
  %50 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %51 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %50, i32 0, i32 0
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @dev_err(i32* %51, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %52)
  br label %108

54:                                               ; preds = %30
  %55 = load %struct.oxnas_pcie*, %struct.oxnas_pcie** %4, align 8
  %56 = getelementptr inbounds %struct.oxnas_pcie, %struct.oxnas_pcie* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @clk_prepare_enable(i32 %57)
  %59 = load %struct.oxnas_pcie*, %struct.oxnas_pcie** %4, align 8
  %60 = getelementptr inbounds %struct.oxnas_pcie, %struct.oxnas_pcie* %59, i32 0, i32 4
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @PCI_CONFIG_VERSION_DEVICEID, align 8
  %63 = add nsw i64 %61, %62
  %64 = call i64 @readl_relaxed(i64 %63)
  store i64 %64, i64* %5, align 8
  %65 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %66 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %65, i32 0, i32 0
  %67 = load i64, i64* %5, align 8
  %68 = call i32 (i32*, i8*, ...) @dev_info(i32* %66, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i64 %67)
  %69 = load i64, i64* %5, align 8
  %70 = load i64, i64* @VERSION_ID_MAGIC, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %78

72:                                               ; preds = %54
  %73 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %74 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %73, i32 0, i32 0
  %75 = call i32 (i32*, i8*, ...) @dev_info(i32* %74, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %76 = load %struct.oxnas_pcie*, %struct.oxnas_pcie** %4, align 8
  %77 = getelementptr inbounds %struct.oxnas_pcie, %struct.oxnas_pcie* %76, i32 0, i32 3
  store i64 0, i64* %77, align 8
  br label %108

78:                                               ; preds = %54
  %79 = load %struct.oxnas_pcie*, %struct.oxnas_pcie** %4, align 8
  %80 = getelementptr inbounds %struct.oxnas_pcie, %struct.oxnas_pcie* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.oxnas_pcie*, %struct.oxnas_pcie** %4, align 8
  %83 = getelementptr inbounds %struct.oxnas_pcie, %struct.oxnas_pcie* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @PCIE_READY_ENTR_L23, align 4
  %86 = load i32, i32* @PCIE_READY_ENTR_L23, align 4
  %87 = call i32 @regmap_write_bits(i32 %81, i32 %84, i32 %85, i32 %86)
  %88 = load %struct.oxnas_pcie*, %struct.oxnas_pcie** %4, align 8
  %89 = getelementptr inbounds %struct.oxnas_pcie, %struct.oxnas_pcie* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.oxnas_pcie*, %struct.oxnas_pcie** %4, align 8
  %92 = getelementptr inbounds %struct.oxnas_pcie, %struct.oxnas_pcie* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @PCIE_DEVICE_TYPE_MASK, align 4
  %95 = load i32, i32* @PCIE_DEVICE_TYPE_ROOT, align 4
  %96 = call i32 @regmap_write_bits(i32 %90, i32 %93, i32 %94, i32 %95)
  %97 = call i32 (...) @wmb()
  %98 = load %struct.oxnas_pcie*, %struct.oxnas_pcie** %4, align 8
  %99 = getelementptr inbounds %struct.oxnas_pcie, %struct.oxnas_pcie* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.oxnas_pcie*, %struct.oxnas_pcie** %4, align 8
  %102 = getelementptr inbounds %struct.oxnas_pcie, %struct.oxnas_pcie* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @PCIE_LTSSM, align 4
  %105 = load i32, i32* @PCIE_LTSSM, align 4
  %106 = call i32 @regmap_write_bits(i32 %100, i32 %103, i32 %104, i32 %105)
  %107 = call i32 (...) @wmb()
  br label %108

108:                                              ; preds = %78, %72, %49
  ret void
}

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @gpio_direction_output(i64, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @gpio_direction_input(i64) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @device_reset(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i64 @readl_relaxed(i64) #1

declare dso_local i32 @dev_info(i32*, i8*, ...) #1

declare dso_local i32 @regmap_write_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
