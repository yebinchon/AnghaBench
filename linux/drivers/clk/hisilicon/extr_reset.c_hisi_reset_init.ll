; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/hisilicon/extr_reset.c_hisi_reset_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/hisilicon/extr_reset.c_hisi_reset_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_reset_controller = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32*, i32 }
%struct.platform_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@hisi_reset_ops = common dso_local global i32 0, align 4
@hisi_reset_of_xlate = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.hisi_reset_controller* @hisi_reset_init(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.hisi_reset_controller*, align 8
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.hisi_reset_controller*, align 8
  %5 = alloca %struct.resource*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.hisi_reset_controller* @devm_kmalloc(%struct.TYPE_5__* %7, i32 40, i32 %8)
  store %struct.hisi_reset_controller* %9, %struct.hisi_reset_controller** %4, align 8
  %10 = load %struct.hisi_reset_controller*, %struct.hisi_reset_controller** %4, align 8
  %11 = icmp ne %struct.hisi_reset_controller* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store %struct.hisi_reset_controller* null, %struct.hisi_reset_controller** %2, align 8
  br label %58

13:                                               ; preds = %1
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = load i32, i32* @IORESOURCE_MEM, align 4
  %16 = call %struct.resource* @platform_get_resource(%struct.platform_device* %14, i32 %15, i32 0)
  store %struct.resource* %16, %struct.resource** %5, align 8
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = load %struct.resource*, %struct.resource** %5, align 8
  %20 = call i32 @devm_ioremap_resource(%struct.TYPE_5__* %18, %struct.resource* %19)
  %21 = load %struct.hisi_reset_controller*, %struct.hisi_reset_controller** %4, align 8
  %22 = getelementptr inbounds %struct.hisi_reset_controller, %struct.hisi_reset_controller* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 4
  %23 = load %struct.hisi_reset_controller*, %struct.hisi_reset_controller** %4, align 8
  %24 = getelementptr inbounds %struct.hisi_reset_controller, %struct.hisi_reset_controller* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @IS_ERR(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %13
  store %struct.hisi_reset_controller* null, %struct.hisi_reset_controller** %2, align 8
  br label %58

29:                                               ; preds = %13
  %30 = load %struct.hisi_reset_controller*, %struct.hisi_reset_controller** %4, align 8
  %31 = getelementptr inbounds %struct.hisi_reset_controller, %struct.hisi_reset_controller* %30, i32 0, i32 1
  %32 = call i32 @spin_lock_init(i32* %31)
  %33 = load i32, i32* @THIS_MODULE, align 4
  %34 = load %struct.hisi_reset_controller*, %struct.hisi_reset_controller** %4, align 8
  %35 = getelementptr inbounds %struct.hisi_reset_controller, %struct.hisi_reset_controller* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 4
  store i32 %33, i32* %36, align 8
  %37 = load %struct.hisi_reset_controller*, %struct.hisi_reset_controller** %4, align 8
  %38 = getelementptr inbounds %struct.hisi_reset_controller, %struct.hisi_reset_controller* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 3
  store i32* @hisi_reset_ops, i32** %39, align 8
  %40 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %41 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.hisi_reset_controller*, %struct.hisi_reset_controller** %4, align 8
  %45 = getelementptr inbounds %struct.hisi_reset_controller, %struct.hisi_reset_controller* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 2
  store i32 %43, i32* %46, align 8
  %47 = load %struct.hisi_reset_controller*, %struct.hisi_reset_controller** %4, align 8
  %48 = getelementptr inbounds %struct.hisi_reset_controller, %struct.hisi_reset_controller* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  store i32 2, i32* %49, align 8
  %50 = load i32, i32* @hisi_reset_of_xlate, align 4
  %51 = load %struct.hisi_reset_controller*, %struct.hisi_reset_controller** %4, align 8
  %52 = getelementptr inbounds %struct.hisi_reset_controller, %struct.hisi_reset_controller* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  store i32 %50, i32* %53, align 4
  %54 = load %struct.hisi_reset_controller*, %struct.hisi_reset_controller** %4, align 8
  %55 = getelementptr inbounds %struct.hisi_reset_controller, %struct.hisi_reset_controller* %54, i32 0, i32 0
  %56 = call i32 @reset_controller_register(%struct.TYPE_4__* %55)
  %57 = load %struct.hisi_reset_controller*, %struct.hisi_reset_controller** %4, align 8
  store %struct.hisi_reset_controller* %57, %struct.hisi_reset_controller** %2, align 8
  br label %58

58:                                               ; preds = %29, %28, %12
  %59 = load %struct.hisi_reset_controller*, %struct.hisi_reset_controller** %2, align 8
  ret %struct.hisi_reset_controller* %59
}

declare dso_local %struct.hisi_reset_controller* @devm_kmalloc(%struct.TYPE_5__*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.TYPE_5__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @reset_controller_register(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
