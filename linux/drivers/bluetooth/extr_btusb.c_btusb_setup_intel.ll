; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btusb.c_btusb_setup_intel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btusb.c_btusb_setup_intel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.sk_buff = type { i32 }
%struct.firmware = type { i32, i32* }
%struct.intel_version = type { i64, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@HCI_OP_RESET = common dso_local global i32 0, align 4
@HCI_INIT_TIMEOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"sending initial HCI reset command failed (%ld)\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"read Intel version: %02x%02x%02x%02x%02x%02x%02x%02x%02x\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"Intel device is already patched. patch num: %02x\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"Intel firmware patch completed and activated\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"Intel firmware patch completed\00", align 1
@.str.6 = private unnamed_addr constant [47 x i8] c"Intel firmware patch completed and deactivated\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_dev*)* @btusb_setup_intel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btusb_setup_intel(%struct.hci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.firmware*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.intel_version, align 8
  %10 = alloca i32, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  %11 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %12 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @BT_DBG(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %16 = load i32, i32* @HCI_OP_RESET, align 4
  %17 = load i32, i32* @HCI_INIT_TIMEOUT, align 4
  %18 = call %struct.sk_buff* @__hci_cmd_sync(%struct.hci_dev* %15, i32 %16, i32 0, i32* null, i32 %17)
  store %struct.sk_buff* %18, %struct.sk_buff** %4, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %20 = call i64 @IS_ERR(%struct.sk_buff* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %1
  %23 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %25 = call i32 @PTR_ERR(%struct.sk_buff* %24)
  %26 = call i32 @bt_dev_err(%struct.hci_dev* %23, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  %27 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %28 = call i32 @PTR_ERR(%struct.sk_buff* %27)
  store i32 %28, i32* %2, align 4
  br label %151

29:                                               ; preds = %1
  %30 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %31 = call i32 @kfree_skb(%struct.sk_buff* %30)
  %32 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %33 = call i32 @btintel_read_version(%struct.hci_dev* %32, %struct.intel_version* %9)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = load i32, i32* %8, align 4
  store i32 %37, i32* %2, align 4
  br label %151

38:                                               ; preds = %29
  %39 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %40 = getelementptr inbounds %struct.intel_version, %struct.intel_version* %9, i32 0, i32 8
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.intel_version, %struct.intel_version* %9, i32 0, i32 7
  %43 = load i32, i32* %42, align 8
  %44 = getelementptr inbounds %struct.intel_version, %struct.intel_version* %9, i32 0, i32 6
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.intel_version, %struct.intel_version* %9, i32 0, i32 5
  %47 = load i32, i32* %46, align 8
  %48 = getelementptr inbounds %struct.intel_version, %struct.intel_version* %9, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.intel_version, %struct.intel_version* %9, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = getelementptr inbounds %struct.intel_version, %struct.intel_version* %9, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds %struct.intel_version, %struct.intel_version* %9, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = getelementptr inbounds %struct.intel_version, %struct.intel_version* %9, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i32 (%struct.hci_dev*, i8*, ...) @bt_dev_info(%struct.hci_dev* %39, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i32 %41, i32 %43, i32 %45, i32 %47, i32 %49, i32 %51, i32 %53, i32 %55, i64 %57)
  %59 = getelementptr inbounds %struct.intel_version, %struct.intel_version* %9, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %38
  %63 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %64 = getelementptr inbounds %struct.intel_version, %struct.intel_version* %9, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = call i32 (%struct.hci_dev*, i8*, ...) @bt_dev_info(%struct.hci_dev* %63, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i64 %65)
  br label %146

67:                                               ; preds = %38
  %68 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %69 = call %struct.firmware* @btusb_setup_intel_get_fw(%struct.hci_dev* %68, %struct.intel_version* %9)
  store %struct.firmware* %69, %struct.firmware** %5, align 8
  %70 = load %struct.firmware*, %struct.firmware** %5, align 8
  %71 = icmp ne %struct.firmware* %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %67
  br label %146

73:                                               ; preds = %67
  %74 = load %struct.firmware*, %struct.firmware** %5, align 8
  %75 = getelementptr inbounds %struct.firmware, %struct.firmware* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  store i32* %76, i32** %6, align 8
  %77 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %78 = call i32 @btintel_enter_mfg(%struct.hci_dev* %77)
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %8, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %73
  %82 = load %struct.firmware*, %struct.firmware** %5, align 8
  %83 = call i32 @release_firmware(%struct.firmware* %82)
  %84 = load i32, i32* %8, align 4
  store i32 %84, i32* %2, align 4
  br label %151

85:                                               ; preds = %73
  store i32 1, i32* %7, align 4
  br label %86

86:                                               ; preds = %107, %85
  %87 = load %struct.firmware*, %struct.firmware** %5, align 8
  %88 = getelementptr inbounds %struct.firmware, %struct.firmware* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = sext i32 %89 to i64
  %91 = load i32*, i32** %6, align 8
  %92 = load %struct.firmware*, %struct.firmware** %5, align 8
  %93 = getelementptr inbounds %struct.firmware, %struct.firmware* %92, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  %95 = ptrtoint i32* %91 to i64
  %96 = ptrtoint i32* %94 to i64
  %97 = sub i64 %95, %96
  %98 = sdiv exact i64 %97, 4
  %99 = icmp sgt i64 %90, %98
  br i1 %99, label %100, label %108

100:                                              ; preds = %86
  %101 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %102 = load %struct.firmware*, %struct.firmware** %5, align 8
  %103 = call i32 @btusb_setup_intel_patching(%struct.hci_dev* %101, %struct.firmware* %102, i32** %6, i32* %7)
  store i32 %103, i32* %10, align 4
  %104 = load i32, i32* %10, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %100
  br label %134

107:                                              ; preds = %100
  br label %86

108:                                              ; preds = %86
  %109 = load %struct.firmware*, %struct.firmware** %5, align 8
  %110 = call i32 @release_firmware(%struct.firmware* %109)
  %111 = load i32, i32* %7, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %108
  br label %124

114:                                              ; preds = %108
  %115 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %116 = call i32 @btintel_exit_mfg(%struct.hci_dev* %115, i32 1, i32 1)
  store i32 %116, i32* %8, align 4
  %117 = load i32, i32* %8, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %114
  %120 = load i32, i32* %8, align 4
  store i32 %120, i32* %2, align 4
  br label %151

121:                                              ; preds = %114
  %122 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %123 = call i32 (%struct.hci_dev*, i8*, ...) @bt_dev_info(%struct.hci_dev* %122, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0))
  br label %146

124:                                              ; preds = %113
  %125 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %126 = call i32 @btintel_exit_mfg(%struct.hci_dev* %125, i32 0, i32 0)
  store i32 %126, i32* %8, align 4
  %127 = load i32, i32* %8, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %124
  %130 = load i32, i32* %8, align 4
  store i32 %130, i32* %2, align 4
  br label %151

131:                                              ; preds = %124
  %132 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %133 = call i32 (%struct.hci_dev*, i8*, ...) @bt_dev_info(%struct.hci_dev* %132, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  br label %146

134:                                              ; preds = %106
  %135 = load %struct.firmware*, %struct.firmware** %5, align 8
  %136 = call i32 @release_firmware(%struct.firmware* %135)
  %137 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %138 = call i32 @btintel_exit_mfg(%struct.hci_dev* %137, i32 1, i32 0)
  store i32 %138, i32* %8, align 4
  %139 = load i32, i32* %8, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %134
  %142 = load i32, i32* %8, align 4
  store i32 %142, i32* %2, align 4
  br label %151

143:                                              ; preds = %134
  %144 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %145 = call i32 (%struct.hci_dev*, i8*, ...) @bt_dev_info(%struct.hci_dev* %144, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0))
  br label %146

146:                                              ; preds = %143, %131, %121, %72, %62
  %147 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %148 = call i32 @btintel_set_event_mask_mfg(%struct.hci_dev* %147, i32 0)
  %149 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %150 = call i32 @btintel_check_bdaddr(%struct.hci_dev* %149)
  store i32 0, i32* %2, align 4
  br label %151

151:                                              ; preds = %146, %141, %129, %119, %81, %36, %22
  %152 = load i32, i32* %2, align 4
  ret i32 %152
}

declare dso_local i32 @BT_DBG(i8*, i32) #1

declare dso_local %struct.sk_buff* @__hci_cmd_sync(%struct.hci_dev*, i32, i32, i32*, i32) #1

declare dso_local i64 @IS_ERR(%struct.sk_buff*) #1

declare dso_local i32 @bt_dev_err(%struct.hci_dev*, i8*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @btintel_read_version(%struct.hci_dev*, %struct.intel_version*) #1

declare dso_local i32 @bt_dev_info(%struct.hci_dev*, i8*, ...) #1

declare dso_local %struct.firmware* @btusb_setup_intel_get_fw(%struct.hci_dev*, %struct.intel_version*) #1

declare dso_local i32 @btintel_enter_mfg(%struct.hci_dev*) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

declare dso_local i32 @btusb_setup_intel_patching(%struct.hci_dev*, %struct.firmware*, i32**, i32*) #1

declare dso_local i32 @btintel_exit_mfg(%struct.hci_dev*, i32, i32) #1

declare dso_local i32 @btintel_set_event_mask_mfg(%struct.hci_dev*, i32) #1

declare dso_local i32 @btintel_check_bdaddr(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
