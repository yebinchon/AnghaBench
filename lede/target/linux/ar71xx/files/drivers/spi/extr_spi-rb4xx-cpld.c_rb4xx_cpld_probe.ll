; ModuleID = '/home/carl/AnghaBench/lede/target/linux/ar71xx/files/drivers/spi/extr_spi-rb4xx-cpld.c_rb4xx_cpld_probe.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/ar71xx/files/drivers/spi/extr_spi-rb4xx-cpld.c_rb4xx_cpld_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rb4xx_cpld = type { i32, i32 }
%struct.spi_device = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.rb4xx_cpld_platform_data* }
%struct.rb4xx_cpld_platform_data = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"no platform data\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"no memory for private data\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@SPI_MODE_0 = common dso_local global i32 0, align 4
@SPI_TX_DUAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"spi_setup failed, err=%d\0A\00", align 1
@rb4xx_cpld = common dso_local global %struct.rb4xx_cpld* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @rb4xx_cpld_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rb4xx_cpld_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.rb4xx_cpld*, align 8
  %5 = alloca %struct.rb4xx_cpld_platform_data*, align 8
  %6 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %7 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %8 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.rb4xx_cpld_platform_data*, %struct.rb4xx_cpld_platform_data** %9, align 8
  store %struct.rb4xx_cpld_platform_data* %10, %struct.rb4xx_cpld_platform_data** %5, align 8
  %11 = load %struct.rb4xx_cpld_platform_data*, %struct.rb4xx_cpld_platform_data** %5, align 8
  %12 = icmp ne %struct.rb4xx_cpld_platform_data* %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %1
  %14 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %15 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %14, i32 0, i32 2
  %16 = call i32 @dev_dbg(%struct.TYPE_4__* %15, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %76

19:                                               ; preds = %1
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.rb4xx_cpld* @kzalloc(i32 8, i32 %20)
  store %struct.rb4xx_cpld* %21, %struct.rb4xx_cpld** %4, align 8
  %22 = load %struct.rb4xx_cpld*, %struct.rb4xx_cpld** %4, align 8
  %23 = icmp ne %struct.rb4xx_cpld* %22, null
  br i1 %23, label %30, label %24

24:                                               ; preds = %19
  %25 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %26 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %25, i32 0, i32 2
  %27 = call i32 (%struct.TYPE_4__*, i8*, ...) @dev_err(%struct.TYPE_4__* %26, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %76

30:                                               ; preds = %19
  %31 = load %struct.rb4xx_cpld*, %struct.rb4xx_cpld** %4, align 8
  %32 = getelementptr inbounds %struct.rb4xx_cpld, %struct.rb4xx_cpld* %31, i32 0, i32 1
  %33 = call i32 @mutex_init(i32* %32)
  %34 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %35 = call i32 @spi_dev_get(%struct.spi_device* %34)
  %36 = load %struct.rb4xx_cpld*, %struct.rb4xx_cpld** %4, align 8
  %37 = getelementptr inbounds %struct.rb4xx_cpld, %struct.rb4xx_cpld* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %39 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %38, i32 0, i32 2
  %40 = load %struct.rb4xx_cpld*, %struct.rb4xx_cpld** %4, align 8
  %41 = call i32 @dev_set_drvdata(%struct.TYPE_4__* %39, %struct.rb4xx_cpld* %40)
  %42 = load i32, i32* @SPI_MODE_0, align 4
  %43 = load i32, i32* @SPI_TX_DUAL, align 4
  %44 = or i32 %42, %43
  %45 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %46 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %48 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %47, i32 0, i32 1
  store i32 8, i32* %48, align 4
  %49 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %50 = call i32 @spi_setup(%struct.spi_device* %49)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %30
  %54 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %55 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %54, i32 0, i32 2
  %56 = load i32, i32* %6, align 4
  %57 = call i32 (%struct.TYPE_4__*, i8*, ...) @dev_err(%struct.TYPE_4__* %55, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %56)
  br label %69

58:                                               ; preds = %30
  %59 = load %struct.rb4xx_cpld*, %struct.rb4xx_cpld** %4, align 8
  %60 = load %struct.rb4xx_cpld_platform_data*, %struct.rb4xx_cpld_platform_data** %5, align 8
  %61 = getelementptr inbounds %struct.rb4xx_cpld_platform_data, %struct.rb4xx_cpld_platform_data* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @rb4xx_cpld_gpio_init(%struct.rb4xx_cpld* %59, i32 %62)
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %58
  br label %69

67:                                               ; preds = %58
  %68 = load %struct.rb4xx_cpld*, %struct.rb4xx_cpld** %4, align 8
  store %struct.rb4xx_cpld* %68, %struct.rb4xx_cpld** @rb4xx_cpld, align 8
  store i32 0, i32* %2, align 4
  br label %76

69:                                               ; preds = %66, %53
  %70 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %71 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %70, i32 0, i32 2
  %72 = call i32 @dev_set_drvdata(%struct.TYPE_4__* %71, %struct.rb4xx_cpld* null)
  %73 = load %struct.rb4xx_cpld*, %struct.rb4xx_cpld** %4, align 8
  %74 = call i32 @kfree(%struct.rb4xx_cpld* %73)
  %75 = load i32, i32* %6, align 4
  store i32 %75, i32* %2, align 4
  br label %76

76:                                               ; preds = %69, %67, %24, %13
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i32 @dev_dbg(%struct.TYPE_4__*, i8*) #1

declare dso_local %struct.rb4xx_cpld* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_4__*, i8*, ...) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spi_dev_get(%struct.spi_device*) #1

declare dso_local i32 @dev_set_drvdata(%struct.TYPE_4__*, %struct.rb4xx_cpld*) #1

declare dso_local i32 @spi_setup(%struct.spi_device*) #1

declare dso_local i32 @rb4xx_cpld_gpio_init(%struct.rb4xx_cpld*, i32) #1

declare dso_local i32 @kfree(%struct.rb4xx_cpld*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
