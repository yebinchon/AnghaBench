; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btmtksdio.c_btmtksdio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btmtksdio.c_btmtksdio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdio_func = type { i32 }
%struct.sdio_device_id = type { i64 }
%struct.btmtksdio_dev = type { i32*, %struct.hci_dev*, i32, i32, %struct.sdio_func*, i8* }
%struct.hci_dev = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@btmtksdio_tx_work = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Can't allocate HCI device\0A\00", align 1
@HCI_SDIO = common dso_local global i32 0, align 4
@btmtksdio_open = common dso_local global i32 0, align 4
@btmtksdio_close = common dso_local global i32 0, align 4
@btmtksdio_flush = common dso_local global i32 0, align 4
@btmtksdio_setup = common dso_local global i32 0, align 4
@btmtksdio_shutdown = common dso_local global i32 0, align 4
@btmtksdio_send_frame = common dso_local global i32 0, align 4
@HCI_QUIRK_NON_PERSISTENT_SETUP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Can't register HCI device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdio_func*, %struct.sdio_device_id*)* @btmtksdio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btmtksdio_probe(%struct.sdio_func* %0, %struct.sdio_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sdio_func*, align 8
  %5 = alloca %struct.sdio_device_id*, align 8
  %6 = alloca %struct.btmtksdio_dev*, align 8
  %7 = alloca %struct.hci_dev*, align 8
  %8 = alloca i32, align 4
  store %struct.sdio_func* %0, %struct.sdio_func** %4, align 8
  store %struct.sdio_device_id* %1, %struct.sdio_device_id** %5, align 8
  %9 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %10 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %9, i32 0, i32 0
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.btmtksdio_dev* @devm_kzalloc(i32* %10, i32 40, i32 %11)
  store %struct.btmtksdio_dev* %12, %struct.btmtksdio_dev** %6, align 8
  %13 = load %struct.btmtksdio_dev*, %struct.btmtksdio_dev** %6, align 8
  %14 = icmp ne %struct.btmtksdio_dev* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %124

18:                                               ; preds = %2
  %19 = load %struct.sdio_device_id*, %struct.sdio_device_id** %5, align 8
  %20 = getelementptr inbounds %struct.sdio_device_id, %struct.sdio_device_id* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to i8*
  %23 = load %struct.btmtksdio_dev*, %struct.btmtksdio_dev** %6, align 8
  %24 = getelementptr inbounds %struct.btmtksdio_dev, %struct.btmtksdio_dev* %23, i32 0, i32 5
  store i8* %22, i8** %24, align 8
  %25 = load %struct.btmtksdio_dev*, %struct.btmtksdio_dev** %6, align 8
  %26 = getelementptr inbounds %struct.btmtksdio_dev, %struct.btmtksdio_dev* %25, i32 0, i32 5
  %27 = load i8*, i8** %26, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %18
  %30 = load i32, i32* @ENODEV, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %124

32:                                               ; preds = %18
  %33 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %34 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %33, i32 0, i32 0
  %35 = load %struct.btmtksdio_dev*, %struct.btmtksdio_dev** %6, align 8
  %36 = getelementptr inbounds %struct.btmtksdio_dev, %struct.btmtksdio_dev* %35, i32 0, i32 0
  store i32* %34, i32** %36, align 8
  %37 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %38 = load %struct.btmtksdio_dev*, %struct.btmtksdio_dev** %6, align 8
  %39 = getelementptr inbounds %struct.btmtksdio_dev, %struct.btmtksdio_dev* %38, i32 0, i32 4
  store %struct.sdio_func* %37, %struct.sdio_func** %39, align 8
  %40 = load %struct.btmtksdio_dev*, %struct.btmtksdio_dev** %6, align 8
  %41 = getelementptr inbounds %struct.btmtksdio_dev, %struct.btmtksdio_dev* %40, i32 0, i32 3
  %42 = load i32, i32* @btmtksdio_tx_work, align 4
  %43 = call i32 @INIT_WORK(i32* %41, i32 %42)
  %44 = load %struct.btmtksdio_dev*, %struct.btmtksdio_dev** %6, align 8
  %45 = getelementptr inbounds %struct.btmtksdio_dev, %struct.btmtksdio_dev* %44, i32 0, i32 2
  %46 = call i32 @skb_queue_head_init(i32* %45)
  %47 = call %struct.hci_dev* (...) @hci_alloc_dev()
  store %struct.hci_dev* %47, %struct.hci_dev** %7, align 8
  %48 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %49 = icmp ne %struct.hci_dev* %48, null
  br i1 %49, label %56, label %50

50:                                               ; preds = %32
  %51 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %52 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %51, i32 0, i32 0
  %53 = call i32 @dev_err(i32* %52, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %124

56:                                               ; preds = %32
  %57 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %58 = load %struct.btmtksdio_dev*, %struct.btmtksdio_dev** %6, align 8
  %59 = getelementptr inbounds %struct.btmtksdio_dev, %struct.btmtksdio_dev* %58, i32 0, i32 1
  store %struct.hci_dev* %57, %struct.hci_dev** %59, align 8
  %60 = load i32, i32* @HCI_SDIO, align 4
  %61 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %62 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %61, i32 0, i32 8
  store i32 %60, i32* %62, align 4
  %63 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %64 = load %struct.btmtksdio_dev*, %struct.btmtksdio_dev** %6, align 8
  %65 = call i32 @hci_set_drvdata(%struct.hci_dev* %63, %struct.btmtksdio_dev* %64)
  %66 = load i32, i32* @btmtksdio_open, align 4
  %67 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %68 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %67, i32 0, i32 7
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* @btmtksdio_close, align 4
  %70 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %71 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %70, i32 0, i32 6
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* @btmtksdio_flush, align 4
  %73 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %74 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %73, i32 0, i32 5
  store i32 %72, i32* %74, align 4
  %75 = load i32, i32* @btmtksdio_setup, align 4
  %76 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %77 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %76, i32 0, i32 4
  store i32 %75, i32* %77, align 4
  %78 = load i32, i32* @btmtksdio_shutdown, align 4
  %79 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %80 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %79, i32 0, i32 3
  store i32 %78, i32* %80, align 4
  %81 = load i32, i32* @btmtksdio_send_frame, align 4
  %82 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %83 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %82, i32 0, i32 2
  store i32 %81, i32* %83, align 4
  %84 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %85 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %86 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %85, i32 0, i32 0
  %87 = call i32 @SET_HCIDEV_DEV(%struct.hci_dev* %84, i32* %86)
  %88 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %89 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %88, i32 0, i32 0
  store i32 70, i32* %89, align 4
  %90 = load i32, i32* @HCI_QUIRK_NON_PERSISTENT_SETUP, align 4
  %91 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %92 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %91, i32 0, i32 1
  %93 = call i32 @set_bit(i32 %90, i32* %92)
  %94 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %95 = call i32 @hci_register_dev(%struct.hci_dev* %94)
  store i32 %95, i32* %8, align 4
  %96 = load i32, i32* %8, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %56
  %99 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %100 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %99, i32 0, i32 0
  %101 = call i32 @dev_err(i32* %100, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %102 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %103 = call i32 @hci_free_dev(%struct.hci_dev* %102)
  %104 = load i32, i32* %8, align 4
  store i32 %104, i32* %3, align 4
  br label %124

105:                                              ; preds = %56
  %106 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %107 = load %struct.btmtksdio_dev*, %struct.btmtksdio_dev** %6, align 8
  %108 = call i32 @sdio_set_drvdata(%struct.sdio_func* %106, %struct.btmtksdio_dev* %107)
  %109 = load %struct.btmtksdio_dev*, %struct.btmtksdio_dev** %6, align 8
  %110 = getelementptr inbounds %struct.btmtksdio_dev, %struct.btmtksdio_dev* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = call i64 @pm_runtime_enabled(i32* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %105
  %115 = load %struct.btmtksdio_dev*, %struct.btmtksdio_dev** %6, align 8
  %116 = getelementptr inbounds %struct.btmtksdio_dev, %struct.btmtksdio_dev* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = call i32 @pm_runtime_disable(i32* %117)
  br label %119

119:                                              ; preds = %114, %105
  %120 = load %struct.btmtksdio_dev*, %struct.btmtksdio_dev** %6, align 8
  %121 = getelementptr inbounds %struct.btmtksdio_dev, %struct.btmtksdio_dev* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = call i32 @pm_runtime_put_noidle(i32* %122)
  store i32 0, i32* %3, align 4
  br label %124

124:                                              ; preds = %119, %98, %50, %29, %15
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

declare dso_local %struct.btmtksdio_dev* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local %struct.hci_dev* @hci_alloc_dev(...) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @hci_set_drvdata(%struct.hci_dev*, %struct.btmtksdio_dev*) #1

declare dso_local i32 @SET_HCIDEV_DEV(%struct.hci_dev*, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @hci_register_dev(%struct.hci_dev*) #1

declare dso_local i32 @hci_free_dev(%struct.hci_dev*) #1

declare dso_local i32 @sdio_set_drvdata(%struct.sdio_func*, %struct.btmtksdio_dev*) #1

declare dso_local i64 @pm_runtime_enabled(i32*) #1

declare dso_local i32 @pm_runtime_disable(i32*) #1

declare dso_local i32 @pm_runtime_put_noidle(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
