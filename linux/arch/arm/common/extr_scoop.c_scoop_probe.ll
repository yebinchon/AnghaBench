; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/common/extr_scoop.c_scoop_probe.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/common/extr_scoop.c_scoop_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.scoop_config* }
%struct.scoop_config = type { i32, i32, i32, i32, i32 }
%struct.scoop_dev = type { i64, %struct.TYPE_5__, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.resource = type { i64 }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Sharp Scoop Device found at 0x%08x -> 0x%8p\0A\00", align 1
@SCOOP_MCR = common dso_local global i64 0, align 8
@SCOOP_CPR = common dso_local global i64 0, align 8
@SCOOP_GPCR = common dso_local global i64 0, align 8
@SCOOP_GPWR = common dso_local global i64 0, align 8
@scoop_gpio_set = common dso_local global i32 0, align 4
@scoop_gpio_get = common dso_local global i32 0, align 4
@scoop_gpio_direction_input = common dso_local global i32 0, align 4
@scoop_gpio_direction_output = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @scoop_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scoop_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.scoop_dev*, align 8
  %5 = alloca %struct.scoop_config*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = load i32, i32* @IORESOURCE_MEM, align 4
  %10 = call %struct.resource* @platform_get_resource(%struct.platform_device* %8, i32 %9, i32 0)
  store %struct.resource* %10, %struct.resource** %6, align 8
  %11 = load %struct.resource*, %struct.resource** %6, align 8
  %12 = icmp ne %struct.resource* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %163

16:                                               ; preds = %1
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.scoop_dev* @kzalloc(i32 48, i32 %17)
  store %struct.scoop_dev* %18, %struct.scoop_dev** %4, align 8
  %19 = load %struct.scoop_dev*, %struct.scoop_dev** %4, align 8
  %20 = icmp ne %struct.scoop_dev* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %163

24:                                               ; preds = %16
  %25 = load %struct.scoop_dev*, %struct.scoop_dev** %4, align 8
  %26 = getelementptr inbounds %struct.scoop_dev, %struct.scoop_dev* %25, i32 0, i32 4
  %27 = call i32 @spin_lock_init(i32* %26)
  %28 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %29 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load %struct.scoop_config*, %struct.scoop_config** %30, align 8
  store %struct.scoop_config* %31, %struct.scoop_config** %5, align 8
  %32 = load %struct.resource*, %struct.resource** %6, align 8
  %33 = getelementptr inbounds %struct.resource, %struct.resource* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.resource*, %struct.resource** %6, align 8
  %36 = call i32 @resource_size(%struct.resource* %35)
  %37 = call i64 @ioremap(i64 %34, i32 %36)
  %38 = load %struct.scoop_dev*, %struct.scoop_dev** %4, align 8
  %39 = getelementptr inbounds %struct.scoop_dev, %struct.scoop_dev* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  %40 = load %struct.scoop_dev*, %struct.scoop_dev** %4, align 8
  %41 = getelementptr inbounds %struct.scoop_dev, %struct.scoop_dev* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %24
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %7, align 4
  br label %155

47:                                               ; preds = %24
  %48 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %49 = load %struct.scoop_dev*, %struct.scoop_dev** %4, align 8
  %50 = call i32 @platform_set_drvdata(%struct.platform_device* %48, %struct.scoop_dev* %49)
  %51 = load %struct.resource*, %struct.resource** %6, align 8
  %52 = getelementptr inbounds %struct.resource, %struct.resource* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = trunc i64 %53 to i32
  %55 = load %struct.scoop_dev*, %struct.scoop_dev** %4, align 8
  %56 = getelementptr inbounds %struct.scoop_dev, %struct.scoop_dev* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @printk(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %54, i64 %57)
  %59 = load %struct.scoop_dev*, %struct.scoop_dev** %4, align 8
  %60 = getelementptr inbounds %struct.scoop_dev, %struct.scoop_dev* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @SCOOP_MCR, align 8
  %63 = add nsw i64 %61, %62
  %64 = call i32 @iowrite16(i32 320, i64 %63)
  %65 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %66 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %65, i32 0, i32 0
  %67 = call i32 @reset_scoop(%struct.TYPE_4__* %66)
  %68 = load %struct.scoop_dev*, %struct.scoop_dev** %4, align 8
  %69 = getelementptr inbounds %struct.scoop_dev, %struct.scoop_dev* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @SCOOP_CPR, align 8
  %72 = add nsw i64 %70, %71
  %73 = call i32 @iowrite16(i32 0, i64 %72)
  %74 = load %struct.scoop_config*, %struct.scoop_config** %5, align 8
  %75 = getelementptr inbounds %struct.scoop_config, %struct.scoop_config* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = and i32 %76, 65535
  %78 = load %struct.scoop_dev*, %struct.scoop_dev** %4, align 8
  %79 = getelementptr inbounds %struct.scoop_dev, %struct.scoop_dev* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @SCOOP_GPCR, align 8
  %82 = add nsw i64 %80, %81
  %83 = call i32 @iowrite16(i32 %77, i64 %82)
  %84 = load %struct.scoop_config*, %struct.scoop_config** %5, align 8
  %85 = getelementptr inbounds %struct.scoop_config, %struct.scoop_config* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = and i32 %86, 65535
  %88 = load %struct.scoop_dev*, %struct.scoop_dev** %4, align 8
  %89 = getelementptr inbounds %struct.scoop_dev, %struct.scoop_dev* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @SCOOP_GPWR, align 8
  %92 = add nsw i64 %90, %91
  %93 = call i32 @iowrite16(i32 %87, i64 %92)
  %94 = load %struct.scoop_config*, %struct.scoop_config** %5, align 8
  %95 = getelementptr inbounds %struct.scoop_config, %struct.scoop_config* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.scoop_dev*, %struct.scoop_dev** %4, align 8
  %98 = getelementptr inbounds %struct.scoop_dev, %struct.scoop_dev* %97, i32 0, i32 3
  store i32 %96, i32* %98, align 8
  %99 = load %struct.scoop_config*, %struct.scoop_config** %5, align 8
  %100 = getelementptr inbounds %struct.scoop_config, %struct.scoop_config* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.scoop_dev*, %struct.scoop_dev** %4, align 8
  %103 = getelementptr inbounds %struct.scoop_dev, %struct.scoop_dev* %102, i32 0, i32 2
  store i32 %101, i32* %103, align 4
  %104 = load %struct.scoop_dev*, %struct.scoop_dev** %4, align 8
  %105 = getelementptr inbounds %struct.scoop_dev, %struct.scoop_dev* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 0
  store i32 -1, i32* %106, align 8
  %107 = load %struct.scoop_config*, %struct.scoop_config** %5, align 8
  %108 = getelementptr inbounds %struct.scoop_config, %struct.scoop_config* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %151

111:                                              ; preds = %47
  %112 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %113 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %112, i32 0, i32 0
  %114 = call i32 @dev_name(%struct.TYPE_4__* %113)
  %115 = load %struct.scoop_dev*, %struct.scoop_dev** %4, align 8
  %116 = getelementptr inbounds %struct.scoop_dev, %struct.scoop_dev* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 6
  store i32 %114, i32* %117, align 8
  %118 = load %struct.scoop_config*, %struct.scoop_config** %5, align 8
  %119 = getelementptr inbounds %struct.scoop_config, %struct.scoop_config* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.scoop_dev*, %struct.scoop_dev** %4, align 8
  %122 = getelementptr inbounds %struct.scoop_dev, %struct.scoop_dev* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 0
  store i32 %120, i32* %123, align 8
  %124 = load %struct.scoop_dev*, %struct.scoop_dev** %4, align 8
  %125 = getelementptr inbounds %struct.scoop_dev, %struct.scoop_dev* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 1
  store i32 12, i32* %126, align 4
  %127 = load i32, i32* @scoop_gpio_set, align 4
  %128 = load %struct.scoop_dev*, %struct.scoop_dev** %4, align 8
  %129 = getelementptr inbounds %struct.scoop_dev, %struct.scoop_dev* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 5
  store i32 %127, i32* %130, align 4
  %131 = load i32, i32* @scoop_gpio_get, align 4
  %132 = load %struct.scoop_dev*, %struct.scoop_dev** %4, align 8
  %133 = getelementptr inbounds %struct.scoop_dev, %struct.scoop_dev* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 4
  store i32 %131, i32* %134, align 8
  %135 = load i32, i32* @scoop_gpio_direction_input, align 4
  %136 = load %struct.scoop_dev*, %struct.scoop_dev** %4, align 8
  %137 = getelementptr inbounds %struct.scoop_dev, %struct.scoop_dev* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 3
  store i32 %135, i32* %138, align 4
  %139 = load i32, i32* @scoop_gpio_direction_output, align 4
  %140 = load %struct.scoop_dev*, %struct.scoop_dev** %4, align 8
  %141 = getelementptr inbounds %struct.scoop_dev, %struct.scoop_dev* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 2
  store i32 %139, i32* %142, align 8
  %143 = load %struct.scoop_dev*, %struct.scoop_dev** %4, align 8
  %144 = getelementptr inbounds %struct.scoop_dev, %struct.scoop_dev* %143, i32 0, i32 1
  %145 = load %struct.scoop_dev*, %struct.scoop_dev** %4, align 8
  %146 = call i32 @gpiochip_add_data(%struct.TYPE_5__* %144, %struct.scoop_dev* %145)
  store i32 %146, i32* %7, align 4
  %147 = load i32, i32* %7, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %111
  br label %152

150:                                              ; preds = %111
  br label %151

151:                                              ; preds = %150, %47
  store i32 0, i32* %2, align 4
  br label %163

152:                                              ; preds = %149
  %153 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %154 = call i32 @platform_set_drvdata(%struct.platform_device* %153, %struct.scoop_dev* null)
  br label %155

155:                                              ; preds = %152, %44
  %156 = load %struct.scoop_dev*, %struct.scoop_dev** %4, align 8
  %157 = getelementptr inbounds %struct.scoop_dev, %struct.scoop_dev* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = call i32 @iounmap(i64 %158)
  %160 = load %struct.scoop_dev*, %struct.scoop_dev** %4, align 8
  %161 = call i32 @kfree(%struct.scoop_dev* %160)
  %162 = load i32, i32* %7, align 4
  store i32 %162, i32* %2, align 4
  br label %163

163:                                              ; preds = %155, %151, %21, %13
  %164 = load i32, i32* %2, align 4
  ret i32 %164
}

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local %struct.scoop_dev* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i64 @ioremap(i64, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.scoop_dev*) #1

declare dso_local i32 @printk(i8*, i32, i64) #1

declare dso_local i32 @iowrite16(i32, i64) #1

declare dso_local i32 @reset_scoop(%struct.TYPE_4__*) #1

declare dso_local i32 @dev_name(%struct.TYPE_4__*) #1

declare dso_local i32 @gpiochip_add_data(%struct.TYPE_5__*, %struct.scoop_dev*) #1

declare dso_local i32 @iounmap(i64) #1

declare dso_local i32 @kfree(%struct.scoop_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
