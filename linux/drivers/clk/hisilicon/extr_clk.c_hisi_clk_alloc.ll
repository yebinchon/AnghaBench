; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/hisilicon/extr_clk.c_hisi_clk_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/hisilicon/extr_clk.c_hisi_clk_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_clock_data = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, %struct.clk** }
%struct.clk = type { i32 }
%struct.platform_device = type { i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.hisi_clock_data* @hisi_clk_alloc(%struct.platform_device* %0, i32 %1) #0 {
  %3 = alloca %struct.hisi_clock_data*, align 8
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hisi_clock_data*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca %struct.clk**, align 8
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.hisi_clock_data* @devm_kmalloc(i32* %10, i32 24, i32 %11)
  store %struct.hisi_clock_data* %12, %struct.hisi_clock_data** %6, align 8
  %13 = load %struct.hisi_clock_data*, %struct.hisi_clock_data** %6, align 8
  %14 = icmp ne %struct.hisi_clock_data* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store %struct.hisi_clock_data* null, %struct.hisi_clock_data** %3, align 8
  br label %58

16:                                               ; preds = %2
  %17 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %18 = load i32, i32* @IORESOURCE_MEM, align 4
  %19 = call %struct.resource* @platform_get_resource(%struct.platform_device* %17, i32 %18, i32 0)
  store %struct.resource* %19, %struct.resource** %7, align 8
  %20 = load %struct.resource*, %struct.resource** %7, align 8
  %21 = icmp ne %struct.resource* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %16
  store %struct.hisi_clock_data* null, %struct.hisi_clock_data** %3, align 8
  br label %58

23:                                               ; preds = %16
  %24 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %25 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %24, i32 0, i32 0
  %26 = load %struct.resource*, %struct.resource** %7, align 8
  %27 = getelementptr inbounds %struct.resource, %struct.resource* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.resource*, %struct.resource** %7, align 8
  %30 = call i32 @resource_size(%struct.resource* %29)
  %31 = call i32 @devm_ioremap(i32* %25, i32 %28, i32 %30)
  %32 = load %struct.hisi_clock_data*, %struct.hisi_clock_data** %6, align 8
  %33 = getelementptr inbounds %struct.hisi_clock_data, %struct.hisi_clock_data* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 8
  %34 = load %struct.hisi_clock_data*, %struct.hisi_clock_data** %6, align 8
  %35 = getelementptr inbounds %struct.hisi_clock_data, %struct.hisi_clock_data* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %23
  store %struct.hisi_clock_data* null, %struct.hisi_clock_data** %3, align 8
  br label %58

39:                                               ; preds = %23
  %40 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %41 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %40, i32 0, i32 0
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = call %struct.clk** @devm_kmalloc_array(i32* %41, i32 %42, i32 8, i32 %43)
  store %struct.clk** %44, %struct.clk*** %8, align 8
  %45 = load %struct.clk**, %struct.clk*** %8, align 8
  %46 = icmp ne %struct.clk** %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %39
  store %struct.hisi_clock_data* null, %struct.hisi_clock_data** %3, align 8
  br label %58

48:                                               ; preds = %39
  %49 = load %struct.clk**, %struct.clk*** %8, align 8
  %50 = load %struct.hisi_clock_data*, %struct.hisi_clock_data** %6, align 8
  %51 = getelementptr inbounds %struct.hisi_clock_data, %struct.hisi_clock_data* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  store %struct.clk** %49, %struct.clk*** %52, align 8
  %53 = load i32, i32* %5, align 4
  %54 = load %struct.hisi_clock_data*, %struct.hisi_clock_data** %6, align 8
  %55 = getelementptr inbounds %struct.hisi_clock_data, %struct.hisi_clock_data* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  store i32 %53, i32* %56, align 8
  %57 = load %struct.hisi_clock_data*, %struct.hisi_clock_data** %6, align 8
  store %struct.hisi_clock_data* %57, %struct.hisi_clock_data** %3, align 8
  br label %58

58:                                               ; preds = %48, %47, %38, %22, %15
  %59 = load %struct.hisi_clock_data*, %struct.hisi_clock_data** %3, align 8
  ret %struct.hisi_clock_data* %59
}

declare dso_local %struct.hisi_clock_data* @devm_kmalloc(i32*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap(i32*, i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local %struct.clk** @devm_kmalloc_array(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
