; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btmtksdio.c_btmtksdio_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btmtksdio.c_btmtksdio_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.btmtksdio_dev = type { i32 }
%struct.btmtk_hci_wmt_params = type { i32, i32*, i32*, i64, i32 }

@MTK_WMT_FUNC_CTRL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Failed to send wmt func ctrl (%d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_dev*)* @btmtksdio_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btmtksdio_shutdown(%struct.hci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca %struct.btmtksdio_dev*, align 8
  %5 = alloca %struct.btmtk_hci_wmt_params, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  %8 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %9 = call %struct.btmtksdio_dev* @hci_get_drvdata(%struct.hci_dev* %8)
  store %struct.btmtksdio_dev* %9, %struct.btmtksdio_dev** %4, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.btmtksdio_dev*, %struct.btmtksdio_dev** %4, align 8
  %11 = getelementptr inbounds %struct.btmtksdio_dev, %struct.btmtksdio_dev* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @pm_runtime_get_sync(i32 %12)
  %14 = load i32, i32* @MTK_WMT_FUNC_CTRL, align 4
  %15 = getelementptr inbounds %struct.btmtk_hci_wmt_params, %struct.btmtk_hci_wmt_params* %5, i32 0, i32 4
  store i32 %14, i32* %15, align 8
  %16 = getelementptr inbounds %struct.btmtk_hci_wmt_params, %struct.btmtk_hci_wmt_params* %5, i32 0, i32 3
  store i64 0, i64* %16, align 8
  %17 = getelementptr inbounds %struct.btmtk_hci_wmt_params, %struct.btmtk_hci_wmt_params* %5, i32 0, i32 0
  store i32 4, i32* %17, align 8
  %18 = getelementptr inbounds %struct.btmtk_hci_wmt_params, %struct.btmtk_hci_wmt_params* %5, i32 0, i32 1
  store i32* %6, i32** %18, align 8
  %19 = getelementptr inbounds %struct.btmtk_hci_wmt_params, %struct.btmtk_hci_wmt_params* %5, i32 0, i32 2
  store i32* null, i32** %19, align 8
  %20 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %21 = call i32 @mtk_hci_wmt_sync(%struct.hci_dev* %20, %struct.btmtk_hci_wmt_params* %5)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %1
  %25 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @bt_dev_err(%struct.hci_dev* %25, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* %7, align 4
  store i32 %28, i32* %2, align 4
  br label %38

29:                                               ; preds = %1
  %30 = load %struct.btmtksdio_dev*, %struct.btmtksdio_dev** %4, align 8
  %31 = getelementptr inbounds %struct.btmtksdio_dev, %struct.btmtksdio_dev* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @pm_runtime_put_noidle(i32 %32)
  %34 = load %struct.btmtksdio_dev*, %struct.btmtksdio_dev** %4, align 8
  %35 = getelementptr inbounds %struct.btmtksdio_dev, %struct.btmtksdio_dev* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @pm_runtime_disable(i32 %36)
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %29, %24
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local %struct.btmtksdio_dev* @hci_get_drvdata(%struct.hci_dev*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @mtk_hci_wmt_sync(%struct.hci_dev*, %struct.btmtk_hci_wmt_params*) #1

declare dso_local i32 @bt_dev_err(%struct.hci_dev*, i8*, i32) #1

declare dso_local i32 @pm_runtime_put_noidle(i32) #1

declare dso_local i32 @pm_runtime_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
