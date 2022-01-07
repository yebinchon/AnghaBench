; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/512x/extr_mpc512x_lpbfifo.c_mpc512x_lpbfifo_probe.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/512x/extr_mpc512x_lpbfifo.c_mpc512x_lpbfifo_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32*, i32, %struct.TYPE_13__*, i32, i32, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.platform_device = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.resource = type { i32 }

@lpbfifo = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@.str = private unnamed_addr constant [6 x i8] c"rx-tx\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"bad 'reg' in 'sclpc' device tree node\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@DRV_NAME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"unable to request region\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"mapping registers failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@MPC512X_SCLPC_RESET = common dso_local global i32 0, align 4
@MPC512X_SCLPC_FIFO_RESET = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"bad '/localbus' device tree node\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"mapping irq failed\0A\00", align 1
@mpc512x_lpbfifo_irq = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [23 x i8] c"requesting irq failed\0A\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"probe succeeded\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mpc512x_lpbfifo_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpc512x_lpbfifo_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.resource, align 4
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = call i32 @memset(%struct.TYPE_12__* @lpbfifo, i32 0, i32 4)
  %7 = call i32 @spin_lock_init(i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @lpbfifo, i32 0, i32 5))
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = call i32* @dma_request_slave_channel(%struct.TYPE_11__* %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32* %10, i32** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @lpbfifo, i32 0, i32 0), align 8
  %11 = load i32*, i32** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @lpbfifo, i32 0, i32 0), align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @EPROBE_DEFER, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %116

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @of_address_to_resource(i32 %20, i32 0, %struct.resource* %4)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %16
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %24, i32 0, i32 0
  %26 = call i32 @dev_err(%struct.TYPE_11__* %25, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %112

29:                                               ; preds = %16
  %30 = getelementptr inbounds %struct.resource, %struct.resource* %4, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @lpbfifo, i32 0, i32 4), align 4
  %32 = call i32 @resource_size(%struct.resource* %4)
  store i32 %32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @lpbfifo, i32 0, i32 3), align 8
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 0
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @lpbfifo, i32 0, i32 4), align 4
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @lpbfifo, i32 0, i32 3), align 8
  %37 = load i32, i32* @DRV_NAME, align 4
  %38 = call i32 @devm_request_mem_region(%struct.TYPE_11__* %34, i32 %35, i32 %36, i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %29
  %41 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %42 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %41, i32 0, i32 0
  %43 = call i32 @dev_err(%struct.TYPE_11__* %42, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %44 = load i32, i32* @EBUSY, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %5, align 4
  br label %112

46:                                               ; preds = %29
  %47 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %48 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %47, i32 0, i32 0
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @lpbfifo, i32 0, i32 4), align 4
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @lpbfifo, i32 0, i32 3), align 8
  %51 = call %struct.TYPE_13__* @devm_ioremap(%struct.TYPE_11__* %48, i32 %49, i32 %50)
  store %struct.TYPE_13__* %51, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @lpbfifo, i32 0, i32 2), align 8
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @lpbfifo, i32 0, i32 2), align 8
  %53 = icmp ne %struct.TYPE_13__* %52, null
  br i1 %53, label %60, label %54

54:                                               ; preds = %46
  %55 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %56 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %55, i32 0, i32 0
  %57 = call i32 @dev_err(%struct.TYPE_11__* %56, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %5, align 4
  br label %112

60:                                               ; preds = %46
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @lpbfifo, i32 0, i32 2), align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 0
  %63 = load i32, i32* @MPC512X_SCLPC_RESET, align 4
  %64 = load i32, i32* @MPC512X_SCLPC_FIFO_RESET, align 4
  %65 = or i32 %63, %64
  %66 = call i32 @out_be32(i32* %62, i32 %65)
  %67 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %68 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %67, i32 0, i32 0
  %69 = call i64 @get_cs_ranges(%struct.TYPE_11__* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %60
  %72 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %73 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %72, i32 0, i32 0
  %74 = call i32 @dev_err(%struct.TYPE_11__* %73, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  %75 = load i32, i32* @ENODEV, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %5, align 4
  br label %112

77:                                               ; preds = %60
  %78 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %79 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @irq_of_parse_and_map(i32 %81, i32 0)
  store i32 %82, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @lpbfifo, i32 0, i32 1), align 8
  %83 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @lpbfifo, i32 0, i32 1), align 8
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %91, label %85

85:                                               ; preds = %77
  %86 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %87 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %86, i32 0, i32 0
  %88 = call i32 @dev_err(%struct.TYPE_11__* %87, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  %89 = load i32, i32* @ENODEV, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %5, align 4
  br label %112

91:                                               ; preds = %77
  %92 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @lpbfifo, i32 0, i32 1), align 8
  %93 = load i32, i32* @mpc512x_lpbfifo_irq, align 4
  %94 = load i32, i32* @DRV_NAME, align 4
  %95 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %96 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %95, i32 0, i32 0
  %97 = call i64 @request_irq(i32 %92, i32 %93, i32 0, i32 %94, %struct.TYPE_11__* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %91
  %100 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %101 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %100, i32 0, i32 0
  %102 = call i32 @dev_err(%struct.TYPE_11__* %101, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  %103 = load i32, i32* @ENODEV, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %5, align 4
  br label %109

105:                                              ; preds = %91
  %106 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %107 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %106, i32 0, i32 0
  %108 = call i32 @dev_info(%struct.TYPE_11__* %107, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %116

109:                                              ; preds = %99
  %110 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @lpbfifo, i32 0, i32 1), align 8
  %111 = call i32 @irq_dispose_mapping(i32 %110)
  br label %112

112:                                              ; preds = %109, %85, %71, %54, %40, %23
  %113 = load i32*, i32** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @lpbfifo, i32 0, i32 0), align 8
  %114 = call i32 @dma_release_channel(i32* %113)
  %115 = load i32, i32* %5, align 4
  store i32 %115, i32* %2, align 4
  br label %116

116:                                              ; preds = %112, %105, %13
  %117 = load i32, i32* %2, align 4
  ret i32 %117
}

declare dso_local i32 @memset(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32* @dma_request_slave_channel(%struct.TYPE_11__*, i8*) #1

declare dso_local i64 @of_address_to_resource(i32, i32, %struct.resource*) #1

declare dso_local i32 @dev_err(%struct.TYPE_11__*, i8*) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @devm_request_mem_region(%struct.TYPE_11__*, i32, i32, i32) #1

declare dso_local %struct.TYPE_13__* @devm_ioremap(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @out_be32(i32*, i32) #1

declare dso_local i64 @get_cs_ranges(%struct.TYPE_11__*) #1

declare dso_local i32 @irq_of_parse_and_map(i32, i32) #1

declare dso_local i64 @request_irq(i32, i32, i32, i32, %struct.TYPE_11__*) #1

declare dso_local i32 @dev_info(%struct.TYPE_11__*, i8*) #1

declare dso_local i32 @irq_dispose_mapping(i32) #1

declare dso_local i32 @dma_release_channel(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
