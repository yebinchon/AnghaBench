; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btmtkuart.c_btmtkuart_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btmtkuart.c_btmtkuart_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.btmtkuart_dev = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.btmtk_hci_wmt_params = type { i32, i32, i32*, i32*, i32 }
%struct.btmtk_tci_sleep = type { i32, i64, i64, i8*, i8* }
%struct.sk_buff = type { i32 }

@BTMTKUART_REQUIRED_WAKEUP = common dso_local global i32 0, align 4
@MTK_WMT_WAKEUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Failed to wakeup the chip (%d)\00", align 1
@MTK_WMT_SEMAPHORE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Failed to query firmware status (%d)\00", align 1
@BTMTK_WMT_PATCH_DONE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Firmware already downloaded\00", align 1
@btmtkuart_func_query = common dso_local global i32 0, align 4
@BTMTK_WMT_ON_PROGRESS = common dso_local global i32 0, align 4
@BTMTK_WMT_ON_DONE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"function already on\00", align 1
@MTK_WMT_FUNC_CTRL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"Failed to send wmt func ctrl (%d)\00", align 1
@HCI_INIT_TIMEOUT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [39 x i8] c"Failed to apply low power setting (%d)\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"Device setup in %llu usecs\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_dev*)* @btmtkuart_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btmtkuart_setup(%struct.hci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca %struct.btmtkuart_dev*, align 8
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
  %16 = call %struct.btmtkuart_dev* @hci_get_drvdata(%struct.hci_dev* %15)
  store %struct.btmtkuart_dev* %16, %struct.btmtkuart_dev** %4, align 8
  store i32 1, i32* %14, align 4
  %17 = call i32 (...) @ktime_get()
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* @BTMTKUART_REQUIRED_WAKEUP, align 4
  %19 = load %struct.btmtkuart_dev*, %struct.btmtkuart_dev** %4, align 8
  %20 = getelementptr inbounds %struct.btmtkuart_dev, %struct.btmtkuart_dev* %19, i32 0, i32 1
  %21 = call i64 @test_bit(i32 %18, i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %44

23:                                               ; preds = %1
  %24 = load i32, i32* @MTK_WMT_WAKEUP, align 4
  %25 = getelementptr inbounds %struct.btmtk_hci_wmt_params, %struct.btmtk_hci_wmt_params* %5, i32 0, i32 4
  store i32 %24, i32* %25, align 8
  %26 = getelementptr inbounds %struct.btmtk_hci_wmt_params, %struct.btmtk_hci_wmt_params* %5, i32 0, i32 0
  store i32 3, i32* %26, align 8
  %27 = getelementptr inbounds %struct.btmtk_hci_wmt_params, %struct.btmtk_hci_wmt_params* %5, i32 0, i32 1
  store i32 0, i32* %27, align 4
  %28 = getelementptr inbounds %struct.btmtk_hci_wmt_params, %struct.btmtk_hci_wmt_params* %5, i32 0, i32 2
  store i32* null, i32** %28, align 8
  %29 = getelementptr inbounds %struct.btmtk_hci_wmt_params, %struct.btmtk_hci_wmt_params* %5, i32 0, i32 3
  store i32* null, i32** %29, align 8
  %30 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %31 = call i32 @mtk_hci_wmt_sync(%struct.hci_dev* %30, %struct.btmtk_hci_wmt_params* %5)
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %12, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %23
  %35 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %36 = load i32, i32* %12, align 4
  %37 = call i32 @bt_dev_err(%struct.hci_dev* %35, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* %12, align 4
  store i32 %38, i32* %2, align 4
  br label %168

39:                                               ; preds = %23
  %40 = load i32, i32* @BTMTKUART_REQUIRED_WAKEUP, align 4
  %41 = load %struct.btmtkuart_dev*, %struct.btmtkuart_dev** %4, align 8
  %42 = getelementptr inbounds %struct.btmtkuart_dev, %struct.btmtkuart_dev* %41, i32 0, i32 1
  %43 = call i32 @clear_bit(i32 %40, i32* %42)
  br label %44

44:                                               ; preds = %39, %1
  %45 = load %struct.btmtkuart_dev*, %struct.btmtkuart_dev** %4, align 8
  %46 = call i64 @btmtkuart_is_standalone(%struct.btmtkuart_dev* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %50 = call i32 @btmtkuart_change_baudrate(%struct.hci_dev* %49)
  br label %51

51:                                               ; preds = %48, %44
  %52 = load i32, i32* @MTK_WMT_SEMAPHORE, align 4
  %53 = getelementptr inbounds %struct.btmtk_hci_wmt_params, %struct.btmtk_hci_wmt_params* %5, i32 0, i32 4
  store i32 %52, i32* %53, align 8
  %54 = getelementptr inbounds %struct.btmtk_hci_wmt_params, %struct.btmtk_hci_wmt_params* %5, i32 0, i32 0
  store i32 1, i32* %54, align 8
  %55 = getelementptr inbounds %struct.btmtk_hci_wmt_params, %struct.btmtk_hci_wmt_params* %5, i32 0, i32 1
  store i32 0, i32* %55, align 4
  %56 = getelementptr inbounds %struct.btmtk_hci_wmt_params, %struct.btmtk_hci_wmt_params* %5, i32 0, i32 2
  store i32* null, i32** %56, align 8
  %57 = getelementptr inbounds %struct.btmtk_hci_wmt_params, %struct.btmtk_hci_wmt_params* %5, i32 0, i32 3
  store i32* %13, i32** %57, align 8
  %58 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %59 = call i32 @mtk_hci_wmt_sync(%struct.hci_dev* %58, %struct.btmtk_hci_wmt_params* %5)
  store i32 %59, i32* %12, align 4
  %60 = load i32, i32* %12, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %51
  %63 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %64 = load i32, i32* %12, align 4
  %65 = call i32 @bt_dev_err(%struct.hci_dev* %63, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* %12, align 4
  store i32 %66, i32* %2, align 4
  br label %168

67:                                               ; preds = %51
  %68 = load i32, i32* %13, align 4
  %69 = load i32, i32* @BTMTK_WMT_PATCH_DONE, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %67
  %72 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %73 = call i32 (%struct.hci_dev*, i8*, ...) @bt_dev_info(%struct.hci_dev* %72, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %87

74:                                               ; preds = %67
  %75 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %76 = load %struct.btmtkuart_dev*, %struct.btmtkuart_dev** %4, align 8
  %77 = getelementptr inbounds %struct.btmtkuart_dev, %struct.btmtkuart_dev* %76, i32 0, i32 0
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @mtk_setup_firmware(%struct.hci_dev* %75, i32 %80)
  store i32 %81, i32* %12, align 4
  %82 = load i32, i32* %12, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %74
  %85 = load i32, i32* %12, align 4
  store i32 %85, i32* %2, align 4
  br label %168

86:                                               ; preds = %74
  br label %87

87:                                               ; preds = %86, %71
  %88 = load i32, i32* @btmtkuart_func_query, align 4
  %89 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %90 = load i32, i32* %13, align 4
  %91 = load i32, i32* %13, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %87
  %94 = load i32, i32* %13, align 4
  %95 = load i32, i32* @BTMTK_WMT_ON_PROGRESS, align 4
  %96 = icmp ne i32 %94, %95
  br label %97

97:                                               ; preds = %93, %87
  %98 = phi i1 [ true, %87 ], [ %96, %93 ]
  %99 = zext i1 %98 to i32
  %100 = call i32 @readx_poll_timeout(i32 %88, %struct.hci_dev* %89, i32 %90, i32 %99, i32 2000, i32 5000000)
  store i32 %100, i32* %12, align 4
  %101 = load i32, i32* %12, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %97
  %104 = load i32, i32* %12, align 4
  store i32 %104, i32* %2, align 4
  br label %168

105:                                              ; preds = %97
  %106 = load i32, i32* %13, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %105
  %109 = load i32, i32* %13, align 4
  store i32 %109, i32* %2, align 4
  br label %168

110:                                              ; preds = %105
  %111 = load i32, i32* %13, align 4
  %112 = load i32, i32* @BTMTK_WMT_ON_DONE, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %117

114:                                              ; preds = %110
  %115 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %116 = call i32 (%struct.hci_dev*, i8*, ...) @bt_dev_info(%struct.hci_dev* %115, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  br label %134

117:                                              ; preds = %110
  %118 = load i32, i32* @MTK_WMT_FUNC_CTRL, align 4
  %119 = getelementptr inbounds %struct.btmtk_hci_wmt_params, %struct.btmtk_hci_wmt_params* %5, i32 0, i32 4
  store i32 %118, i32* %119, align 8
  %120 = getelementptr inbounds %struct.btmtk_hci_wmt_params, %struct.btmtk_hci_wmt_params* %5, i32 0, i32 0
  store i32 0, i32* %120, align 8
  %121 = getelementptr inbounds %struct.btmtk_hci_wmt_params, %struct.btmtk_hci_wmt_params* %5, i32 0, i32 1
  store i32 4, i32* %121, align 4
  %122 = getelementptr inbounds %struct.btmtk_hci_wmt_params, %struct.btmtk_hci_wmt_params* %5, i32 0, i32 2
  store i32* %14, i32** %122, align 8
  %123 = getelementptr inbounds %struct.btmtk_hci_wmt_params, %struct.btmtk_hci_wmt_params* %5, i32 0, i32 3
  store i32* null, i32** %123, align 8
  %124 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %125 = call i32 @mtk_hci_wmt_sync(%struct.hci_dev* %124, %struct.btmtk_hci_wmt_params* %5)
  store i32 %125, i32* %12, align 4
  %126 = load i32, i32* %12, align 4
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %117
  %129 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %130 = load i32, i32* %12, align 4
  %131 = call i32 @bt_dev_err(%struct.hci_dev* %129, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %130)
  %132 = load i32, i32* %12, align 4
  store i32 %132, i32* %2, align 4
  br label %168

133:                                              ; preds = %117
  br label %134

134:                                              ; preds = %133, %114
  %135 = getelementptr inbounds %struct.btmtk_tci_sleep, %struct.btmtk_tci_sleep* %9, i32 0, i32 0
  store i32 5, i32* %135, align 8
  %136 = call i8* @cpu_to_le16(i32 1600)
  %137 = getelementptr inbounds %struct.btmtk_tci_sleep, %struct.btmtk_tci_sleep* %9, i32 0, i32 4
  store i8* %136, i8** %137, align 8
  %138 = call i8* @cpu_to_le16(i32 1600)
  %139 = getelementptr inbounds %struct.btmtk_tci_sleep, %struct.btmtk_tci_sleep* %9, i32 0, i32 3
  store i8* %138, i8** %139, align 8
  %140 = getelementptr inbounds %struct.btmtk_tci_sleep, %struct.btmtk_tci_sleep* %9, i32 0, i32 2
  store i64 0, i64* %140, align 8
  %141 = getelementptr inbounds %struct.btmtk_tci_sleep, %struct.btmtk_tci_sleep* %9, i32 0, i32 1
  store i64 0, i64* %141, align 8
  %142 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %143 = load i32, i32* @HCI_INIT_TIMEOUT, align 4
  %144 = call %struct.sk_buff* @__hci_cmd_sync(%struct.hci_dev* %142, i32 64634, i32 40, %struct.btmtk_tci_sleep* %9, i32 %143)
  store %struct.sk_buff* %144, %struct.sk_buff** %11, align 8
  %145 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %146 = call i64 @IS_ERR(%struct.sk_buff* %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %155

148:                                              ; preds = %134
  %149 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %150 = call i32 @PTR_ERR(%struct.sk_buff* %149)
  store i32 %150, i32* %12, align 4
  %151 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %152 = load i32, i32* %12, align 4
  %153 = call i32 @bt_dev_err(%struct.hci_dev* %151, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i32 %152)
  %154 = load i32, i32* %12, align 4
  store i32 %154, i32* %2, align 4
  br label %168

155:                                              ; preds = %134
  %156 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %157 = call i32 @kfree_skb(%struct.sk_buff* %156)
  %158 = call i32 (...) @ktime_get()
  store i32 %158, i32* %8, align 4
  %159 = load i32, i32* %8, align 4
  %160 = load i32, i32* %6, align 4
  %161 = call i32 @ktime_sub(i32 %159, i32 %160)
  store i32 %161, i32* %7, align 4
  %162 = load i32, i32* %7, align 4
  %163 = call i64 @ktime_to_ns(i32 %162)
  %164 = lshr i64 %163, 10
  store i64 %164, i64* %10, align 8
  %165 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %166 = load i64, i64* %10, align 8
  %167 = call i32 (%struct.hci_dev*, i8*, ...) @bt_dev_info(%struct.hci_dev* %165, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i64 %166)
  store i32 0, i32* %2, align 4
  br label %168

168:                                              ; preds = %155, %148, %128, %108, %103, %84, %62, %34
  %169 = load i32, i32* %2, align 4
  ret i32 %169
}

declare dso_local %struct.btmtkuart_dev* @hci_get_drvdata(%struct.hci_dev*) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @mtk_hci_wmt_sync(%struct.hci_dev*, %struct.btmtk_hci_wmt_params*) #1

declare dso_local i32 @bt_dev_err(%struct.hci_dev*, i8*, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i64 @btmtkuart_is_standalone(%struct.btmtkuart_dev*) #1

declare dso_local i32 @btmtkuart_change_baudrate(%struct.hci_dev*) #1

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

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
