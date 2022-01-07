; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-rpmh.c_clk_rpmh_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-rpmh.c_clk_rpmh_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.clk_hw = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }
%struct.clk_rpmh = type { i64, i32*, i32, i32 }
%struct.clk_rpmh_desc = type { i32, %struct.clk_hw** }
%struct.bcm_db = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"missing RPMh resource address for %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"error reading RPMh aux data for %s (%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"failed to register %s\0A\00", align 1
@of_clk_rpmh_hw_get = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"Failed to add clock provider\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"Registered RPMh clocks\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @clk_rpmh_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_rpmh_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.clk_hw**, align 8
  %5 = alloca %struct.clk_rpmh*, align 8
  %6 = alloca %struct.clk_rpmh_desc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.bcm_db*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = call %struct.clk_rpmh_desc* @of_device_get_match_data(i32* %14)
  store %struct.clk_rpmh_desc* %15, %struct.clk_rpmh_desc** %6, align 8
  %16 = load %struct.clk_rpmh_desc*, %struct.clk_rpmh_desc** %6, align 8
  %17 = icmp ne %struct.clk_rpmh_desc* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %142

21:                                               ; preds = %1
  %22 = load %struct.clk_rpmh_desc*, %struct.clk_rpmh_desc** %6, align 8
  %23 = getelementptr inbounds %struct.clk_rpmh_desc, %struct.clk_rpmh_desc* %22, i32 0, i32 1
  %24 = load %struct.clk_hw**, %struct.clk_hw*** %23, align 8
  store %struct.clk_hw** %24, %struct.clk_hw*** %4, align 8
  store i32 0, i32* %8, align 4
  br label %25

25:                                               ; preds = %121, %21
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.clk_rpmh_desc*, %struct.clk_rpmh_desc** %6, align 8
  %28 = getelementptr inbounds %struct.clk_rpmh_desc, %struct.clk_rpmh_desc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %124

31:                                               ; preds = %25
  %32 = load %struct.clk_hw**, %struct.clk_hw*** %4, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.clk_hw*, %struct.clk_hw** %32, i64 %34
  %36 = load %struct.clk_hw*, %struct.clk_hw** %35, align 8
  %37 = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  store i8* %40, i8** %9, align 8
  %41 = load %struct.clk_hw**, %struct.clk_hw*** %4, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.clk_hw*, %struct.clk_hw** %41, i64 %43
  %45 = load %struct.clk_hw*, %struct.clk_hw** %44, align 8
  %46 = call %struct.clk_rpmh* @to_clk_rpmh(%struct.clk_hw* %45)
  store %struct.clk_rpmh* %46, %struct.clk_rpmh** %5, align 8
  %47 = load %struct.clk_rpmh*, %struct.clk_rpmh** %5, align 8
  %48 = getelementptr inbounds %struct.clk_rpmh, %struct.clk_rpmh* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @cmd_db_read_addr(i32 %49)
  store i64 %50, i64* %10, align 8
  %51 = load i64, i64* %10, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %62, label %53

53:                                               ; preds = %31
  %54 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %55 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %54, i32 0, i32 0
  %56 = load %struct.clk_rpmh*, %struct.clk_rpmh** %5, align 8
  %57 = getelementptr inbounds %struct.clk_rpmh, %struct.clk_rpmh* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = call i32 (i32*, i8*, ...) @dev_err(i32* %55, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* @ENODEV, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %2, align 4
  br label %142

62:                                               ; preds = %31
  %63 = load %struct.clk_rpmh*, %struct.clk_rpmh** %5, align 8
  %64 = getelementptr inbounds %struct.clk_rpmh, %struct.clk_rpmh* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = call %struct.bcm_db* @cmd_db_read_aux_data(i32 %65, i64* %11)
  store %struct.bcm_db* %66, %struct.bcm_db** %12, align 8
  %67 = load %struct.bcm_db*, %struct.bcm_db** %12, align 8
  %68 = call i64 @IS_ERR(%struct.bcm_db* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %81

70:                                               ; preds = %62
  %71 = load %struct.bcm_db*, %struct.bcm_db** %12, align 8
  %72 = call i32 @PTR_ERR(%struct.bcm_db* %71)
  store i32 %72, i32* %7, align 4
  %73 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %74 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %73, i32 0, i32 0
  %75 = load %struct.clk_rpmh*, %struct.clk_rpmh** %5, align 8
  %76 = getelementptr inbounds %struct.clk_rpmh, %struct.clk_rpmh* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %7, align 4
  %79 = call i32 (i32*, i8*, ...) @dev_err(i32* %74, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %77, i32 %78)
  %80 = load i32, i32* %7, align 4
  store i32 %80, i32* %2, align 4
  br label %142

81:                                               ; preds = %62
  %82 = load i64, i64* %11, align 8
  %83 = icmp eq i64 %82, 4
  br i1 %83, label %84, label %92

84:                                               ; preds = %81
  %85 = load %struct.bcm_db*, %struct.bcm_db** %12, align 8
  %86 = getelementptr inbounds %struct.bcm_db, %struct.bcm_db* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i64 @le32_to_cpu(i32 %87)
  %89 = mul i64 %88, 1000
  %90 = load %struct.clk_rpmh*, %struct.clk_rpmh** %5, align 8
  %91 = getelementptr inbounds %struct.clk_rpmh, %struct.clk_rpmh* %90, i32 0, i32 0
  store i64 %89, i64* %91, align 8
  br label %92

92:                                               ; preds = %84, %81
  %93 = load i64, i64* %10, align 8
  %94 = load %struct.clk_rpmh*, %struct.clk_rpmh** %5, align 8
  %95 = getelementptr inbounds %struct.clk_rpmh, %struct.clk_rpmh* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = sext i32 %96 to i64
  %98 = add nsw i64 %97, %93
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %95, align 8
  %100 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %101 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %100, i32 0, i32 0
  %102 = load %struct.clk_rpmh*, %struct.clk_rpmh** %5, align 8
  %103 = getelementptr inbounds %struct.clk_rpmh, %struct.clk_rpmh* %102, i32 0, i32 1
  store i32* %101, i32** %103, align 8
  %104 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %105 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %104, i32 0, i32 0
  %106 = load %struct.clk_hw**, %struct.clk_hw*** %4, align 8
  %107 = load i32, i32* %8, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.clk_hw*, %struct.clk_hw** %106, i64 %108
  %110 = load %struct.clk_hw*, %struct.clk_hw** %109, align 8
  %111 = call i32 @devm_clk_hw_register(i32* %105, %struct.clk_hw* %110)
  store i32 %111, i32* %7, align 4
  %112 = load i32, i32* %7, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %92
  %115 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %116 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %115, i32 0, i32 0
  %117 = load i8*, i8** %9, align 8
  %118 = call i32 (i32*, i8*, ...) @dev_err(i32* %116, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* %117)
  %119 = load i32, i32* %7, align 4
  store i32 %119, i32* %2, align 4
  br label %142

120:                                              ; preds = %92
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %8, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %8, align 4
  br label %25

124:                                              ; preds = %25
  %125 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %126 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %125, i32 0, i32 0
  %127 = load i32, i32* @of_clk_rpmh_hw_get, align 4
  %128 = load %struct.clk_rpmh_desc*, %struct.clk_rpmh_desc** %6, align 8
  %129 = bitcast %struct.clk_rpmh_desc* %128 to i8*
  %130 = call i32 @devm_of_clk_add_hw_provider(i32* %126, i32 %127, i8* %129)
  store i32 %130, i32* %7, align 4
  %131 = load i32, i32* %7, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %124
  %134 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %135 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %134, i32 0, i32 0
  %136 = call i32 (i32*, i8*, ...) @dev_err(i32* %135, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %137 = load i32, i32* %7, align 4
  store i32 %137, i32* %2, align 4
  br label %142

138:                                              ; preds = %124
  %139 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %140 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %139, i32 0, i32 0
  %141 = call i32 @dev_dbg(i32* %140, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %142

142:                                              ; preds = %138, %133, %114, %70, %53, %18
  %143 = load i32, i32* %2, align 4
  ret i32 %143
}

declare dso_local %struct.clk_rpmh_desc* @of_device_get_match_data(i32*) #1

declare dso_local %struct.clk_rpmh* @to_clk_rpmh(%struct.clk_hw*) #1

declare dso_local i64 @cmd_db_read_addr(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local %struct.bcm_db* @cmd_db_read_aux_data(i32, i64*) #1

declare dso_local i64 @IS_ERR(%struct.bcm_db*) #1

declare dso_local i32 @PTR_ERR(%struct.bcm_db*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @devm_clk_hw_register(i32*, %struct.clk_hw*) #1

declare dso_local i32 @devm_of_clk_add_hw_provider(i32*, i32, i8*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
