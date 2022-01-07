; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/hw_random/extr_bcm2835-rng.c_bcm2835_rng_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/hw_random/extr_bcm2835-rng.c_bcm2835_rng_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.bcm2835_rng_of_data = type { i32 }
%struct.of_device_id = type { %struct.bcm2835_rng_of_data* }
%struct.bcm2835_rng_priv = type { %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@bcm2835_rng_init = common dso_local global i32 0, align 4
@bcm2835_rng_read = common dso_local global i32 0, align 4
@bcm2835_rng_cleanup = common dso_local global i32 0, align 4
@bcm2835_rng_of_match = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"hwrng registration failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"hwrng registered\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @bcm2835_rng_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm2835_rng_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.bcm2835_rng_of_data*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.of_device_id*, align 8
  %8 = alloca %struct.bcm2835_rng_priv*, align 8
  %9 = alloca %struct.resource*, align 8
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 1
  store %struct.device* %12, %struct.device** %5, align 8
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = getelementptr inbounds %struct.device, %struct.device* %13, i32 0, i32 0
  %15 = load %struct.device_node*, %struct.device_node** %14, align 8
  store %struct.device_node* %15, %struct.device_node** %6, align 8
  %16 = load %struct.device*, %struct.device** %5, align 8
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.bcm2835_rng_priv* @devm_kzalloc(%struct.device* %16, i32 28, i32 %17)
  store %struct.bcm2835_rng_priv* %18, %struct.bcm2835_rng_priv** %8, align 8
  %19 = load %struct.bcm2835_rng_priv*, %struct.bcm2835_rng_priv** %8, align 8
  %20 = icmp ne %struct.bcm2835_rng_priv* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %126

24:                                               ; preds = %1
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = load %struct.bcm2835_rng_priv*, %struct.bcm2835_rng_priv** %8, align 8
  %27 = call i32 @platform_set_drvdata(%struct.platform_device* %25, %struct.bcm2835_rng_priv* %26)
  %28 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %29 = load i32, i32* @IORESOURCE_MEM, align 4
  %30 = call %struct.resource* @platform_get_resource(%struct.platform_device* %28, i32 %29, i32 0)
  store %struct.resource* %30, %struct.resource** %9, align 8
  %31 = load %struct.device*, %struct.device** %5, align 8
  %32 = load %struct.resource*, %struct.resource** %9, align 8
  %33 = call i32 @devm_ioremap_resource(%struct.device* %31, %struct.resource* %32)
  %34 = load %struct.bcm2835_rng_priv*, %struct.bcm2835_rng_priv** %8, align 8
  %35 = getelementptr inbounds %struct.bcm2835_rng_priv, %struct.bcm2835_rng_priv* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 4
  %36 = load %struct.bcm2835_rng_priv*, %struct.bcm2835_rng_priv** %8, align 8
  %37 = getelementptr inbounds %struct.bcm2835_rng_priv, %struct.bcm2835_rng_priv* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @IS_ERR(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %24
  %42 = load %struct.bcm2835_rng_priv*, %struct.bcm2835_rng_priv** %8, align 8
  %43 = getelementptr inbounds %struct.bcm2835_rng_priv, %struct.bcm2835_rng_priv* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @PTR_ERR(i32 %44)
  store i32 %45, i32* %2, align 4
  br label %126

46:                                               ; preds = %24
  %47 = load %struct.device*, %struct.device** %5, align 8
  %48 = call i32 @devm_clk_get(%struct.device* %47, i32* null)
  %49 = load %struct.bcm2835_rng_priv*, %struct.bcm2835_rng_priv** %8, align 8
  %50 = getelementptr inbounds %struct.bcm2835_rng_priv, %struct.bcm2835_rng_priv* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 4
  %51 = load %struct.bcm2835_rng_priv*, %struct.bcm2835_rng_priv** %8, align 8
  %52 = getelementptr inbounds %struct.bcm2835_rng_priv, %struct.bcm2835_rng_priv* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @IS_ERR(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %46
  %57 = load %struct.bcm2835_rng_priv*, %struct.bcm2835_rng_priv** %8, align 8
  %58 = getelementptr inbounds %struct.bcm2835_rng_priv, %struct.bcm2835_rng_priv* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @PTR_ERR(i32 %59)
  %61 = load i32, i32* @EPROBE_DEFER, align 4
  %62 = sub nsw i32 0, %61
  %63 = icmp eq i32 %60, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %56
  %65 = load i32, i32* @EPROBE_DEFER, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %2, align 4
  br label %126

67:                                               ; preds = %56, %46
  %68 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %69 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.bcm2835_rng_priv*, %struct.bcm2835_rng_priv** %8, align 8
  %72 = getelementptr inbounds %struct.bcm2835_rng_priv, %struct.bcm2835_rng_priv* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 3
  store i32 %70, i32* %73, align 4
  %74 = load i32, i32* @bcm2835_rng_init, align 4
  %75 = load %struct.bcm2835_rng_priv*, %struct.bcm2835_rng_priv** %8, align 8
  %76 = getelementptr inbounds %struct.bcm2835_rng_priv, %struct.bcm2835_rng_priv* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 2
  store i32 %74, i32* %77, align 4
  %78 = load i32, i32* @bcm2835_rng_read, align 4
  %79 = load %struct.bcm2835_rng_priv*, %struct.bcm2835_rng_priv** %8, align 8
  %80 = getelementptr inbounds %struct.bcm2835_rng_priv, %struct.bcm2835_rng_priv* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  store i32 %78, i32* %81, align 4
  %82 = load i32, i32* @bcm2835_rng_cleanup, align 4
  %83 = load %struct.bcm2835_rng_priv*, %struct.bcm2835_rng_priv** %8, align 8
  %84 = getelementptr inbounds %struct.bcm2835_rng_priv, %struct.bcm2835_rng_priv* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  store i32 %82, i32* %85, align 4
  %86 = load %struct.device*, %struct.device** %5, align 8
  %87 = call i64 @dev_of_node(%struct.device* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %111

89:                                               ; preds = %67
  %90 = load i32, i32* @bcm2835_rng_of_match, align 4
  %91 = load %struct.device_node*, %struct.device_node** %6, align 8
  %92 = call %struct.of_device_id* @of_match_node(i32 %90, %struct.device_node* %91)
  store %struct.of_device_id* %92, %struct.of_device_id** %7, align 8
  %93 = load %struct.of_device_id*, %struct.of_device_id** %7, align 8
  %94 = icmp ne %struct.of_device_id* %93, null
  br i1 %94, label %98, label %95

95:                                               ; preds = %89
  %96 = load i32, i32* @EINVAL, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %2, align 4
  br label %126

98:                                               ; preds = %89
  %99 = load %struct.of_device_id*, %struct.of_device_id** %7, align 8
  %100 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %99, i32 0, i32 0
  %101 = load %struct.bcm2835_rng_of_data*, %struct.bcm2835_rng_of_data** %100, align 8
  store %struct.bcm2835_rng_of_data* %101, %struct.bcm2835_rng_of_data** %4, align 8
  %102 = load %struct.bcm2835_rng_of_data*, %struct.bcm2835_rng_of_data** %4, align 8
  %103 = icmp ne %struct.bcm2835_rng_of_data* %102, null
  br i1 %103, label %104, label %110

104:                                              ; preds = %98
  %105 = load %struct.bcm2835_rng_of_data*, %struct.bcm2835_rng_of_data** %4, align 8
  %106 = getelementptr inbounds %struct.bcm2835_rng_of_data, %struct.bcm2835_rng_of_data* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.bcm2835_rng_priv*, %struct.bcm2835_rng_priv** %8, align 8
  %109 = getelementptr inbounds %struct.bcm2835_rng_priv, %struct.bcm2835_rng_priv* %108, i32 0, i32 1
  store i32 %107, i32* %109, align 4
  br label %110

110:                                              ; preds = %104, %98
  br label %111

111:                                              ; preds = %110, %67
  %112 = load %struct.device*, %struct.device** %5, align 8
  %113 = load %struct.bcm2835_rng_priv*, %struct.bcm2835_rng_priv** %8, align 8
  %114 = getelementptr inbounds %struct.bcm2835_rng_priv, %struct.bcm2835_rng_priv* %113, i32 0, i32 0
  %115 = call i32 @devm_hwrng_register(%struct.device* %112, %struct.TYPE_2__* %114)
  store i32 %115, i32* %10, align 4
  %116 = load i32, i32* %10, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %111
  %119 = load %struct.device*, %struct.device** %5, align 8
  %120 = call i32 @dev_err(%struct.device* %119, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %124

121:                                              ; preds = %111
  %122 = load %struct.device*, %struct.device** %5, align 8
  %123 = call i32 @dev_info(%struct.device* %122, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %124

124:                                              ; preds = %121, %118
  %125 = load i32, i32* %10, align 4
  store i32 %125, i32* %2, align 4
  br label %126

126:                                              ; preds = %124, %95, %64, %41, %21
  %127 = load i32, i32* %2, align 4
  ret i32 %127
}

declare dso_local %struct.bcm2835_rng_priv* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.bcm2835_rng_priv*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_clk_get(%struct.device*, i32*) #1

declare dso_local i64 @dev_of_node(%struct.device*) #1

declare dso_local %struct.of_device_id* @of_match_node(i32, %struct.device_node*) #1

declare dso_local i32 @devm_hwrng_register(%struct.device*, %struct.TYPE_2__*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
