; ModuleID = '/home/carl/AnghaBench/lede/target/linux/mcs814x/files-3.18/drivers/watchdog/extr_mcs814x_wdt.c_mcs814x_wdt_probe.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/mcs814x/files-3.18/drivers/watchdog/extr_mcs814x_wdt.c_mcs814x_wdt_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.resource = type { i32 }
%struct.mcs814x_wdt = type { %struct.TYPE_3__, i32, %struct.clk*, i32 }
%struct.TYPE_3__ = type { i32, i32, i32*, i32* }
%struct.clk = type { i32 }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"wdt\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"failed to get watchdog clock\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mcs814x_wdt_ident = common dso_local global i32 0, align 4
@mcs814x_wdt_ops = common dso_local global i32 0, align 4
@WDT_MAX_VALUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"cannot register watchdog: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"registered\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mcs814x_wdt_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcs814x_wdt_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.resource*, align 8
  %5 = alloca %struct.mcs814x_wdt*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.clk*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = load i32, i32* @IORESOURCE_MEM, align 4
  %10 = call %struct.resource* @platform_get_resource(%struct.platform_device* %8, i32 %9, i32 0)
  store %struct.resource* %10, %struct.resource** %4, align 8
  %11 = load %struct.resource*, %struct.resource** %4, align 8
  %12 = icmp ne %struct.resource* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %106

16:                                               ; preds = %1
  %17 = call %struct.clk* @clk_get(i32* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store %struct.clk* %17, %struct.clk** %7, align 8
  %18 = load %struct.clk*, %struct.clk** %7, align 8
  %19 = call i64 @IS_ERR_OR_NULL(%struct.clk* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %16
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = call i32 (i32*, i8*, ...) @dev_err(i32* %23, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %25 = load %struct.clk*, %struct.clk** %7, align 8
  %26 = call i32 @PTR_ERR(%struct.clk* %25)
  store i32 %26, i32* %2, align 4
  br label %106

27:                                               ; preds = %16
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.mcs814x_wdt* @kzalloc(i32 48, i32 %28)
  store %struct.mcs814x_wdt* %29, %struct.mcs814x_wdt** %5, align 8
  %30 = load %struct.mcs814x_wdt*, %struct.mcs814x_wdt** %5, align 8
  %31 = icmp ne %struct.mcs814x_wdt* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %6, align 4
  br label %102

35:                                               ; preds = %27
  %36 = load %struct.mcs814x_wdt*, %struct.mcs814x_wdt** %5, align 8
  %37 = getelementptr inbounds %struct.mcs814x_wdt, %struct.mcs814x_wdt* %36, i32 0, i32 3
  %38 = call i32 @spin_lock_init(i32* %37)
  %39 = load %struct.clk*, %struct.clk** %7, align 8
  %40 = load %struct.mcs814x_wdt*, %struct.mcs814x_wdt** %5, align 8
  %41 = getelementptr inbounds %struct.mcs814x_wdt, %struct.mcs814x_wdt* %40, i32 0, i32 2
  store %struct.clk* %39, %struct.clk** %41, align 8
  %42 = load %struct.mcs814x_wdt*, %struct.mcs814x_wdt** %5, align 8
  %43 = getelementptr inbounds %struct.mcs814x_wdt, %struct.mcs814x_wdt* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 3
  store i32* @mcs814x_wdt_ident, i32** %44, align 8
  %45 = load %struct.mcs814x_wdt*, %struct.mcs814x_wdt** %5, align 8
  %46 = getelementptr inbounds %struct.mcs814x_wdt, %struct.mcs814x_wdt* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 2
  store i32* @mcs814x_wdt_ops, i32** %47, align 8
  %48 = load %struct.mcs814x_wdt*, %struct.mcs814x_wdt** %5, align 8
  %49 = getelementptr inbounds %struct.mcs814x_wdt, %struct.mcs814x_wdt* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  store i32 1, i32* %50, align 8
  %51 = load i32, i32* @WDT_MAX_VALUE, align 4
  %52 = load %struct.clk*, %struct.clk** %7, align 8
  %53 = call i32 @clk_get_rate(%struct.clk* %52)
  %54 = sdiv i32 %51, %53
  %55 = load %struct.mcs814x_wdt*, %struct.mcs814x_wdt** %5, align 8
  %56 = getelementptr inbounds %struct.mcs814x_wdt, %struct.mcs814x_wdt* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  store i32 %54, i32* %57, align 4
  %58 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %59 = load %struct.mcs814x_wdt*, %struct.mcs814x_wdt** %5, align 8
  %60 = call i32 @platform_set_drvdata(%struct.platform_device* %58, %struct.mcs814x_wdt* %59)
  %61 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %62 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %61, i32 0, i32 0
  %63 = load %struct.resource*, %struct.resource** %4, align 8
  %64 = getelementptr inbounds %struct.resource, %struct.resource* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.resource*, %struct.resource** %4, align 8
  %67 = call i32 @resource_size(%struct.resource* %66)
  %68 = call i32 @devm_ioremap(i32* %62, i32 %65, i32 %67)
  %69 = load %struct.mcs814x_wdt*, %struct.mcs814x_wdt** %5, align 8
  %70 = getelementptr inbounds %struct.mcs814x_wdt, %struct.mcs814x_wdt* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 8
  %71 = load %struct.mcs814x_wdt*, %struct.mcs814x_wdt** %5, align 8
  %72 = getelementptr inbounds %struct.mcs814x_wdt, %struct.mcs814x_wdt* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %35
  %76 = load i32, i32* @ENOMEM, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %6, align 4
  br label %97

78:                                               ; preds = %35
  %79 = load %struct.mcs814x_wdt*, %struct.mcs814x_wdt** %5, align 8
  %80 = getelementptr inbounds %struct.mcs814x_wdt, %struct.mcs814x_wdt* %79, i32 0, i32 0
  %81 = load %struct.mcs814x_wdt*, %struct.mcs814x_wdt** %5, align 8
  %82 = call i32 @watchdog_set_drvdata(%struct.TYPE_3__* %80, %struct.mcs814x_wdt* %81)
  %83 = load %struct.mcs814x_wdt*, %struct.mcs814x_wdt** %5, align 8
  %84 = getelementptr inbounds %struct.mcs814x_wdt, %struct.mcs814x_wdt* %83, i32 0, i32 0
  %85 = call i32 @watchdog_register_device(%struct.TYPE_3__* %84)
  store i32 %85, i32* %6, align 4
  %86 = load i32, i32* %6, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %78
  %89 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %90 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %89, i32 0, i32 0
  %91 = load i32, i32* %6, align 4
  %92 = call i32 (i32*, i8*, ...) @dev_err(i32* %90, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %91)
  br label %97

93:                                               ; preds = %78
  %94 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %95 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %94, i32 0, i32 0
  %96 = call i32 @dev_info(i32* %95, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %106

97:                                               ; preds = %88, %75
  %98 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %99 = call i32 @platform_set_drvdata(%struct.platform_device* %98, %struct.mcs814x_wdt* null)
  %100 = load %struct.mcs814x_wdt*, %struct.mcs814x_wdt** %5, align 8
  %101 = call i32 @kfree(%struct.mcs814x_wdt* %100)
  br label %102

102:                                              ; preds = %97, %32
  %103 = load %struct.clk*, %struct.clk** %7, align 8
  %104 = call i32 @clk_put(%struct.clk* %103)
  %105 = load i32, i32* %6, align 4
  store i32 %105, i32* %2, align 4
  br label %106

106:                                              ; preds = %102, %93, %21, %13
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local %struct.clk* @clk_get(i32*, i8*) #1

declare dso_local i64 @IS_ERR_OR_NULL(%struct.clk*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @PTR_ERR(%struct.clk*) #1

declare dso_local %struct.mcs814x_wdt* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @clk_get_rate(%struct.clk*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.mcs814x_wdt*) #1

declare dso_local i32 @devm_ioremap(i32*, i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @watchdog_set_drvdata(%struct.TYPE_3__*, %struct.mcs814x_wdt*) #1

declare dso_local i32 @watchdog_register_device(%struct.TYPE_3__*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @kfree(%struct.mcs814x_wdt*) #1

declare dso_local i32 @clk_put(%struct.clk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
