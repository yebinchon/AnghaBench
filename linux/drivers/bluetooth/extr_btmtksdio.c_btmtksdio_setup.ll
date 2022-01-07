; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btmtksdio.c_btmtksdio_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btmtksdio.c_btmtksdio_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.btmtksdio_dev = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.btmtk_hci_wmt_params = type { i32, i32, i32*, i32*, i32 }
%struct.btmtk_tci_sleep = type { i32, i64, i64, i8*, i8* }
%struct.sk_buff = type { i32 }

@MTK_WMT_SEMAPHORE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Failed to query firmware status (%d)\00", align 1
@BTMTK_WMT_PATCH_DONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Firmware already downloaded\00", align 1
@btmtksdio_func_query = common dso_local global i32 0, align 4
@BTMTK_WMT_ON_PROGRESS = common dso_local global i32 0, align 4
@BTMTK_WMT_ON_DONE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"function already on\00", align 1
@MTK_WMT_FUNC_CTRL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"Failed to send wmt func ctrl (%d)\00", align 1
@HCI_INIT_TIMEOUT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [39 x i8] c"Failed to apply low power setting (%d)\00", align 1
@MTKBTSDIO_AUTOSUSPEND_DELAY = common dso_local global i32 0, align 4
@enable_autosuspend = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [27 x i8] c"Device setup in %llu usecs\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_dev*)* @btmtksdio_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btmtksdio_setup(%struct.hci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca %struct.btmtksdio_dev*, align 8
  %5 = alloca %struct.btmtk_hci_wmt_params, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.btmtk_tci_sleep, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  %15 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %16 = call %struct.btmtksdio_dev* @hci_get_drvdata(%struct.hci_dev* %15)
  store %struct.btmtksdio_dev* %16, %struct.btmtksdio_dev** %4, align 8
  store i32 1, i32* %14, align 4
  %17 = call i32 (...) @ktime_get()
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* @MTK_WMT_SEMAPHORE, align 4
  %19 = getelementptr inbounds %struct.btmtk_hci_wmt_params, %struct.btmtk_hci_wmt_params* %5, i32 0, i32 4
  store i32 %18, i32* %19, align 8
  %20 = getelementptr inbounds %struct.btmtk_hci_wmt_params, %struct.btmtk_hci_wmt_params* %5, i32 0, i32 0
  store i32 1, i32* %20, align 8
  %21 = getelementptr inbounds %struct.btmtk_hci_wmt_params, %struct.btmtk_hci_wmt_params* %5, i32 0, i32 1
  store i32 0, i32* %21, align 4
  %22 = getelementptr inbounds %struct.btmtk_hci_wmt_params, %struct.btmtk_hci_wmt_params* %5, i32 0, i32 2
  store i32* null, i32** %22, align 8
  %23 = getelementptr inbounds %struct.btmtk_hci_wmt_params, %struct.btmtk_hci_wmt_params* %5, i32 0, i32 3
  store i32* %13, i32** %23, align 8
  %24 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %25 = call i32 @mtk_hci_wmt_sync(%struct.hci_dev* %24, %struct.btmtk_hci_wmt_params* %5)
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %12, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %1
  %29 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %30 = load i32, i32* %12, align 4
  %31 = call i32 @bt_dev_err(%struct.hci_dev* %29, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* %12, align 4
  store i32 %32, i32* %2, align 4
  br label %168

33:                                               ; preds = %1
  %34 = load i32, i32* %13, align 4
  %35 = load i32, i32* @BTMTK_WMT_PATCH_DONE, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %39 = call i32 (%struct.hci_dev*, i8*, ...) @bt_dev_info(%struct.hci_dev* %38, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %53

40:                                               ; preds = %33
  %41 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %42 = load %struct.btmtksdio_dev*, %struct.btmtksdio_dev** %4, align 8
  %43 = getelementptr inbounds %struct.btmtksdio_dev, %struct.btmtksdio_dev* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @mtk_setup_firmware(%struct.hci_dev* %41, i32 %46)
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %12, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %40
  %51 = load i32, i32* %12, align 4
  store i32 %51, i32* %2, align 4
  br label %168

52:                                               ; preds = %40
  br label %53

53:                                               ; preds = %52, %37
  %54 = load i32, i32* @btmtksdio_func_query, align 4
  %55 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %56 = load i32, i32* %13, align 4
  %57 = load i32, i32* %13, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %53
  %60 = load i32, i32* %13, align 4
  %61 = load i32, i32* @BTMTK_WMT_ON_PROGRESS, align 4
  %62 = icmp ne i32 %60, %61
  br label %63

63:                                               ; preds = %59, %53
  %64 = phi i1 [ true, %53 ], [ %62, %59 ]
  %65 = zext i1 %64 to i32
  %66 = call i32 @readx_poll_timeout(i32 %54, %struct.hci_dev* %55, i32 %56, i32 %65, i32 2000, i32 5000000)
  store i32 %66, i32* %12, align 4
  %67 = load i32, i32* %12, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %63
  %70 = load i32, i32* %12, align 4
  store i32 %70, i32* %2, align 4
  br label %168

71:                                               ; preds = %63
  %72 = load i32, i32* %13, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %71
  %75 = load i32, i32* %13, align 4
  store i32 %75, i32* %2, align 4
  br label %168

76:                                               ; preds = %71
  %77 = load i32, i32* %13, align 4
  %78 = load i32, i32* @BTMTK_WMT_ON_DONE, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %76
  %81 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %82 = call i32 (%struct.hci_dev*, i8*, ...) @bt_dev_info(%struct.hci_dev* %81, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %100

83:                                               ; preds = %76
  %84 = load i32, i32* @MTK_WMT_FUNC_CTRL, align 4
  %85 = getelementptr inbounds %struct.btmtk_hci_wmt_params, %struct.btmtk_hci_wmt_params* %5, i32 0, i32 4
  store i32 %84, i32* %85, align 8
  %86 = getelementptr inbounds %struct.btmtk_hci_wmt_params, %struct.btmtk_hci_wmt_params* %5, i32 0, i32 0
  store i32 0, i32* %86, align 8
  %87 = getelementptr inbounds %struct.btmtk_hci_wmt_params, %struct.btmtk_hci_wmt_params* %5, i32 0, i32 1
  store i32 4, i32* %87, align 4
  %88 = getelementptr inbounds %struct.btmtk_hci_wmt_params, %struct.btmtk_hci_wmt_params* %5, i32 0, i32 2
  store i32* %14, i32** %88, align 8
  %89 = getelementptr inbounds %struct.btmtk_hci_wmt_params, %struct.btmtk_hci_wmt_params* %5, i32 0, i32 3
  store i32* null, i32** %89, align 8
  %90 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %91 = call i32 @mtk_hci_wmt_sync(%struct.hci_dev* %90, %struct.btmtk_hci_wmt_params* %5)
  store i32 %91, i32* %12, align 4
  %92 = load i32, i32* %12, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %83
  %95 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %96 = load i32, i32* %12, align 4
  %97 = call i32 @bt_dev_err(%struct.hci_dev* %95, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %96)
  %98 = load i32, i32* %12, align 4
  store i32 %98, i32* %2, align 4
  br label %168

99:                                               ; preds = %83
  br label %100

100:                                              ; preds = %99, %80
  %101 = getelementptr inbounds %struct.btmtk_tci_sleep, %struct.btmtk_tci_sleep* %9, i32 0, i32 0
  store i32 5, i32* %101, align 8
  %102 = call i8* @cpu_to_le16(i32 1600)
  %103 = getelementptr inbounds %struct.btmtk_tci_sleep, %struct.btmtk_tci_sleep* %9, i32 0, i32 4
  store i8* %102, i8** %103, align 8
  %104 = call i8* @cpu_to_le16(i32 1600)
  %105 = getelementptr inbounds %struct.btmtk_tci_sleep, %struct.btmtk_tci_sleep* %9, i32 0, i32 3
  store i8* %104, i8** %105, align 8
  %106 = getelementptr inbounds %struct.btmtk_tci_sleep, %struct.btmtk_tci_sleep* %9, i32 0, i32 2
  store i64 0, i64* %106, align 8
  %107 = getelementptr inbounds %struct.btmtk_tci_sleep, %struct.btmtk_tci_sleep* %9, i32 0, i32 1
  store i64 0, i64* %107, align 8
  %108 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %109 = load i32, i32* @HCI_INIT_TIMEOUT, align 4
  %110 = call %struct.sk_buff* @__hci_cmd_sync(%struct.hci_dev* %108, i32 64634, i32 40, %struct.btmtk_tci_sleep* %9, i32 %109)
  store %struct.sk_buff* %110, %struct.sk_buff** %11, align 8
  %111 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %112 = call i64 @IS_ERR(%struct.sk_buff* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %121

114:                                              ; preds = %100
  %115 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %116 = call i32 @PTR_ERR(%struct.sk_buff* %115)
  store i32 %116, i32* %12, align 4
  %117 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %118 = load i32, i32* %12, align 4
  %119 = call i32 @bt_dev_err(%struct.hci_dev* %117, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 %118)
  %120 = load i32, i32* %12, align 4
  store i32 %120, i32* %2, align 4
  br label %168

121:                                              ; preds = %100
  %122 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %123 = call i32 @kfree_skb(%struct.sk_buff* %122)
  %124 = call i32 (...) @ktime_get()
  store i32 %124, i32* %8, align 4
  %125 = load i32, i32* %8, align 4
  %126 = load i32, i32* %6, align 4
  %127 = call i32 @ktime_sub(i32 %125, i32 %126)
  store i32 %127, i32* %7, align 4
  %128 = load i32, i32* %7, align 4
  %129 = call i64 @ktime_to_ns(i32 %128)
  %130 = lshr i64 %129, 10
  store i64 %130, i64* %10, align 8
  %131 = load %struct.btmtksdio_dev*, %struct.btmtksdio_dev** %4, align 8
  %132 = getelementptr inbounds %struct.btmtksdio_dev, %struct.btmtksdio_dev* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @MTKBTSDIO_AUTOSUSPEND_DELAY, align 4
  %135 = call i32 @pm_runtime_set_autosuspend_delay(i32 %133, i32 %134)
  %136 = load %struct.btmtksdio_dev*, %struct.btmtksdio_dev** %4, align 8
  %137 = getelementptr inbounds %struct.btmtksdio_dev, %struct.btmtksdio_dev* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @pm_runtime_use_autosuspend(i32 %138)
  %140 = load %struct.btmtksdio_dev*, %struct.btmtksdio_dev** %4, align 8
  %141 = getelementptr inbounds %struct.btmtksdio_dev, %struct.btmtksdio_dev* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @pm_runtime_set_active(i32 %142)
  store i32 %143, i32* %12, align 4
  %144 = load i32, i32* %12, align 4
  %145 = icmp slt i32 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %121
  %147 = load i32, i32* %12, align 4
  store i32 %147, i32* %2, align 4
  br label %168

148:                                              ; preds = %121
  %149 = load %struct.btmtksdio_dev*, %struct.btmtksdio_dev** %4, align 8
  %150 = getelementptr inbounds %struct.btmtksdio_dev, %struct.btmtksdio_dev* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @pm_runtime_forbid(i32 %151)
  %153 = load %struct.btmtksdio_dev*, %struct.btmtksdio_dev** %4, align 8
  %154 = getelementptr inbounds %struct.btmtksdio_dev, %struct.btmtksdio_dev* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = call i32 @pm_runtime_enable(i32 %155)
  %157 = load i64, i64* @enable_autosuspend, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %164

159:                                              ; preds = %148
  %160 = load %struct.btmtksdio_dev*, %struct.btmtksdio_dev** %4, align 8
  %161 = getelementptr inbounds %struct.btmtksdio_dev, %struct.btmtksdio_dev* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @pm_runtime_allow(i32 %162)
  br label %164

164:                                              ; preds = %159, %148
  %165 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %166 = load i64, i64* %10, align 8
  %167 = call i32 (%struct.hci_dev*, i8*, ...) @bt_dev_info(%struct.hci_dev* %165, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i64 %166)
  store i32 0, i32* %2, align 4
  br label %168

168:                                              ; preds = %164, %146, %114, %94, %74, %69, %50, %28
  %169 = load i32, i32* %2, align 4
  ret i32 %169
}

declare dso_local %struct.btmtksdio_dev* @hci_get_drvdata(%struct.hci_dev*) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @mtk_hci_wmt_sync(%struct.hci_dev*, %struct.btmtk_hci_wmt_params*) #1

declare dso_local i32 @bt_dev_err(%struct.hci_dev*, i8*, i32) #1

declare dso_local i32 @bt_dev_info(%struct.hci_dev*, i8*, ...) #1

declare dso_local i32 @mtk_setup_firmware(%struct.hci_dev*, i32) #1

declare dso_local i32 @readx_poll_timeout(i32, %struct.hci_dev*, i32, i32, i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local %struct.sk_buff* @__hci_cmd_sync(%struct.hci_dev*, i32, i32, %struct.btmtk_tci_sleep*, i32) #1

declare dso_local i64 @IS_ERR(%struct.sk_buff*) #1

declare dso_local i32 @PTR_ERR(%struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @ktime_sub(i32, i32) #1

declare dso_local i64 @ktime_to_ns(i32) #1

declare dso_local i32 @pm_runtime_set_autosuspend_delay(i32, i32) #1

declare dso_local i32 @pm_runtime_use_autosuspend(i32) #1

declare dso_local i32 @pm_runtime_set_active(i32) #1

declare dso_local i32 @pm_runtime_forbid(i32) #1

declare dso_local i32 @pm_runtime_enable(i32) #1

declare dso_local i32 @pm_runtime_allow(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
