; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btusb.c_btusb_send_frame_intel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btusb.c_btusb_send_frame_intel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.sk_buff = type { i64 }
%struct.btusb_data = type { i32 }
%struct.urb = type { i32 }
%struct.hci_command_hdr = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@BTUSB_BOOTLOADER = common dso_local global i32 0, align 4
@SCO_LINK = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EILSEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_dev*, %struct.sk_buff*)* @btusb_send_frame_intel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btusb_send_frame_intel(%struct.hci_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hci_dev*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.btusb_data*, align 8
  %7 = alloca %struct.urb*, align 8
  %8 = alloca %struct.hci_command_hdr*, align 8
  %9 = alloca i32, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %10 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %11 = call %struct.btusb_data* @hci_get_drvdata(%struct.hci_dev* %10)
  store %struct.btusb_data* %11, %struct.btusb_data** %6, align 8
  %12 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %13 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @BT_DBG(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %17 = call i32 @hci_skb_pkt_type(%struct.sk_buff* %16)
  switch i32 %17, label %118 [
    i32 129, label %18
    i32 130, label %72
    i32 128, label %91
  ]

18:                                               ; preds = %2
  %19 = load i32, i32* @BTUSB_BOOTLOADER, align 4
  %20 = load %struct.btusb_data*, %struct.btusb_data** %6, align 8
  %21 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %20, i32 0, i32 0
  %22 = call i32 @test_bit(i32 %19, i32* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %52

24:                                               ; preds = %18
  %25 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %26 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to i8*
  %29 = bitcast i8* %28 to %struct.hci_command_hdr*
  store %struct.hci_command_hdr* %29, %struct.hci_command_hdr** %8, align 8
  %30 = load %struct.hci_command_hdr*, %struct.hci_command_hdr** %8, align 8
  %31 = getelementptr inbounds %struct.hci_command_hdr, %struct.hci_command_hdr* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @le16_to_cpu(i32 %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp eq i32 %34, 64521
  br i1 %35, label %36, label %40

36:                                               ; preds = %24
  %37 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %39 = call %struct.urb* @alloc_bulk_urb(%struct.hci_dev* %37, %struct.sk_buff* %38)
  store %struct.urb* %39, %struct.urb** %7, align 8
  br label %44

40:                                               ; preds = %24
  %41 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %42 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %43 = call %struct.urb* @alloc_ctrl_urb(%struct.hci_dev* %41, %struct.sk_buff* %42)
  store %struct.urb* %43, %struct.urb** %7, align 8
  br label %44

44:                                               ; preds = %40, %36
  %45 = load i32, i32* %9, align 4
  %46 = icmp eq i32 %45, 64513
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @inject_cmd_complete(%struct.hci_dev* %48, i32 %49)
  br label %51

51:                                               ; preds = %47, %44
  br label %56

52:                                               ; preds = %18
  %53 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %54 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %55 = call %struct.urb* @alloc_ctrl_urb(%struct.hci_dev* %53, %struct.sk_buff* %54)
  store %struct.urb* %55, %struct.urb** %7, align 8
  br label %56

56:                                               ; preds = %52, %51
  %57 = load %struct.urb*, %struct.urb** %7, align 8
  %58 = call i32 @IS_ERR(%struct.urb* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  %61 = load %struct.urb*, %struct.urb** %7, align 8
  %62 = call i32 @PTR_ERR(%struct.urb* %61)
  store i32 %62, i32* %3, align 4
  br label %121

63:                                               ; preds = %56
  %64 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %65 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %66, align 4
  %69 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %70 = load %struct.urb*, %struct.urb** %7, align 8
  %71 = call i32 @submit_or_queue_tx_urb(%struct.hci_dev* %69, %struct.urb* %70)
  store i32 %71, i32* %3, align 4
  br label %121

72:                                               ; preds = %2
  %73 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %74 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %75 = call %struct.urb* @alloc_bulk_urb(%struct.hci_dev* %73, %struct.sk_buff* %74)
  store %struct.urb* %75, %struct.urb** %7, align 8
  %76 = load %struct.urb*, %struct.urb** %7, align 8
  %77 = call i32 @IS_ERR(%struct.urb* %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %72
  %80 = load %struct.urb*, %struct.urb** %7, align 8
  %81 = call i32 @PTR_ERR(%struct.urb* %80)
  store i32 %81, i32* %3, align 4
  br label %121

82:                                               ; preds = %72
  %83 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %84 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %85, align 4
  %88 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %89 = load %struct.urb*, %struct.urb** %7, align 8
  %90 = call i32 @submit_or_queue_tx_urb(%struct.hci_dev* %88, %struct.urb* %89)
  store i32 %90, i32* %3, align 4
  br label %121

91:                                               ; preds = %2
  %92 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %93 = load i32, i32* @SCO_LINK, align 4
  %94 = call i32 @hci_conn_num(%struct.hci_dev* %92, i32 %93)
  %95 = icmp slt i32 %94, 1
  br i1 %95, label %96, label %99

96:                                               ; preds = %91
  %97 = load i32, i32* @ENODEV, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %3, align 4
  br label %121

99:                                               ; preds = %91
  %100 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %101 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %102 = call %struct.urb* @alloc_isoc_urb(%struct.hci_dev* %100, %struct.sk_buff* %101)
  store %struct.urb* %102, %struct.urb** %7, align 8
  %103 = load %struct.urb*, %struct.urb** %7, align 8
  %104 = call i32 @IS_ERR(%struct.urb* %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %99
  %107 = load %struct.urb*, %struct.urb** %7, align 8
  %108 = call i32 @PTR_ERR(%struct.urb* %107)
  store i32 %108, i32* %3, align 4
  br label %121

109:                                              ; preds = %99
  %110 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %111 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %112, align 4
  %115 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %116 = load %struct.urb*, %struct.urb** %7, align 8
  %117 = call i32 @submit_tx_urb(%struct.hci_dev* %115, %struct.urb* %116)
  store i32 %117, i32* %3, align 4
  br label %121

118:                                              ; preds = %2
  %119 = load i32, i32* @EILSEQ, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %3, align 4
  br label %121

121:                                              ; preds = %118, %109, %106, %96, %82, %79, %63, %60
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local %struct.btusb_data* @hci_get_drvdata(%struct.hci_dev*) #1

declare dso_local i32 @BT_DBG(i8*, i32) #1

declare dso_local i32 @hci_skb_pkt_type(%struct.sk_buff*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local %struct.urb* @alloc_bulk_urb(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local %struct.urb* @alloc_ctrl_urb(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @inject_cmd_complete(%struct.hci_dev*, i32) #1

declare dso_local i32 @IS_ERR(%struct.urb*) #1

declare dso_local i32 @PTR_ERR(%struct.urb*) #1

declare dso_local i32 @submit_or_queue_tx_urb(%struct.hci_dev*, %struct.urb*) #1

declare dso_local i32 @hci_conn_num(%struct.hci_dev*, i32) #1

declare dso_local %struct.urb* @alloc_isoc_urb(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @submit_tx_urb(%struct.hci_dev*, %struct.urb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
