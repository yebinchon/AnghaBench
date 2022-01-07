; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_imx-cpufreq-dt.c_imx_cpufreq_dt_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_imx-cpufreq-dt.c_imx_cpufreq_dt_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"speed_grade\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"fsl,imx8mn\00", align 1
@IMX8MN_OCOTP_CFG3_SPEED_GRADE_MASK = common dso_local global i32 0, align 4
@OCOTP_CFG3_SPEED_GRADE_SHIFT = common dso_local global i32 0, align 4
@OCOTP_CFG3_SPEED_GRADE_MASK = common dso_local global i32 0, align 4
@OCOTP_CFG3_MKT_SEGMENT_MASK = common dso_local global i32 0, align 4
@OCOTP_CFG3_MKT_SEGMENT_SHIFT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"fsl,imx8mm\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"fsl,imx8mq\00", align 1
@.str.4 = private unnamed_addr constant [56 x i8] c"cpu speed grade %d mkt segment %d supported-hw %#x %#x\0A\00", align 1
@cpufreq_opp_table = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"Failed to set supported opp: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"cpufreq-dt\00", align 1
@cpufreq_dt_pdev = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [35 x i8] c"Failed to register cpufreq-dt: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @imx_cpufreq_dt_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx_cpufreq_dt_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [2 x i32], align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = call %struct.device* @get_cpu_device(i32 0)
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call i32 @nvmem_cell_read_u32(%struct.device* %11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* %5)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %9, align 4
  store i32 %16, i32* %2, align 4
  br label %101

17:                                               ; preds = %1
  %18 = call i64 @of_machine_is_compatible(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %17
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @IMX8MN_OCOTP_CFG3_SPEED_GRADE_MASK, align 4
  %23 = and i32 %21, %22
  %24 = load i32, i32* @OCOTP_CFG3_SPEED_GRADE_SHIFT, align 4
  %25 = ashr i32 %23, %24
  store i32 %25, i32* %7, align 4
  br label %32

26:                                               ; preds = %17
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @OCOTP_CFG3_SPEED_GRADE_MASK, align 4
  %29 = and i32 %27, %28
  %30 = load i32, i32* @OCOTP_CFG3_SPEED_GRADE_SHIFT, align 4
  %31 = ashr i32 %29, %30
  store i32 %31, i32* %7, align 4
  br label %32

32:                                               ; preds = %26, %20
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @OCOTP_CFG3_MKT_SEGMENT_MASK, align 4
  %35 = and i32 %33, %34
  %36 = load i32, i32* @OCOTP_CFG3_MKT_SEGMENT_SHIFT, align 4
  %37 = ashr i32 %35, %36
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %32
  %41 = load i32, i32* %7, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %40
  %44 = call i64 @of_machine_is_compatible(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %43
  %47 = call i64 @of_machine_is_compatible(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %46
  %50 = call i64 @of_machine_is_compatible(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %49, %46, %43
  store i32 1, i32* %7, align 4
  br label %53

53:                                               ; preds = %52, %49, %40, %32
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @BIT(i32 %54)
  %56 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 %55, i32* %56, align 4
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @BIT(i32 %57)
  %59 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  store i32 %58, i32* %59, align 4
  %60 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %61 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %60, i32 0, i32 0
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %8, align 4
  %64 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %65 = load i32, i32* %64, align 4
  %66 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @dev_info(i32* %61, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.4, i64 0, i64 0), i32 %62, i32 %63, i32 %65, i32 %67)
  %69 = load %struct.device*, %struct.device** %4, align 8
  %70 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %71 = call i32 @dev_pm_opp_set_supported_hw(%struct.device* %69, i32* %70, i32 2)
  store i32 %71, i32* @cpufreq_opp_table, align 4
  %72 = load i32, i32* @cpufreq_opp_table, align 4
  %73 = call i64 @IS_ERR(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %53
  %76 = load i32, i32* @cpufreq_opp_table, align 4
  %77 = call i32 @PTR_ERR(i32 %76)
  store i32 %77, i32* %9, align 4
  %78 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %79 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %78, i32 0, i32 0
  %80 = load i32, i32* %9, align 4
  %81 = call i32 @dev_err(i32* %79, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %80)
  %82 = load i32, i32* %9, align 4
  store i32 %82, i32* %2, align 4
  br label %101

83:                                               ; preds = %53
  %84 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %85 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %84, i32 0, i32 0
  %86 = call i32 @platform_device_register_data(i32* %85, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32 -1, i32* null, i32 0)
  store i32 %86, i32* @cpufreq_dt_pdev, align 4
  %87 = load i32, i32* @cpufreq_dt_pdev, align 4
  %88 = call i64 @IS_ERR(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %100

90:                                               ; preds = %83
  %91 = load i32, i32* @cpufreq_opp_table, align 4
  %92 = call i32 @dev_pm_opp_put_supported_hw(i32 %91)
  %93 = load i32, i32* @cpufreq_dt_pdev, align 4
  %94 = call i32 @PTR_ERR(i32 %93)
  store i32 %94, i32* %9, align 4
  %95 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %96 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %95, i32 0, i32 0
  %97 = load i32, i32* %9, align 4
  %98 = call i32 @dev_err(i32* %96, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), i32 %97)
  %99 = load i32, i32* %9, align 4
  store i32 %99, i32* %2, align 4
  br label %101

100:                                              ; preds = %83
  store i32 0, i32* %2, align 4
  br label %101

101:                                              ; preds = %100, %90, %75, %15
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local %struct.device* @get_cpu_device(i32) #1

declare dso_local i32 @nvmem_cell_read_u32(%struct.device*, i8*, i32*) #1

declare dso_local i64 @of_machine_is_compatible(i8*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @dev_pm_opp_set_supported_hw(%struct.device*, i32*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @platform_device_register_data(i32*, i8*, i32, i32*, i32) #1

declare dso_local i32 @dev_pm_opp_put_supported_hw(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
