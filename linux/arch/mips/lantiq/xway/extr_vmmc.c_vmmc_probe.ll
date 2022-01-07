; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/lantiq/xway/extr_vmmc.c_vmmc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/lantiq/xway/extr_vmmc.c_vmmc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@cp1_base = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [11 x i8] c"vmmc-relay\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"requested GPIO %d\0A\00", align 1
@OF_GPIO_ACTIVE_LOW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"reserved %dMB at 0x%p\00", align 1
@CP1_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @vmmc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmmc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call i32 @dma_alloc_coherent(%struct.TYPE_3__* %8, i32 1048576, i32* %4, i32 %9)
  %11 = call i64 @CPHYSADDR(i32 %10)
  %12 = inttoptr i64 %11 to i8*
  store i8* %12, i8** @cp1_base, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @of_gpio_count(i32 %16)
  store i32 %17, i32* %3, align 4
  br label %18

18:                                               ; preds = %33, %32, %1
  %19 = load i32, i32* %3, align 4
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %46

21:                                               ; preds = %18
  %22 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %3, align 4
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %3, align 4
  %28 = call i32 @of_get_gpio_flags(i32 %25, i32 %27, i32* %5)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i64 @gpio_request(i32 %29, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %21
  br label %18

33:                                               ; preds = %21
  %34 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %35 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %34, i32 0, i32 0
  %36 = load i32, i32* %6, align 4
  %37 = call i32 (%struct.TYPE_3__*, i8*, i32, ...) @dev_info(%struct.TYPE_3__* %35, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @OF_GPIO_ACTIVE_LOW, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i32 0, i32 1
  %45 = call i32 @gpio_direction_output(i32 %38, i32 %44)
  br label %18

46:                                               ; preds = %18
  %47 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %48 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %47, i32 0, i32 0
  %49 = load i8*, i8** @cp1_base, align 8
  %50 = call i32 (%struct.TYPE_3__*, i8*, i32, ...) @dev_info(%struct.TYPE_3__* %48, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 1, i8* %49)
  ret i32 0
}

declare dso_local i64 @CPHYSADDR(i32) #1

declare dso_local i32 @dma_alloc_coherent(%struct.TYPE_3__*, i32, i32*, i32) #1

declare dso_local i32 @of_gpio_count(i32) #1

declare dso_local i32 @of_get_gpio_flags(i32, i32, i32*) #1

declare dso_local i64 @gpio_request(i32, i8*) #1

declare dso_local i32 @dev_info(%struct.TYPE_3__*, i8*, i32, ...) #1

declare dso_local i32 @gpio_direction_output(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
