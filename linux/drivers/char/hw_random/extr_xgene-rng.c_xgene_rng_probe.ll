; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/hw_random/extr_xgene-rng.c_xgene_rng_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/hw_random/extr_xgene-rng.c_xgene_rng_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }
%struct.platform_device = type { i32 }
%struct.resource = type { i32 }
%struct.xgene_rng_dev = type { i32, i32, i32, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"No IRQ resource\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"APM X-Gene RNG BASE %p ALARM IRQ %d\00", align 1
@xgene_rng_irq_handler = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Could not request RNG alarm IRQ\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Couldn't get the clock for RNG\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"clock prepare enable failed for RNG\00", align 1
@xgene_rng_func = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@.str.5 = private unnamed_addr constant [33 x i8] c"RNG registering failed error %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"RNG device_init_wakeup failed error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @xgene_rng_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgene_rng_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.resource*, align 8
  %5 = alloca %struct.xgene_rng_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.xgene_rng_dev* @devm_kzalloc(i32* %8, i32 24, i32 %9)
  store %struct.xgene_rng_dev* %10, %struct.xgene_rng_dev** %5, align 8
  %11 = load %struct.xgene_rng_dev*, %struct.xgene_rng_dev** %5, align 8
  %12 = icmp ne %struct.xgene_rng_dev* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %161

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = load %struct.xgene_rng_dev*, %struct.xgene_rng_dev** %5, align 8
  %20 = getelementptr inbounds %struct.xgene_rng_dev, %struct.xgene_rng_dev* %19, i32 0, i32 3
  store i32* %18, i32** %20, align 8
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = load %struct.xgene_rng_dev*, %struct.xgene_rng_dev** %5, align 8
  %23 = call i32 @platform_set_drvdata(%struct.platform_device* %21, %struct.xgene_rng_dev* %22)
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = load i32, i32* @IORESOURCE_MEM, align 4
  %26 = call %struct.resource* @platform_get_resource(%struct.platform_device* %24, i32 %25, i32 0)
  store %struct.resource* %26, %struct.resource** %4, align 8
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  %29 = load %struct.resource*, %struct.resource** %4, align 8
  %30 = call i32 @devm_ioremap_resource(i32* %28, %struct.resource* %29)
  %31 = load %struct.xgene_rng_dev*, %struct.xgene_rng_dev** %5, align 8
  %32 = getelementptr inbounds %struct.xgene_rng_dev, %struct.xgene_rng_dev* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 8
  %33 = load %struct.xgene_rng_dev*, %struct.xgene_rng_dev** %5, align 8
  %34 = getelementptr inbounds %struct.xgene_rng_dev, %struct.xgene_rng_dev* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @IS_ERR(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %16
  %39 = load %struct.xgene_rng_dev*, %struct.xgene_rng_dev** %5, align 8
  %40 = getelementptr inbounds %struct.xgene_rng_dev, %struct.xgene_rng_dev* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @PTR_ERR(i32 %41)
  store i32 %42, i32* %2, align 4
  br label %161

43:                                               ; preds = %16
  %44 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %45 = call i32 @platform_get_irq(%struct.platform_device* %44, i32 0)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %50 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %49, i32 0, i32 0
  %51 = call i32 (i32*, i8*, ...) @dev_err(i32* %50, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %52 = load i32, i32* %6, align 4
  store i32 %52, i32* %2, align 4
  br label %161

53:                                               ; preds = %43
  %54 = load i32, i32* %6, align 4
  %55 = load %struct.xgene_rng_dev*, %struct.xgene_rng_dev** %5, align 8
  %56 = getelementptr inbounds %struct.xgene_rng_dev, %struct.xgene_rng_dev* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %58 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %57, i32 0, i32 0
  %59 = load %struct.xgene_rng_dev*, %struct.xgene_rng_dev** %5, align 8
  %60 = getelementptr inbounds %struct.xgene_rng_dev, %struct.xgene_rng_dev* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.xgene_rng_dev*, %struct.xgene_rng_dev** %5, align 8
  %63 = getelementptr inbounds %struct.xgene_rng_dev, %struct.xgene_rng_dev* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @dev_dbg(i32* %58, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %61, i32 %64)
  %66 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %67 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %66, i32 0, i32 0
  %68 = load %struct.xgene_rng_dev*, %struct.xgene_rng_dev** %5, align 8
  %69 = getelementptr inbounds %struct.xgene_rng_dev, %struct.xgene_rng_dev* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @xgene_rng_irq_handler, align 4
  %72 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %73 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %72, i32 0, i32 0
  %74 = call i32 @dev_name(i32* %73)
  %75 = load %struct.xgene_rng_dev*, %struct.xgene_rng_dev** %5, align 8
  %76 = call i32 @devm_request_irq(i32* %67, i32 %70, i32 %71, i32 0, i32 %74, %struct.xgene_rng_dev* %75)
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* %6, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %53
  %80 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %81 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %80, i32 0, i32 0
  %82 = call i32 (i32*, i8*, ...) @dev_err(i32* %81, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %83 = load i32, i32* %6, align 4
  store i32 %83, i32* %2, align 4
  br label %161

84:                                               ; preds = %53
  %85 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %86 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %85, i32 0, i32 0
  %87 = call i32 @devm_clk_get(i32* %86, i32* null)
  %88 = load %struct.xgene_rng_dev*, %struct.xgene_rng_dev** %5, align 8
  %89 = getelementptr inbounds %struct.xgene_rng_dev, %struct.xgene_rng_dev* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  %90 = load %struct.xgene_rng_dev*, %struct.xgene_rng_dev** %5, align 8
  %91 = getelementptr inbounds %struct.xgene_rng_dev, %struct.xgene_rng_dev* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i64 @IS_ERR(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %84
  %96 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %97 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %96, i32 0, i32 0
  %98 = call i32 @dev_warn(i32* %97, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  br label %112

99:                                               ; preds = %84
  %100 = load %struct.xgene_rng_dev*, %struct.xgene_rng_dev** %5, align 8
  %101 = getelementptr inbounds %struct.xgene_rng_dev, %struct.xgene_rng_dev* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @clk_prepare_enable(i32 %102)
  store i32 %103, i32* %6, align 4
  %104 = load i32, i32* %6, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %99
  %107 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %108 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %107, i32 0, i32 0
  %109 = call i32 @dev_warn(i32* %108, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  %110 = load i32, i32* %6, align 4
  store i32 %110, i32* %2, align 4
  br label %161

111:                                              ; preds = %99
  br label %112

112:                                              ; preds = %111, %95
  %113 = load %struct.xgene_rng_dev*, %struct.xgene_rng_dev** %5, align 8
  %114 = ptrtoint %struct.xgene_rng_dev* %113 to i64
  store i64 %114, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @xgene_rng_func, i32 0, i32 0), align 8
  %115 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %116 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %115, i32 0, i32 0
  %117 = call i32 @devm_hwrng_register(i32* %116, %struct.TYPE_3__* @xgene_rng_func)
  store i32 %117, i32* %6, align 4
  %118 = load i32, i32* %6, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %137

120:                                              ; preds = %112
  %121 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %122 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %121, i32 0, i32 0
  %123 = load i32, i32* %6, align 4
  %124 = call i32 (i32*, i8*, ...) @dev_err(i32* %122, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %123)
  %125 = load %struct.xgene_rng_dev*, %struct.xgene_rng_dev** %5, align 8
  %126 = getelementptr inbounds %struct.xgene_rng_dev, %struct.xgene_rng_dev* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = call i64 @IS_ERR(i32 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %135, label %130

130:                                              ; preds = %120
  %131 = load %struct.xgene_rng_dev*, %struct.xgene_rng_dev** %5, align 8
  %132 = getelementptr inbounds %struct.xgene_rng_dev, %struct.xgene_rng_dev* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @clk_disable_unprepare(i32 %133)
  br label %135

135:                                              ; preds = %130, %120
  %136 = load i32, i32* %6, align 4
  store i32 %136, i32* %2, align 4
  br label %161

137:                                              ; preds = %112
  %138 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %139 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %138, i32 0, i32 0
  %140 = call i32 @device_init_wakeup(i32* %139, i32 1)
  store i32 %140, i32* %6, align 4
  %141 = load i32, i32* %6, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %160

143:                                              ; preds = %137
  %144 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %145 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %144, i32 0, i32 0
  %146 = load i32, i32* %6, align 4
  %147 = call i32 (i32*, i8*, ...) @dev_err(i32* %145, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0), i32 %146)
  %148 = load %struct.xgene_rng_dev*, %struct.xgene_rng_dev** %5, align 8
  %149 = getelementptr inbounds %struct.xgene_rng_dev, %struct.xgene_rng_dev* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = call i64 @IS_ERR(i32 %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %158, label %153

153:                                              ; preds = %143
  %154 = load %struct.xgene_rng_dev*, %struct.xgene_rng_dev** %5, align 8
  %155 = getelementptr inbounds %struct.xgene_rng_dev, %struct.xgene_rng_dev* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @clk_disable_unprepare(i32 %156)
  br label %158

158:                                              ; preds = %153, %143
  %159 = load i32, i32* %6, align 4
  store i32 %159, i32* %2, align 4
  br label %161

160:                                              ; preds = %137
  store i32 0, i32* %2, align 4
  br label %161

161:                                              ; preds = %160, %158, %135, %106, %79, %48, %38, %13
  %162 = load i32, i32* %2, align 4
  ret i32 %162
}

declare dso_local %struct.xgene_rng_dev* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.xgene_rng_dev*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32) #1

declare dso_local i32 @devm_request_irq(i32*, i32, i32, i32, i32, %struct.xgene_rng_dev*) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @devm_clk_get(i32*, i32*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @devm_hwrng_register(i32*, %struct.TYPE_3__*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @device_init_wakeup(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
