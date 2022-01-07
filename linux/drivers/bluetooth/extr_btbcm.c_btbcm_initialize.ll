; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btbcm.c_btbcm_initialize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btbcm.c_btbcm_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_subver_table = type { i8*, i32 }
%struct.hci_dev = type { i64 }
%struct.sk_buff = type { i64 }
%struct.hci_rp_read_local_version = type { i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"BCM\00", align 1
@HCI_USB = common dso_local global i64 0, align 8
@bcm_usb_subver_table = common dso_local global %struct.bcm_subver_table* null, align 8
@bcm_uart_subver_table = common dso_local global %struct.bcm_subver_table* null, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"brcm/%s-%4.4x-%4.4x.hcd\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"brcm/%s.hcd\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"%s (%3.3u.%3.3u.%3.3u) build %4.4u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btbcm_initialize(%struct.hci_dev* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hci_dev*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca %struct.sk_buff*, align 8
  %16 = alloca %struct.hci_rp_read_local_version*, align 8
  %17 = alloca %struct.bcm_subver_table*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %14, align 8
  %20 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %21 = call i32 @btbcm_reset(%struct.hci_dev* %20)
  store i32 %21, i32* %19, align 4
  %22 = load i32, i32* %19, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = load i32, i32* %19, align 4
  store i32 %25, i32* %5, align 4
  br label %159

26:                                               ; preds = %4
  %27 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %28 = call %struct.sk_buff* @btbcm_read_local_version(%struct.hci_dev* %27)
  store %struct.sk_buff* %28, %struct.sk_buff** %15, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %30 = call i64 @IS_ERR(%struct.sk_buff* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %34 = call i32 @PTR_ERR(%struct.sk_buff* %33)
  store i32 %34, i32* %5, align 4
  br label %159

35:                                               ; preds = %26
  %36 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %37 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to %struct.hci_rp_read_local_version*
  store %struct.hci_rp_read_local_version* %39, %struct.hci_rp_read_local_version** %16, align 8
  %40 = load %struct.hci_rp_read_local_version*, %struct.hci_rp_read_local_version** %16, align 8
  %41 = getelementptr inbounds %struct.hci_rp_read_local_version, %struct.hci_rp_read_local_version* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @le16_to_cpu(i32 %42)
  store i32 %43, i32* %11, align 4
  %44 = load %struct.hci_rp_read_local_version*, %struct.hci_rp_read_local_version** %16, align 8
  %45 = getelementptr inbounds %struct.hci_rp_read_local_version, %struct.hci_rp_read_local_version* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @le16_to_cpu(i32 %46)
  store i32 %47, i32* %10, align 4
  %48 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %49 = call i32 @kfree_skb(%struct.sk_buff* %48)
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %60, label %52

52:                                               ; preds = %35
  %53 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %54 = call i32 @btbcm_read_info(%struct.hci_dev* %53)
  store i32 %54, i32* %19, align 4
  %55 = load i32, i32* %19, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = load i32, i32* %19, align 4
  store i32 %58, i32* %5, align 4
  br label %159

59:                                               ; preds = %52
  br label %60

60:                                               ; preds = %59, %35
  %61 = load i32, i32* %11, align 4
  %62 = and i32 %61, 61440
  %63 = ashr i32 %62, 12
  %64 = icmp sgt i32 %63, 3
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  store i32 0, i32* %5, align 4
  br label %159

66:                                               ; preds = %60
  %67 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %68 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @HCI_USB, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %66
  %73 = load %struct.bcm_subver_table*, %struct.bcm_subver_table** @bcm_usb_subver_table, align 8
  br label %76

74:                                               ; preds = %66
  %75 = load %struct.bcm_subver_table*, %struct.bcm_subver_table** @bcm_uart_subver_table, align 8
  br label %76

76:                                               ; preds = %74, %72
  %77 = phi %struct.bcm_subver_table* [ %73, %72 ], [ %75, %74 ]
  store %struct.bcm_subver_table* %77, %struct.bcm_subver_table** %17, align 8
  store i32 0, i32* %18, align 4
  br label %78

78:                                               ; preds = %103, %76
  %79 = load %struct.bcm_subver_table*, %struct.bcm_subver_table** %17, align 8
  %80 = load i32, i32* %18, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.bcm_subver_table, %struct.bcm_subver_table* %79, i64 %81
  %83 = getelementptr inbounds %struct.bcm_subver_table, %struct.bcm_subver_table* %82, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %86, label %106

86:                                               ; preds = %78
  %87 = load i32, i32* %10, align 4
  %88 = load %struct.bcm_subver_table*, %struct.bcm_subver_table** %17, align 8
  %89 = load i32, i32* %18, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.bcm_subver_table, %struct.bcm_subver_table* %88, i64 %90
  %92 = getelementptr inbounds %struct.bcm_subver_table, %struct.bcm_subver_table* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = icmp eq i32 %87, %93
  br i1 %94, label %95, label %102

95:                                               ; preds = %86
  %96 = load %struct.bcm_subver_table*, %struct.bcm_subver_table** %17, align 8
  %97 = load i32, i32* %18, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.bcm_subver_table, %struct.bcm_subver_table* %96, i64 %98
  %100 = getelementptr inbounds %struct.bcm_subver_table, %struct.bcm_subver_table* %99, i32 0, i32 0
  %101 = load i8*, i8** %100, align 8
  store i8* %101, i8** %14, align 8
  br label %106

102:                                              ; preds = %86
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %18, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %18, align 4
  br label %78

106:                                              ; preds = %95, %78
  %107 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %108 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @HCI_USB, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %140

112:                                              ; preds = %106
  %113 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %114 = call %struct.sk_buff* @btbcm_read_usb_product(%struct.hci_dev* %113)
  store %struct.sk_buff* %114, %struct.sk_buff** %15, align 8
  %115 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %116 = call i64 @IS_ERR(%struct.sk_buff* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %112
  %119 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %120 = call i32 @PTR_ERR(%struct.sk_buff* %119)
  store i32 %120, i32* %5, align 4
  br label %159

121:                                              ; preds = %112
  %122 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %123 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = add nsw i64 %124, 1
  %126 = call i32 @get_unaligned_le16(i64 %125)
  store i32 %126, i32* %13, align 4
  %127 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %128 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = add nsw i64 %129, 3
  %131 = call i32 @get_unaligned_le16(i64 %130)
  store i32 %131, i32* %12, align 4
  %132 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %133 = call i32 @kfree_skb(%struct.sk_buff* %132)
  %134 = load i8*, i8** %7, align 8
  %135 = load i64, i64* %8, align 8
  %136 = load i8*, i8** %14, align 8
  %137 = load i32, i32* %13, align 4
  %138 = load i32, i32* %12, align 4
  %139 = call i32 (i8*, i64, i8*, i8*, ...) @snprintf(i8* %134, i64 %135, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %136, i32 %137, i32 %138)
  br label %145

140:                                              ; preds = %106
  %141 = load i8*, i8** %7, align 8
  %142 = load i64, i64* %8, align 8
  %143 = load i8*, i8** %14, align 8
  %144 = call i32 (i8*, i64, i8*, i8*, ...) @snprintf(i8* %141, i64 %142, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* %143)
  br label %145

145:                                              ; preds = %140, %121
  %146 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %147 = load i8*, i8** %14, align 8
  %148 = load i32, i32* %10, align 4
  %149 = and i32 %148, 57344
  %150 = ashr i32 %149, 13
  %151 = load i32, i32* %10, align 4
  %152 = and i32 %151, 7936
  %153 = ashr i32 %152, 8
  %154 = load i32, i32* %10, align 4
  %155 = and i32 %154, 255
  %156 = load i32, i32* %11, align 4
  %157 = and i32 %156, 4095
  %158 = call i32 @bt_dev_info(%struct.hci_dev* %146, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i8* %147, i32 %150, i32 %153, i32 %155, i32 %157)
  store i32 0, i32* %5, align 4
  br label %159

159:                                              ; preds = %145, %118, %65, %57, %32, %24
  %160 = load i32, i32* %5, align 4
  ret i32 %160
}

declare dso_local i32 @btbcm_reset(%struct.hci_dev*) #1

declare dso_local %struct.sk_buff* @btbcm_read_local_version(%struct.hci_dev*) #1

declare dso_local i64 @IS_ERR(%struct.sk_buff*) #1

declare dso_local i32 @PTR_ERR(%struct.sk_buff*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @btbcm_read_info(%struct.hci_dev*) #1

declare dso_local %struct.sk_buff* @btbcm_read_usb_product(%struct.hci_dev*) #1

declare dso_local i32 @get_unaligned_le16(i64) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*, ...) #1

declare dso_local i32 @bt_dev_info(%struct.hci_dev*, i8*, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
