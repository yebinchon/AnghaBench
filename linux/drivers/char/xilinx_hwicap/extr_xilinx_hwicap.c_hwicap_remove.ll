; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/xilinx_hwicap/extr_xilinx_hwicap.c_hwicap_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/xilinx_hwicap/extr_xilinx_hwicap.c_hwicap_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.hwicap_drvdata = type { i32, i32, i32, i32, i32 }

@icap_class = common dso_local global i32 0, align 4
@icap_sem = common dso_local global i32 0, align 4
@probed_devices = common dso_local global i64* null, align 8
@XHWICAP_MINOR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @hwicap_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hwicap_remove(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.hwicap_drvdata*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %5 = load %struct.device*, %struct.device** %3, align 8
  %6 = call %struct.hwicap_drvdata* @dev_get_drvdata(%struct.device* %5)
  store %struct.hwicap_drvdata* %6, %struct.hwicap_drvdata** %4, align 8
  %7 = load %struct.hwicap_drvdata*, %struct.hwicap_drvdata** %4, align 8
  %8 = icmp ne %struct.hwicap_drvdata* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %42

10:                                               ; preds = %1
  %11 = load i32, i32* @icap_class, align 4
  %12 = load %struct.hwicap_drvdata*, %struct.hwicap_drvdata** %4, align 8
  %13 = getelementptr inbounds %struct.hwicap_drvdata, %struct.hwicap_drvdata* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @device_destroy(i32 %11, i32 %14)
  %16 = load %struct.hwicap_drvdata*, %struct.hwicap_drvdata** %4, align 8
  %17 = getelementptr inbounds %struct.hwicap_drvdata, %struct.hwicap_drvdata* %16, i32 0, i32 3
  %18 = call i32 @cdev_del(i32* %17)
  %19 = load %struct.hwicap_drvdata*, %struct.hwicap_drvdata** %4, align 8
  %20 = getelementptr inbounds %struct.hwicap_drvdata, %struct.hwicap_drvdata* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @iounmap(i32 %21)
  %23 = load %struct.hwicap_drvdata*, %struct.hwicap_drvdata** %4, align 8
  %24 = getelementptr inbounds %struct.hwicap_drvdata, %struct.hwicap_drvdata* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.hwicap_drvdata*, %struct.hwicap_drvdata** %4, align 8
  %27 = getelementptr inbounds %struct.hwicap_drvdata, %struct.hwicap_drvdata* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @release_mem_region(i32 %25, i32 %28)
  %30 = load %struct.hwicap_drvdata*, %struct.hwicap_drvdata** %4, align 8
  %31 = call i32 @kfree(%struct.hwicap_drvdata* %30)
  %32 = call i32 @mutex_lock(i32* @icap_sem)
  %33 = load i64*, i64** @probed_devices, align 8
  %34 = load %struct.device*, %struct.device** %3, align 8
  %35 = getelementptr inbounds %struct.device, %struct.device* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @MINOR(i32 %36)
  %38 = load i64, i64* @XHWICAP_MINOR, align 8
  %39 = sub i64 %37, %38
  %40 = getelementptr inbounds i64, i64* %33, i64 %39
  store i64 0, i64* %40, align 8
  %41 = call i32 @mutex_unlock(i32* @icap_sem)
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %10, %9
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local %struct.hwicap_drvdata* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @device_destroy(i32, i32) #1

declare dso_local i32 @cdev_del(i32*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @release_mem_region(i32, i32) #1

declare dso_local i32 @kfree(%struct.hwicap_drvdata*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @MINOR(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
