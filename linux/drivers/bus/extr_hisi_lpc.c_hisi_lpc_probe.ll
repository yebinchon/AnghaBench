; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/extr_hisi_lpc.c_hisi_lpc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/extr_hisi_lpc.c_hisi_lpc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32, i32 }
%struct.acpi_device = type { i32 }
%struct.logic_pio_hwaddr = type { i64, i64, i32*, %struct.hisi_lpc_dev*, i32, i32 }
%struct.hisi_lpc_dev = type { %struct.logic_pio_hwaddr*, i32, i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@LOGIC_PIO_INDIRECT = common dso_local global i32 0, align 4
@PIO_INDIRECT_SIZE = common dso_local global i64 0, align 8
@hisi_lpc_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"register IO range failed (%d)!\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"registered range [%pa - %pa]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @hisi_lpc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hisi_lpc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.acpi_device*, align 8
  %6 = alloca %struct.logic_pio_hwaddr*, align 8
  %7 = alloca %struct.hisi_lpc_dev*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.resource*, align 8
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %4, align 8
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = call %struct.acpi_device* @ACPI_COMPANION(%struct.device* %13)
  store %struct.acpi_device* %14, %struct.acpi_device** %5, align 8
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i8* @devm_kzalloc(%struct.device* %15, i32 16, i32 %16)
  %18 = bitcast i8* %17 to %struct.hisi_lpc_dev*
  store %struct.hisi_lpc_dev* %18, %struct.hisi_lpc_dev** %7, align 8
  %19 = load %struct.hisi_lpc_dev*, %struct.hisi_lpc_dev** %7, align 8
  %20 = icmp ne %struct.hisi_lpc_dev* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %126

24:                                               ; preds = %1
  %25 = load %struct.hisi_lpc_dev*, %struct.hisi_lpc_dev** %7, align 8
  %26 = getelementptr inbounds %struct.hisi_lpc_dev, %struct.hisi_lpc_dev* %25, i32 0, i32 2
  %27 = call i32 @spin_lock_init(i32* %26)
  %28 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %29 = load i32, i32* @IORESOURCE_MEM, align 4
  %30 = call %struct.resource* @platform_get_resource(%struct.platform_device* %28, i32 %29, i32 0)
  store %struct.resource* %30, %struct.resource** %9, align 8
  %31 = load %struct.device*, %struct.device** %4, align 8
  %32 = load %struct.resource*, %struct.resource** %9, align 8
  %33 = call i32 @devm_ioremap_resource(%struct.device* %31, %struct.resource* %32)
  %34 = load %struct.hisi_lpc_dev*, %struct.hisi_lpc_dev** %7, align 8
  %35 = getelementptr inbounds %struct.hisi_lpc_dev, %struct.hisi_lpc_dev* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 8
  %36 = load %struct.hisi_lpc_dev*, %struct.hisi_lpc_dev** %7, align 8
  %37 = getelementptr inbounds %struct.hisi_lpc_dev, %struct.hisi_lpc_dev* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i64 @IS_ERR(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %24
  %42 = load %struct.hisi_lpc_dev*, %struct.hisi_lpc_dev** %7, align 8
  %43 = getelementptr inbounds %struct.hisi_lpc_dev, %struct.hisi_lpc_dev* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @PTR_ERR(i32 %44)
  store i32 %45, i32* %2, align 4
  br label %126

46:                                               ; preds = %24
  %47 = load %struct.device*, %struct.device** %4, align 8
  %48 = load i32, i32* @GFP_KERNEL, align 4
  %49 = call i8* @devm_kzalloc(%struct.device* %47, i32 40, i32 %48)
  %50 = bitcast i8* %49 to %struct.logic_pio_hwaddr*
  store %struct.logic_pio_hwaddr* %50, %struct.logic_pio_hwaddr** %6, align 8
  %51 = load %struct.logic_pio_hwaddr*, %struct.logic_pio_hwaddr** %6, align 8
  %52 = icmp ne %struct.logic_pio_hwaddr* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %46
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %2, align 4
  br label %126

56:                                               ; preds = %46
  %57 = load %struct.device*, %struct.device** %4, align 8
  %58 = getelementptr inbounds %struct.device, %struct.device* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.logic_pio_hwaddr*, %struct.logic_pio_hwaddr** %6, align 8
  %61 = getelementptr inbounds %struct.logic_pio_hwaddr, %struct.logic_pio_hwaddr* %60, i32 0, i32 5
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* @LOGIC_PIO_INDIRECT, align 4
  %63 = load %struct.logic_pio_hwaddr*, %struct.logic_pio_hwaddr** %6, align 8
  %64 = getelementptr inbounds %struct.logic_pio_hwaddr, %struct.logic_pio_hwaddr* %63, i32 0, i32 4
  store i32 %62, i32* %64, align 8
  %65 = load i64, i64* @PIO_INDIRECT_SIZE, align 8
  %66 = load %struct.logic_pio_hwaddr*, %struct.logic_pio_hwaddr** %6, align 8
  %67 = getelementptr inbounds %struct.logic_pio_hwaddr, %struct.logic_pio_hwaddr* %66, i32 0, i32 1
  store i64 %65, i64* %67, align 8
  %68 = load %struct.hisi_lpc_dev*, %struct.hisi_lpc_dev** %7, align 8
  %69 = load %struct.logic_pio_hwaddr*, %struct.logic_pio_hwaddr** %6, align 8
  %70 = getelementptr inbounds %struct.logic_pio_hwaddr, %struct.logic_pio_hwaddr* %69, i32 0, i32 3
  store %struct.hisi_lpc_dev* %68, %struct.hisi_lpc_dev** %70, align 8
  %71 = load %struct.logic_pio_hwaddr*, %struct.logic_pio_hwaddr** %6, align 8
  %72 = getelementptr inbounds %struct.logic_pio_hwaddr, %struct.logic_pio_hwaddr* %71, i32 0, i32 2
  store i32* @hisi_lpc_ops, i32** %72, align 8
  %73 = load %struct.logic_pio_hwaddr*, %struct.logic_pio_hwaddr** %6, align 8
  %74 = load %struct.hisi_lpc_dev*, %struct.hisi_lpc_dev** %7, align 8
  %75 = getelementptr inbounds %struct.hisi_lpc_dev, %struct.hisi_lpc_dev* %74, i32 0, i32 0
  store %struct.logic_pio_hwaddr* %73, %struct.logic_pio_hwaddr** %75, align 8
  %76 = load %struct.logic_pio_hwaddr*, %struct.logic_pio_hwaddr** %6, align 8
  %77 = call i32 @logic_pio_register_range(%struct.logic_pio_hwaddr* %76)
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* %10, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %56
  %81 = load %struct.device*, %struct.device** %4, align 8
  %82 = load i32, i32* %10, align 4
  %83 = call i32 @dev_err(%struct.device* %81, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %82)
  %84 = load i32, i32* %10, align 4
  store i32 %84, i32* %2, align 4
  br label %126

85:                                               ; preds = %56
  %86 = load %struct.acpi_device*, %struct.acpi_device** %5, align 8
  %87 = icmp ne %struct.acpi_device* %86, null
  br i1 %87, label %88, label %91

88:                                               ; preds = %85
  %89 = load %struct.device*, %struct.device** %4, align 8
  %90 = call i32 @hisi_lpc_acpi_probe(%struct.device* %89)
  store i32 %90, i32* %10, align 4
  br label %97

91:                                               ; preds = %85
  %92 = load %struct.device*, %struct.device** %4, align 8
  %93 = getelementptr inbounds %struct.device, %struct.device* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.device*, %struct.device** %4, align 8
  %96 = call i32 @of_platform_populate(i32 %94, i32* null, i32* null, %struct.device* %95)
  store i32 %96, i32* %10, align 4
  br label %97

97:                                               ; preds = %91, %88
  %98 = load i32, i32* %10, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %97
  %101 = load %struct.logic_pio_hwaddr*, %struct.logic_pio_hwaddr** %6, align 8
  %102 = call i32 @logic_pio_unregister_range(%struct.logic_pio_hwaddr* %101)
  %103 = load i32, i32* %10, align 4
  store i32 %103, i32* %2, align 4
  br label %126

104:                                              ; preds = %97
  %105 = load %struct.device*, %struct.device** %4, align 8
  %106 = load %struct.hisi_lpc_dev*, %struct.hisi_lpc_dev** %7, align 8
  %107 = call i32 @dev_set_drvdata(%struct.device* %105, %struct.hisi_lpc_dev* %106)
  %108 = load %struct.hisi_lpc_dev*, %struct.hisi_lpc_dev** %7, align 8
  %109 = getelementptr inbounds %struct.hisi_lpc_dev, %struct.hisi_lpc_dev* %108, i32 0, i32 0
  %110 = load %struct.logic_pio_hwaddr*, %struct.logic_pio_hwaddr** %109, align 8
  %111 = getelementptr inbounds %struct.logic_pio_hwaddr, %struct.logic_pio_hwaddr* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.hisi_lpc_dev*, %struct.hisi_lpc_dev** %7, align 8
  %114 = getelementptr inbounds %struct.hisi_lpc_dev, %struct.hisi_lpc_dev* %113, i32 0, i32 0
  %115 = load %struct.logic_pio_hwaddr*, %struct.logic_pio_hwaddr** %114, align 8
  %116 = getelementptr inbounds %struct.logic_pio_hwaddr, %struct.logic_pio_hwaddr* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = add nsw i64 %112, %117
  store i64 %118, i64* %8, align 8
  %119 = load %struct.device*, %struct.device** %4, align 8
  %120 = load %struct.hisi_lpc_dev*, %struct.hisi_lpc_dev** %7, align 8
  %121 = getelementptr inbounds %struct.hisi_lpc_dev, %struct.hisi_lpc_dev* %120, i32 0, i32 0
  %122 = load %struct.logic_pio_hwaddr*, %struct.logic_pio_hwaddr** %121, align 8
  %123 = getelementptr inbounds %struct.logic_pio_hwaddr, %struct.logic_pio_hwaddr* %122, i32 0, i32 0
  %124 = call i32 @dev_info(%struct.device* %119, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i64* %123, i64* %8)
  %125 = load i32, i32* %10, align 4
  store i32 %125, i32* %2, align 4
  br label %126

126:                                              ; preds = %104, %100, %80, %53, %41, %21
  %127 = load i32, i32* %2, align 4
  ret i32 %127
}

declare dso_local %struct.acpi_device* @ACPI_COMPANION(%struct.device*) #1

declare dso_local i8* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @logic_pio_register_range(%struct.logic_pio_hwaddr*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @hisi_lpc_acpi_probe(%struct.device*) #1

declare dso_local i32 @of_platform_populate(i32, i32*, i32*, %struct.device*) #1

declare dso_local i32 @logic_pio_unregister_range(%struct.logic_pio_hwaddr*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.hisi_lpc_dev*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
