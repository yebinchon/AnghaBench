; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btrtl.c_rtl_download_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btrtl.c_rtl_download_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.rtl_download_cmd = type { i32, i32 }
%struct.sk_buff = type { i32, i64 }
%struct.hci_rp_read_local_version = type { i32, i32 }

@RTL_FRAG_LEN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"download fw (%d/%d)\00", align 1
@HCI_INIT_TIMEOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"download fw command failed (%ld)\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"download fw event length mismatch\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"read local version failed\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"fw version 0x%04x%04x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_dev*, i8*, i32)* @rtl_download_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl_download_firmware(%struct.hci_dev* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hci_dev*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.rtl_download_cmd*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.sk_buff*, align 8
  %14 = alloca %struct.hci_rp_read_local_version*, align 8
  %15 = alloca %struct.sk_buff*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @RTL_FRAG_LEN, align 4
  %18 = sdiv i32 %16, %17
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* @RTL_FRAG_LEN, align 4
  store i32 %20, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.rtl_download_cmd* @kmalloc(i32 8, i32 %21)
  store %struct.rtl_download_cmd* %22, %struct.rtl_download_cmd** %8, align 8
  %23 = load %struct.rtl_download_cmd*, %struct.rtl_download_cmd** %8, align 8
  %24 = icmp ne %struct.rtl_download_cmd* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %3
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %141

28:                                               ; preds = %3
  store i32 0, i32* %12, align 4
  br label %29

29:                                               ; preds = %106, %28
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %109

33:                                               ; preds = %29
  %34 = load i32, i32* %12, align 4
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @BT_DBG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %35)
  %37 = load i32, i32* %12, align 4
  %38 = icmp sgt i32 %37, 127
  br i1 %38, label %39, label %45

39:                                               ; preds = %33
  %40 = load i32, i32* %12, align 4
  %41 = and i32 %40, 127
  %42 = add nsw i32 %41, 1
  %43 = load %struct.rtl_download_cmd*, %struct.rtl_download_cmd** %8, align 8
  %44 = getelementptr inbounds %struct.rtl_download_cmd, %struct.rtl_download_cmd* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  br label %49

45:                                               ; preds = %33
  %46 = load i32, i32* %12, align 4
  %47 = load %struct.rtl_download_cmd*, %struct.rtl_download_cmd** %8, align 8
  %48 = getelementptr inbounds %struct.rtl_download_cmd, %struct.rtl_download_cmd* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  br label %49

49:                                               ; preds = %45, %39
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* %9, align 4
  %52 = sub nsw i32 %51, 1
  %53 = icmp eq i32 %50, %52
  br i1 %53, label %54, label %62

54:                                               ; preds = %49
  %55 = load %struct.rtl_download_cmd*, %struct.rtl_download_cmd** %8, align 8
  %56 = getelementptr inbounds %struct.rtl_download_cmd, %struct.rtl_download_cmd* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, 128
  store i32 %58, i32* %56, align 4
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @RTL_FRAG_LEN, align 4
  %61 = srem i32 %59, %60
  store i32 %61, i32* %10, align 4
  br label %62

62:                                               ; preds = %54, %49
  %63 = load %struct.rtl_download_cmd*, %struct.rtl_download_cmd** %8, align 8
  %64 = getelementptr inbounds %struct.rtl_download_cmd, %struct.rtl_download_cmd* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i8*, i8** %6, align 8
  %67 = load i32, i32* %10, align 4
  %68 = call i32 @memcpy(i32 %65, i8* %66, i32 %67)
  %69 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %70 = load i32, i32* %10, align 4
  %71 = add nsw i32 %70, 1
  %72 = load %struct.rtl_download_cmd*, %struct.rtl_download_cmd** %8, align 8
  %73 = load i32, i32* @HCI_INIT_TIMEOUT, align 4
  %74 = call %struct.sk_buff* @__hci_cmd_sync(%struct.hci_dev* %69, i32 64544, i32 %71, %struct.rtl_download_cmd* %72, i32 %73)
  store %struct.sk_buff* %74, %struct.sk_buff** %15, align 8
  %75 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %76 = call i64 @IS_ERR(%struct.sk_buff* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %62
  %79 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %80 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %81 = call i32 @PTR_ERR(%struct.sk_buff* %80)
  %82 = call i32 (%struct.hci_dev*, i8*, ...) @rtl_dev_err(%struct.hci_dev* %79, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %81)
  %83 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %84 = call i32 @PTR_ERR(%struct.sk_buff* %83)
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %11, align 4
  br label %137

86:                                               ; preds = %62
  %87 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %88 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = sext i32 %89 to i64
  %91 = icmp ne i64 %90, 4
  br i1 %91, label %92, label %99

92:                                               ; preds = %86
  %93 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %94 = call i32 (%struct.hci_dev*, i8*, ...) @rtl_dev_err(%struct.hci_dev* %93, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %95 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %96 = call i32 @kfree_skb(%struct.sk_buff* %95)
  %97 = load i32, i32* @EIO, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %11, align 4
  br label %137

99:                                               ; preds = %86
  %100 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %101 = call i32 @kfree_skb(%struct.sk_buff* %100)
  %102 = load i32, i32* @RTL_FRAG_LEN, align 4
  %103 = load i8*, i8** %6, align 8
  %104 = sext i32 %102 to i64
  %105 = getelementptr inbounds i8, i8* %103, i64 %104
  store i8* %105, i8** %6, align 8
  br label %106

106:                                              ; preds = %99
  %107 = load i32, i32* %12, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %12, align 4
  br label %29

109:                                              ; preds = %29
  %110 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %111 = call %struct.sk_buff* @btrtl_read_local_version(%struct.hci_dev* %110)
  store %struct.sk_buff* %111, %struct.sk_buff** %13, align 8
  %112 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %113 = call i64 @IS_ERR(%struct.sk_buff* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %109
  %116 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %117 = call i32 @PTR_ERR(%struct.sk_buff* %116)
  store i32 %117, i32* %11, align 4
  %118 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %119 = call i32 (%struct.hci_dev*, i8*, ...) @rtl_dev_err(%struct.hci_dev* %118, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %137

120:                                              ; preds = %109
  %121 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %122 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = inttoptr i64 %123 to %struct.hci_rp_read_local_version*
  store %struct.hci_rp_read_local_version* %124, %struct.hci_rp_read_local_version** %14, align 8
  %125 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %126 = load %struct.hci_rp_read_local_version*, %struct.hci_rp_read_local_version** %14, align 8
  %127 = getelementptr inbounds %struct.hci_rp_read_local_version, %struct.hci_rp_read_local_version* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @__le16_to_cpu(i32 %128)
  %130 = load %struct.hci_rp_read_local_version*, %struct.hci_rp_read_local_version** %14, align 8
  %131 = getelementptr inbounds %struct.hci_rp_read_local_version, %struct.hci_rp_read_local_version* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @__le16_to_cpu(i32 %132)
  %134 = call i32 @rtl_dev_info(%struct.hci_dev* %125, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %129, i32 %133)
  %135 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %136 = call i32 @kfree_skb(%struct.sk_buff* %135)
  br label %137

137:                                              ; preds = %120, %115, %92, %78
  %138 = load %struct.rtl_download_cmd*, %struct.rtl_download_cmd** %8, align 8
  %139 = call i32 @kfree(%struct.rtl_download_cmd* %138)
  %140 = load i32, i32* %11, align 4
  store i32 %140, i32* %4, align 4
  br label %141

141:                                              ; preds = %137, %25
  %142 = load i32, i32* %4, align 4
  ret i32 %142
}

declare dso_local %struct.rtl_download_cmd* @kmalloc(i32, i32) #1

declare dso_local i32 @BT_DBG(i8*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local %struct.sk_buff* @__hci_cmd_sync(%struct.hci_dev*, i32, i32, %struct.rtl_download_cmd*, i32) #1

declare dso_local i64 @IS_ERR(%struct.sk_buff*) #1

declare dso_local i32 @rtl_dev_err(%struct.hci_dev*, i8*, ...) #1

declare dso_local i32 @PTR_ERR(%struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @btrtl_read_local_version(%struct.hci_dev*) #1

declare dso_local i32 @rtl_dev_info(%struct.hci_dev*, i8*, i32, i32) #1

declare dso_local i32 @__le16_to_cpu(i32) #1

declare dso_local i32 @kfree(%struct.rtl_download_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
