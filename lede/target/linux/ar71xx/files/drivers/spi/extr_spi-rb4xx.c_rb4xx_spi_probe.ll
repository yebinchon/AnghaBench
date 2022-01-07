; ModuleID = '/home/carl/AnghaBench/lede/target/linux/ar71xx/files/drivers/spi/extr_spi-rb4xx.c_rb4xx_spi_probe.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/ar71xx/files/drivers/spi/extr_spi-rb4xx.c_rb4xx_spi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.spi_master = type { i32, i32, i32, i32, i64 }
%struct.rb4xx_spi = type { i32, i32, i32, i32, i32, i8*, i8*, %struct.spi_master*, i32 }
%struct.resource = type { i64, i64 }

@.str = private unnamed_addr constant [26 x i8] c"no memory for spi_master\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@SPI_TX_DUAL = common dso_local global i32 0, align 4
@rb4xx_spi_setup = common dso_local global i32 0, align 4
@rb4xx_spi_transfer = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"ahb\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@SPI_FLASH_HZ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"FLASH\00", align 1
@SPI_CPLD_HZ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"CPLD\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"failed to register SPI master\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @rb4xx_spi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rb4xx_spi_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.spi_master*, align 8
  %5 = alloca %struct.rb4xx_spi*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = call %struct.spi_master* @spi_alloc_master(i32* %9, i32 56)
  store %struct.spi_master* %10, %struct.spi_master** %4, align 8
  %11 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %12 = icmp eq %struct.spi_master* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = call i32 @dev_err(i32* %15, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %7, align 4
  br label %157

19:                                               ; preds = %1
  %20 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %21 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %20, i32 0, i32 4
  store i64 0, i64* %21, align 8
  %22 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %23 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %22, i32 0, i32 0
  store i32 3, i32* %23, align 8
  %24 = load i32, i32* @SPI_TX_DUAL, align 4
  %25 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %26 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @rb4xx_spi_setup, align 4
  %28 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %29 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 8
  %30 = load i32, i32* @rb4xx_spi_transfer, align 4
  %31 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %32 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %34 = call %struct.rb4xx_spi* @spi_master_get_devdata(%struct.spi_master* %33)
  store %struct.rb4xx_spi* %34, %struct.rb4xx_spi** %5, align 8
  %35 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %36 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %35, i32 0, i32 0
  %37 = call i32 @clk_get(i32* %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %38 = load %struct.rb4xx_spi*, %struct.rb4xx_spi** %5, align 8
  %39 = getelementptr inbounds %struct.rb4xx_spi, %struct.rb4xx_spi* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.rb4xx_spi*, %struct.rb4xx_spi** %5, align 8
  %41 = getelementptr inbounds %struct.rb4xx_spi, %struct.rb4xx_spi* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @IS_ERR(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %19
  %46 = load %struct.rb4xx_spi*, %struct.rb4xx_spi** %5, align 8
  %47 = getelementptr inbounds %struct.rb4xx_spi, %struct.rb4xx_spi* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @PTR_ERR(i32 %48)
  store i32 %49, i32* %7, align 4
  br label %152

50:                                               ; preds = %19
  %51 = load %struct.rb4xx_spi*, %struct.rb4xx_spi** %5, align 8
  %52 = getelementptr inbounds %struct.rb4xx_spi, %struct.rb4xx_spi* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @clk_prepare_enable(i32 %53)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %50
  br label %147

58:                                               ; preds = %50
  %59 = load %struct.rb4xx_spi*, %struct.rb4xx_spi** %5, align 8
  %60 = getelementptr inbounds %struct.rb4xx_spi, %struct.rb4xx_spi* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @clk_get_rate(i32 %61)
  %63 = load %struct.rb4xx_spi*, %struct.rb4xx_spi** %5, align 8
  %64 = getelementptr inbounds %struct.rb4xx_spi, %struct.rb4xx_spi* %63, i32 0, i32 8
  store i32 %62, i32* %64, align 8
  %65 = load %struct.rb4xx_spi*, %struct.rb4xx_spi** %5, align 8
  %66 = getelementptr inbounds %struct.rb4xx_spi, %struct.rb4xx_spi* %65, i32 0, i32 8
  %67 = load i32, i32* %66, align 8
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %58
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %7, align 4
  br label %142

72:                                               ; preds = %58
  %73 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %74 = load %struct.rb4xx_spi*, %struct.rb4xx_spi** %5, align 8
  %75 = call i32 @platform_set_drvdata(%struct.platform_device* %73, %struct.rb4xx_spi* %74)
  %76 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %77 = load i32, i32* @IORESOURCE_MEM, align 4
  %78 = call %struct.resource* @platform_get_resource(%struct.platform_device* %76, i32 %77, i32 0)
  store %struct.resource* %78, %struct.resource** %6, align 8
  %79 = load %struct.resource*, %struct.resource** %6, align 8
  %80 = icmp eq %struct.resource* %79, null
  br i1 %80, label %81, label %84

81:                                               ; preds = %72
  %82 = load i32, i32* @ENOENT, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %7, align 4
  br label %142

84:                                               ; preds = %72
  %85 = load %struct.resource*, %struct.resource** %6, align 8
  %86 = getelementptr inbounds %struct.resource, %struct.resource* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.resource*, %struct.resource** %6, align 8
  %89 = getelementptr inbounds %struct.resource, %struct.resource* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.resource*, %struct.resource** %6, align 8
  %92 = getelementptr inbounds %struct.resource, %struct.resource* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = sub nsw i64 %90, %93
  %95 = add nsw i64 %94, 1
  %96 = call i32 @ioremap(i64 %87, i64 %95)
  %97 = load %struct.rb4xx_spi*, %struct.rb4xx_spi** %5, align 8
  %98 = getelementptr inbounds %struct.rb4xx_spi, %struct.rb4xx_spi* %97, i32 0, i32 2
  store i32 %96, i32* %98, align 8
  %99 = load %struct.rb4xx_spi*, %struct.rb4xx_spi** %5, align 8
  %100 = getelementptr inbounds %struct.rb4xx_spi, %struct.rb4xx_spi* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %84
  %104 = load i32, i32* @ENXIO, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %7, align 4
  br label %142

106:                                              ; preds = %84
  %107 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %108 = load %struct.rb4xx_spi*, %struct.rb4xx_spi** %5, align 8
  %109 = getelementptr inbounds %struct.rb4xx_spi, %struct.rb4xx_spi* %108, i32 0, i32 7
  store %struct.spi_master* %107, %struct.spi_master** %109, align 8
  %110 = load %struct.rb4xx_spi*, %struct.rb4xx_spi** %5, align 8
  %111 = load i32, i32* @SPI_FLASH_HZ, align 4
  %112 = call i8* @get_spi_ctrl(%struct.rb4xx_spi* %110, i32 %111, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %113 = load %struct.rb4xx_spi*, %struct.rb4xx_spi** %5, align 8
  %114 = getelementptr inbounds %struct.rb4xx_spi, %struct.rb4xx_spi* %113, i32 0, i32 6
  store i8* %112, i8** %114, align 8
  %115 = load %struct.rb4xx_spi*, %struct.rb4xx_spi** %5, align 8
  %116 = load i32, i32* @SPI_CPLD_HZ, align 4
  %117 = call i8* @get_spi_ctrl(%struct.rb4xx_spi* %115, i32 %116, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %118 = load %struct.rb4xx_spi*, %struct.rb4xx_spi** %5, align 8
  %119 = getelementptr inbounds %struct.rb4xx_spi, %struct.rb4xx_spi* %118, i32 0, i32 5
  store i8* %117, i8** %119, align 8
  %120 = load %struct.rb4xx_spi*, %struct.rb4xx_spi** %5, align 8
  %121 = getelementptr inbounds %struct.rb4xx_spi, %struct.rb4xx_spi* %120, i32 0, i32 0
  store i32 -1, i32* %121, align 8
  %122 = load %struct.rb4xx_spi*, %struct.rb4xx_spi** %5, align 8
  %123 = getelementptr inbounds %struct.rb4xx_spi, %struct.rb4xx_spi* %122, i32 0, i32 4
  %124 = call i32 @spin_lock_init(i32* %123)
  %125 = load %struct.rb4xx_spi*, %struct.rb4xx_spi** %5, align 8
  %126 = getelementptr inbounds %struct.rb4xx_spi, %struct.rb4xx_spi* %125, i32 0, i32 3
  %127 = call i32 @INIT_LIST_HEAD(i32* %126)
  %128 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %129 = call i32 @spi_register_master(%struct.spi_master* %128)
  store i32 %129, i32* %7, align 4
  %130 = load i32, i32* %7, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %106
  %133 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %134 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %133, i32 0, i32 0
  %135 = call i32 @dev_err(i32* %134, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  br label %137

136:                                              ; preds = %106
  store i32 0, i32* %2, align 4
  br label %159

137:                                              ; preds = %132
  %138 = load %struct.rb4xx_spi*, %struct.rb4xx_spi** %5, align 8
  %139 = getelementptr inbounds %struct.rb4xx_spi, %struct.rb4xx_spi* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @iounmap(i32 %140)
  br label %142

142:                                              ; preds = %137, %103, %81, %69
  %143 = load %struct.rb4xx_spi*, %struct.rb4xx_spi** %5, align 8
  %144 = getelementptr inbounds %struct.rb4xx_spi, %struct.rb4xx_spi* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @clk_disable_unprepare(i32 %145)
  br label %147

147:                                              ; preds = %142, %57
  %148 = load %struct.rb4xx_spi*, %struct.rb4xx_spi** %5, align 8
  %149 = getelementptr inbounds %struct.rb4xx_spi, %struct.rb4xx_spi* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @clk_put(i32 %150)
  br label %152

152:                                              ; preds = %147, %45
  %153 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %154 = call i32 @platform_set_drvdata(%struct.platform_device* %153, %struct.rb4xx_spi* null)
  %155 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %156 = call i32 @spi_master_put(%struct.spi_master* %155)
  br label %157

157:                                              ; preds = %152, %13
  %158 = load i32, i32* %7, align 4
  store i32 %158, i32* %2, align 4
  br label %159

159:                                              ; preds = %157, %136
  %160 = load i32, i32* %2, align 4
  ret i32 %160
}

declare dso_local %struct.spi_master* @spi_alloc_master(i32*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local %struct.rb4xx_spi* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i32 @clk_get(i32*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.rb4xx_spi*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @ioremap(i64, i64) #1

declare dso_local i8* @get_spi_ctrl(%struct.rb4xx_spi*, i32, i8*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spi_register_master(%struct.spi_master*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @clk_put(i32) #1

declare dso_local i32 @spi_master_put(%struct.spi_master*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
