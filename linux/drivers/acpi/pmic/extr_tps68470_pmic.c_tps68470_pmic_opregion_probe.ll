; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/pmic/extr_tps68470_pmic.c_tps68470_pmic_opregion_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/pmic/extr_tps68470_pmic.c_tps68470_pmic_opregion_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.regmap = type { i32 }
%struct.tps68470_pmic_opregion = type { i32, %struct.regmap* }

@.str = private unnamed_addr constant [23 x i8] c"dev or regmap is NULL\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"acpi handle is NULL\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@TI_PMIC_POWER_OPREGION_ID = common dso_local global i32 0, align 4
@tps68470_pmic_pwr_handler = common dso_local global i32 0, align 4
@TI_PMIC_VR_VAL_OPREGION_ID = common dso_local global i32 0, align 4
@tps68470_pmic_vrval_handler = common dso_local global i32 0, align 4
@TI_PMIC_CLOCK_OPREGION_ID = common dso_local global i32 0, align 4
@tps68470_pmic_clk_handler = common dso_local global i32 0, align 4
@TI_PMIC_CLKFREQ_OPREGION_ID = common dso_local global i32 0, align 4
@tps68470_pmic_cfreq_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @tps68470_pmic_opregion_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tps68470_pmic_opregion_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.regmap*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.tps68470_pmic_opregion*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.device, %struct.device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.regmap* @dev_get_drvdata(i32 %12)
  store %struct.regmap* %13, %struct.regmap** %4, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.device, %struct.device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @ACPI_HANDLE(i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  store %struct.device* %20, %struct.device** %6, align 8
  %21 = load %struct.device*, %struct.device** %6, align 8
  %22 = icmp ne %struct.device* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = load %struct.regmap*, %struct.regmap** %4, align 8
  %25 = icmp ne %struct.regmap* %24, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %23, %1
  %27 = load %struct.device*, %struct.device** %6, align 8
  %28 = call i32 @dev_warn(%struct.device* %27, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %116

31:                                               ; preds = %23
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %31
  %35 = load %struct.device*, %struct.device** %6, align 8
  %36 = call i32 @dev_warn(%struct.device* %35, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i32, i32* @ENODEV, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %116

39:                                               ; preds = %31
  %40 = load %struct.device*, %struct.device** %6, align 8
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call %struct.tps68470_pmic_opregion* @devm_kzalloc(%struct.device* %40, i32 16, i32 %41)
  store %struct.tps68470_pmic_opregion* %42, %struct.tps68470_pmic_opregion** %7, align 8
  %43 = load %struct.tps68470_pmic_opregion*, %struct.tps68470_pmic_opregion** %7, align 8
  %44 = icmp ne %struct.tps68470_pmic_opregion* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %39
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %116

48:                                               ; preds = %39
  %49 = load %struct.tps68470_pmic_opregion*, %struct.tps68470_pmic_opregion** %7, align 8
  %50 = getelementptr inbounds %struct.tps68470_pmic_opregion, %struct.tps68470_pmic_opregion* %49, i32 0, i32 0
  %51 = call i32 @mutex_init(i32* %50)
  %52 = load %struct.regmap*, %struct.regmap** %4, align 8
  %53 = load %struct.tps68470_pmic_opregion*, %struct.tps68470_pmic_opregion** %7, align 8
  %54 = getelementptr inbounds %struct.tps68470_pmic_opregion, %struct.tps68470_pmic_opregion* %53, i32 0, i32 1
  store %struct.regmap* %52, %struct.regmap** %54, align 8
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @TI_PMIC_POWER_OPREGION_ID, align 4
  %57 = load i32, i32* @tps68470_pmic_pwr_handler, align 4
  %58 = load %struct.tps68470_pmic_opregion*, %struct.tps68470_pmic_opregion** %7, align 8
  %59 = call i32 @acpi_install_address_space_handler(i32 %55, i32 %56, i32 %57, i32* null, %struct.tps68470_pmic_opregion* %58)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = call i64 @ACPI_FAILURE(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %48
  br label %110

64:                                               ; preds = %48
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* @TI_PMIC_VR_VAL_OPREGION_ID, align 4
  %67 = load i32, i32* @tps68470_pmic_vrval_handler, align 4
  %68 = load %struct.tps68470_pmic_opregion*, %struct.tps68470_pmic_opregion** %7, align 8
  %69 = call i32 @acpi_install_address_space_handler(i32 %65, i32 %66, i32 %67, i32* null, %struct.tps68470_pmic_opregion* %68)
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  %71 = call i64 @ACPI_FAILURE(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %64
  br label %105

74:                                               ; preds = %64
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* @TI_PMIC_CLOCK_OPREGION_ID, align 4
  %77 = load i32, i32* @tps68470_pmic_clk_handler, align 4
  %78 = load %struct.tps68470_pmic_opregion*, %struct.tps68470_pmic_opregion** %7, align 8
  %79 = call i32 @acpi_install_address_space_handler(i32 %75, i32 %76, i32 %77, i32* null, %struct.tps68470_pmic_opregion* %78)
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* %8, align 4
  %81 = call i64 @ACPI_FAILURE(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %74
  br label %100

84:                                               ; preds = %74
  %85 = load i32, i32* %5, align 4
  %86 = load i32, i32* @TI_PMIC_CLKFREQ_OPREGION_ID, align 4
  %87 = load i32, i32* @tps68470_pmic_cfreq_handler, align 4
  %88 = load %struct.tps68470_pmic_opregion*, %struct.tps68470_pmic_opregion** %7, align 8
  %89 = call i32 @acpi_install_address_space_handler(i32 %85, i32 %86, i32 %87, i32* null, %struct.tps68470_pmic_opregion* %88)
  store i32 %89, i32* %8, align 4
  %90 = load i32, i32* %8, align 4
  %91 = call i64 @ACPI_FAILURE(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %84
  br label %95

94:                                               ; preds = %84
  store i32 0, i32* %2, align 4
  br label %116

95:                                               ; preds = %93
  %96 = load i32, i32* %5, align 4
  %97 = load i32, i32* @TI_PMIC_CLOCK_OPREGION_ID, align 4
  %98 = load i32, i32* @tps68470_pmic_clk_handler, align 4
  %99 = call i32 @acpi_remove_address_space_handler(i32 %96, i32 %97, i32 %98)
  br label %100

100:                                              ; preds = %95, %83
  %101 = load i32, i32* %5, align 4
  %102 = load i32, i32* @TI_PMIC_VR_VAL_OPREGION_ID, align 4
  %103 = load i32, i32* @tps68470_pmic_vrval_handler, align 4
  %104 = call i32 @acpi_remove_address_space_handler(i32 %101, i32 %102, i32 %103)
  br label %105

105:                                              ; preds = %100, %73
  %106 = load i32, i32* %5, align 4
  %107 = load i32, i32* @TI_PMIC_POWER_OPREGION_ID, align 4
  %108 = load i32, i32* @tps68470_pmic_pwr_handler, align 4
  %109 = call i32 @acpi_remove_address_space_handler(i32 %106, i32 %107, i32 %108)
  br label %110

110:                                              ; preds = %105, %63
  %111 = load %struct.tps68470_pmic_opregion*, %struct.tps68470_pmic_opregion** %7, align 8
  %112 = getelementptr inbounds %struct.tps68470_pmic_opregion, %struct.tps68470_pmic_opregion* %111, i32 0, i32 0
  %113 = call i32 @mutex_destroy(i32* %112)
  %114 = load i32, i32* @ENODEV, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %2, align 4
  br label %116

116:                                              ; preds = %110, %94, %45, %34, %26
  %117 = load i32, i32* %2, align 4
  ret i32 %117
}

declare dso_local %struct.regmap* @dev_get_drvdata(i32) #1

declare dso_local i32 @ACPI_HANDLE(i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

declare dso_local %struct.tps68470_pmic_opregion* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @acpi_install_address_space_handler(i32, i32, i32, i32*, %struct.tps68470_pmic_opregion*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @acpi_remove_address_space_handler(i32, i32, i32) #1

declare dso_local i32 @mutex_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
