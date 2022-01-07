; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-pxa/extr_pxa3xx-ulpi.c_pxa3xx_u2d_remove.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-pxa/extr_pxa3xx-ulpi.c_pxa3xx_u2d_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.platform_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.pxa3xx_u2d_platform_data* }
%struct.pxa3xx_u2d_platform_data = type { i32 (%struct.TYPE_5__*)* }
%struct.resource = type { i32 }

@u2d = common dso_local global %struct.TYPE_4__* null, align 8
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @pxa3xx_u2d_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxa3xx_u2d_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.pxa3xx_u2d_platform_data*, align 8
  %4 = alloca %struct.resource*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = load %struct.pxa3xx_u2d_platform_data*, %struct.pxa3xx_u2d_platform_data** %7, align 8
  store %struct.pxa3xx_u2d_platform_data* %8, %struct.pxa3xx_u2d_platform_data** %3, align 8
  %9 = call i64 (...) @cpu_is_pxa310()
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = call i32 (...) @pxa310_stop_otg_hc()
  %13 = call i32 (...) @pxa310_otg_exit()
  br label %14

14:                                               ; preds = %11, %1
  %15 = load %struct.pxa3xx_u2d_platform_data*, %struct.pxa3xx_u2d_platform_data** %3, align 8
  %16 = getelementptr inbounds %struct.pxa3xx_u2d_platform_data, %struct.pxa3xx_u2d_platform_data* %15, i32 0, i32 0
  %17 = load i32 (%struct.TYPE_5__*)*, i32 (%struct.TYPE_5__*)** %16, align 8
  %18 = icmp ne i32 (%struct.TYPE_5__*)* %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %14
  %20 = load %struct.pxa3xx_u2d_platform_data*, %struct.pxa3xx_u2d_platform_data** %3, align 8
  %21 = getelementptr inbounds %struct.pxa3xx_u2d_platform_data, %struct.pxa3xx_u2d_platform_data* %20, i32 0, i32 0
  %22 = load i32 (%struct.TYPE_5__*)*, i32 (%struct.TYPE_5__*)** %21, align 8
  %23 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = call i32 %22(%struct.TYPE_5__* %24)
  br label %26

26:                                               ; preds = %19, %14
  %27 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %28 = call i32 @platform_set_drvdata(%struct.platform_device* %27, i32* null)
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** @u2d, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @iounmap(i32 %31)
  %33 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %34 = load i32, i32* @IORESOURCE_MEM, align 4
  %35 = call %struct.resource* @platform_get_resource(%struct.platform_device* %33, i32 %34, i32 0)
  store %struct.resource* %35, %struct.resource** %4, align 8
  %36 = load %struct.resource*, %struct.resource** %4, align 8
  %37 = getelementptr inbounds %struct.resource, %struct.resource* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.resource*, %struct.resource** %4, align 8
  %40 = call i32 @resource_size(%struct.resource* %39)
  %41 = call i32 @release_mem_region(i32 %38, i32 %40)
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** @u2d, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @clk_put(i32 %44)
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** @u2d, align 8
  %47 = call i32 @kfree(%struct.TYPE_4__* %46)
  ret i32 0
}

declare dso_local i64 @cpu_is_pxa310(...) #1

declare dso_local i32 @pxa310_stop_otg_hc(...) #1

declare dso_local i32 @pxa310_otg_exit(...) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, i32*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @release_mem_region(i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @clk_put(i32) #1

declare dso_local i32 @kfree(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
