; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btsdio.c_btsdio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btsdio.c_btsdio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdio_func = type { i32, i32, i32, %struct.TYPE_2__*, i32, %struct.sdio_func_tuple* }
%struct.TYPE_2__ = type { i32 }
%struct.sdio_func_tuple = type { %struct.sdio_func_tuple*, i32, i32 }
%struct.sdio_device_id = type { i64 }
%struct.btsdio_data = type { %struct.hci_dev*, i32, i32, %struct.sdio_func* }
%struct.hci_dev = type { i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"func %p id %p class 0x%04x\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"code 0x%x size %d\00", align 1
@SDIO_VENDOR_ID_BROADCOM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@btsdio_work = common dso_local global i32 0, align 4
@HCI_SDIO = common dso_local global i32 0, align 4
@SDIO_CLASS_BT_AMP = common dso_local global i64 0, align 8
@HCI_AMP = common dso_local global i32 0, align 4
@HCI_PRIMARY = common dso_local global i32 0, align 4
@btsdio_open = common dso_local global i32 0, align 4
@btsdio_close = common dso_local global i32 0, align 4
@btsdio_flush = common dso_local global i32 0, align 4
@btsdio_send_frame = common dso_local global i32 0, align 4
@HCI_QUIRK_RESET_ON_CLOSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdio_func*, %struct.sdio_device_id*)* @btsdio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btsdio_probe(%struct.sdio_func* %0, %struct.sdio_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sdio_func*, align 8
  %5 = alloca %struct.sdio_device_id*, align 8
  %6 = alloca %struct.btsdio_data*, align 8
  %7 = alloca %struct.hci_dev*, align 8
  %8 = alloca %struct.sdio_func_tuple*, align 8
  %9 = alloca i32, align 4
  store %struct.sdio_func* %0, %struct.sdio_func** %4, align 8
  store %struct.sdio_device_id* %1, %struct.sdio_device_id** %5, align 8
  %10 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %11 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %10, i32 0, i32 5
  %12 = load %struct.sdio_func_tuple*, %struct.sdio_func_tuple** %11, align 8
  store %struct.sdio_func_tuple* %12, %struct.sdio_func_tuple** %8, align 8
  %13 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %14 = load %struct.sdio_device_id*, %struct.sdio_device_id** %5, align 8
  %15 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %16 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  %18 = call i32 (i8*, %struct.sdio_func*, %struct.sdio_device_id*, ...) @BT_DBG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), %struct.sdio_func* %13, %struct.sdio_device_id* %14, i32 %17)
  br label %19

19:                                               ; preds = %22, %2
  %20 = load %struct.sdio_func_tuple*, %struct.sdio_func_tuple** %8, align 8
  %21 = icmp ne %struct.sdio_func_tuple* %20, null
  br i1 %21, label %22, label %37

22:                                               ; preds = %19
  %23 = load %struct.sdio_func_tuple*, %struct.sdio_func_tuple** %8, align 8
  %24 = getelementptr inbounds %struct.sdio_func_tuple, %struct.sdio_func_tuple* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = sext i32 %25 to i64
  %27 = inttoptr i64 %26 to %struct.sdio_func*
  %28 = load %struct.sdio_func_tuple*, %struct.sdio_func_tuple** %8, align 8
  %29 = getelementptr inbounds %struct.sdio_func_tuple, %struct.sdio_func_tuple* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = sext i32 %30 to i64
  %32 = inttoptr i64 %31 to %struct.sdio_device_id*
  %33 = call i32 (i8*, %struct.sdio_func*, %struct.sdio_device_id*, ...) @BT_DBG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), %struct.sdio_func* %27, %struct.sdio_device_id* %32)
  %34 = load %struct.sdio_func_tuple*, %struct.sdio_func_tuple** %8, align 8
  %35 = getelementptr inbounds %struct.sdio_func_tuple, %struct.sdio_func_tuple* %34, i32 0, i32 0
  %36 = load %struct.sdio_func_tuple*, %struct.sdio_func_tuple** %35, align 8
  store %struct.sdio_func_tuple* %36, %struct.sdio_func_tuple** %8, align 8
  br label %19

37:                                               ; preds = %19
  %38 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %39 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @SDIO_VENDOR_ID_BROADCOM, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %59

43:                                               ; preds = %37
  %44 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %45 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %44, i32 0, i32 3
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @mmc_card_is_removable(i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %59, label %51

51:                                               ; preds = %43
  %52 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %53 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  switch i32 %54, label %58 [
    i32 130, label %55
    i32 129, label %55
    i32 128, label %55
  ]

55:                                               ; preds = %51, %51, %51
  %56 = load i32, i32* @ENODEV, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %153

58:                                               ; preds = %51
  br label %59

59:                                               ; preds = %58, %43, %37
  %60 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %61 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %60, i32 0, i32 2
  %62 = load i32, i32* @GFP_KERNEL, align 4
  %63 = call %struct.btsdio_data* @devm_kzalloc(i32* %61, i32 24, i32 %62)
  store %struct.btsdio_data* %63, %struct.btsdio_data** %6, align 8
  %64 = load %struct.btsdio_data*, %struct.btsdio_data** %6, align 8
  %65 = icmp ne %struct.btsdio_data* %64, null
  br i1 %65, label %69, label %66

66:                                               ; preds = %59
  %67 = load i32, i32* @ENOMEM, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %3, align 4
  br label %153

69:                                               ; preds = %59
  %70 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %71 = load %struct.btsdio_data*, %struct.btsdio_data** %6, align 8
  %72 = getelementptr inbounds %struct.btsdio_data, %struct.btsdio_data* %71, i32 0, i32 3
  store %struct.sdio_func* %70, %struct.sdio_func** %72, align 8
  %73 = load %struct.btsdio_data*, %struct.btsdio_data** %6, align 8
  %74 = getelementptr inbounds %struct.btsdio_data, %struct.btsdio_data* %73, i32 0, i32 2
  %75 = load i32, i32* @btsdio_work, align 4
  %76 = call i32 @INIT_WORK(i32* %74, i32 %75)
  %77 = load %struct.btsdio_data*, %struct.btsdio_data** %6, align 8
  %78 = getelementptr inbounds %struct.btsdio_data, %struct.btsdio_data* %77, i32 0, i32 1
  %79 = call i32 @skb_queue_head_init(i32* %78)
  %80 = call %struct.hci_dev* (...) @hci_alloc_dev()
  store %struct.hci_dev* %80, %struct.hci_dev** %7, align 8
  %81 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %82 = icmp ne %struct.hci_dev* %81, null
  br i1 %82, label %86, label %83

83:                                               ; preds = %69
  %84 = load i32, i32* @ENOMEM, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %3, align 4
  br label %153

86:                                               ; preds = %69
  %87 = load i32, i32* @HCI_SDIO, align 4
  %88 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %89 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %88, i32 0, i32 6
  store i32 %87, i32* %89, align 4
  %90 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %91 = load %struct.btsdio_data*, %struct.btsdio_data** %6, align 8
  %92 = call i32 @hci_set_drvdata(%struct.hci_dev* %90, %struct.btsdio_data* %91)
  %93 = load %struct.sdio_device_id*, %struct.sdio_device_id** %5, align 8
  %94 = getelementptr inbounds %struct.sdio_device_id, %struct.sdio_device_id* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @SDIO_CLASS_BT_AMP, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %102

98:                                               ; preds = %86
  %99 = load i32, i32* @HCI_AMP, align 4
  %100 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %101 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %100, i32 0, i32 5
  store i32 %99, i32* %101, align 4
  br label %106

102:                                              ; preds = %86
  %103 = load i32, i32* @HCI_PRIMARY, align 4
  %104 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %105 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %104, i32 0, i32 5
  store i32 %103, i32* %105, align 4
  br label %106

106:                                              ; preds = %102, %98
  %107 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %108 = load %struct.btsdio_data*, %struct.btsdio_data** %6, align 8
  %109 = getelementptr inbounds %struct.btsdio_data, %struct.btsdio_data* %108, i32 0, i32 0
  store %struct.hci_dev* %107, %struct.hci_dev** %109, align 8
  %110 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %111 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %112 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %111, i32 0, i32 2
  %113 = call i32 @SET_HCIDEV_DEV(%struct.hci_dev* %110, i32* %112)
  %114 = load i32, i32* @btsdio_open, align 4
  %115 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %116 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %115, i32 0, i32 4
  store i32 %114, i32* %116, align 4
  %117 = load i32, i32* @btsdio_close, align 4
  %118 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %119 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %118, i32 0, i32 3
  store i32 %117, i32* %119, align 4
  %120 = load i32, i32* @btsdio_flush, align 4
  %121 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %122 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %121, i32 0, i32 2
  store i32 %120, i32* %122, align 4
  %123 = load i32, i32* @btsdio_send_frame, align 4
  %124 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %125 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %124, i32 0, i32 1
  store i32 %123, i32* %125, align 4
  %126 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %127 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = icmp eq i32 %128, 260
  br i1 %129, label %130, label %140

130:                                              ; preds = %106
  %131 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %132 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = icmp eq i32 %133, 197
  br i1 %134, label %135, label %140

135:                                              ; preds = %130
  %136 = load i32, i32* @HCI_QUIRK_RESET_ON_CLOSE, align 4
  %137 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %138 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %137, i32 0, i32 0
  %139 = call i32 @set_bit(i32 %136, i32* %138)
  br label %140

140:                                              ; preds = %135, %130, %106
  %141 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %142 = call i32 @hci_register_dev(%struct.hci_dev* %141)
  store i32 %142, i32* %9, align 4
  %143 = load i32, i32* %9, align 4
  %144 = icmp slt i32 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %140
  %146 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %147 = call i32 @hci_free_dev(%struct.hci_dev* %146)
  %148 = load i32, i32* %9, align 4
  store i32 %148, i32* %3, align 4
  br label %153

149:                                              ; preds = %140
  %150 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %151 = load %struct.btsdio_data*, %struct.btsdio_data** %6, align 8
  %152 = call i32 @sdio_set_drvdata(%struct.sdio_func* %150, %struct.btsdio_data* %151)
  store i32 0, i32* %3, align 4
  br label %153

153:                                              ; preds = %149, %145, %83, %66, %55
  %154 = load i32, i32* %3, align 4
  ret i32 %154
}

declare dso_local i32 @BT_DBG(i8*, %struct.sdio_func*, %struct.sdio_device_id*, ...) #1

declare dso_local i32 @mmc_card_is_removable(i32) #1

declare dso_local %struct.btsdio_data* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local %struct.hci_dev* @hci_alloc_dev(...) #1

declare dso_local i32 @hci_set_drvdata(%struct.hci_dev*, %struct.btsdio_data*) #1

declare dso_local i32 @SET_HCIDEV_DEV(%struct.hci_dev*, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @hci_register_dev(%struct.hci_dev*) #1

declare dso_local i32 @hci_free_dev(%struct.hci_dev*) #1

declare dso_local i32 @sdio_set_drvdata(%struct.sdio_func*, %struct.btsdio_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
