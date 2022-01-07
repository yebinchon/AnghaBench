; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/xilinx_hwicap/extr_xilinx_hwicap.c_hwicap_drv_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/xilinx_hwicap/extr_xilinx_hwicap.c_hwicap_drv_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_registers = type { i32 }
%struct.platform_device = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8* }
%struct.of_device_id = type { i32 }
%struct.resource = type { i32 }

@hwicap_of_match = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@v4_config_registers = common dso_local global %struct.config_registers zeroinitializer, align 4
@.str = private unnamed_addr constant [9 x i8] c"virtex2p\00", align 1
@v2_config_registers = common dso_local global %struct.config_registers zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"virtex4\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"virtex5\00", align 1
@v5_config_registers = common dso_local global %struct.config_registers zeroinitializer, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"virtex6\00", align 1
@v6_config_registers = common dso_local global %struct.config_registers zeroinitializer, align 4
@buffer_icap_config = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @hwicap_drv_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hwicap_drv_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.of_device_id*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca %struct.config_registers*, align 8
  %7 = alloca i8*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load i32, i32* @hwicap_of_match, align 4
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 1
  %11 = call %struct.of_device_id* @of_match_device(i32 %8, %struct.TYPE_3__* %10)
  store %struct.of_device_id* %11, %struct.of_device_id** %4, align 8
  %12 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %13 = icmp ne %struct.of_device_id* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %17 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @hwicap_of_probe(%struct.platform_device* %15, i32 %18)
  store i32 %19, i32* %2, align 4
  br label %69

20:                                               ; preds = %1
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = load i32, i32* @IORESOURCE_MEM, align 4
  %23 = call %struct.resource* @platform_get_resource(%struct.platform_device* %21, i32 %22, i32 0)
  store %struct.resource* %23, %struct.resource** %5, align 8
  %24 = load %struct.resource*, %struct.resource** %5, align 8
  %25 = icmp ne %struct.resource* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %20
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %69

29:                                               ; preds = %20
  store %struct.config_registers* @v4_config_registers, %struct.config_registers** %6, align 8
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  store i8* %33, i8** %7, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %60

36:                                               ; preds = %29
  %37 = load i8*, i8** %7, align 8
  %38 = call i32 @strcmp(i8* %37, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  store %struct.config_registers* @v2_config_registers, %struct.config_registers** %6, align 8
  br label %59

41:                                               ; preds = %36
  %42 = load i8*, i8** %7, align 8
  %43 = call i32 @strcmp(i8* %42, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %41
  store %struct.config_registers* @v4_config_registers, %struct.config_registers** %6, align 8
  br label %58

46:                                               ; preds = %41
  %47 = load i8*, i8** %7, align 8
  %48 = call i32 @strcmp(i8* %47, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %46
  store %struct.config_registers* @v5_config_registers, %struct.config_registers** %6, align 8
  br label %57

51:                                               ; preds = %46
  %52 = load i8*, i8** %7, align 8
  %53 = call i32 @strcmp(i8* %52, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %51
  store %struct.config_registers* @v6_config_registers, %struct.config_registers** %6, align 8
  br label %56

56:                                               ; preds = %55, %51
  br label %57

57:                                               ; preds = %56, %50
  br label %58

58:                                               ; preds = %57, %45
  br label %59

59:                                               ; preds = %58, %40
  br label %60

60:                                               ; preds = %59, %29
  %61 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %62 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %61, i32 0, i32 1
  %63 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %64 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.resource*, %struct.resource** %5, align 8
  %67 = load %struct.config_registers*, %struct.config_registers** %6, align 8
  %68 = call i32 @hwicap_setup(%struct.TYPE_3__* %62, i32 %65, %struct.resource* %66, i32* @buffer_icap_config, %struct.config_registers* %67)
  store i32 %68, i32* %2, align 4
  br label %69

69:                                               ; preds = %60, %26, %14
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.TYPE_3__*) #1

declare dso_local i32 @hwicap_of_probe(%struct.platform_device*, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @hwicap_setup(%struct.TYPE_3__*, i32, %struct.resource*, i32*, %struct.config_registers*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
