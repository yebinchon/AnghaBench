; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_mrvl.c_mrvl_recv_fw_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_mrvl.c_mrvl_recv_fw_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.sk_buff = type { i64 }
%struct.hci_mrvl_pkt = type { i32, i32 }
%struct.hci_uart = type { %struct.mrvl_data* }
%struct.mrvl_data = type { i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"Corrupted mrvl header\00", align 1
@MRVL_NAK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MRVL_ACK = common dso_local global i32 0, align 4
@STATE_FW_REQ_PENDING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Received unexpected firmware request\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_dev*, %struct.sk_buff*)* @mrvl_recv_fw_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrvl_recv_fw_req(%struct.hci_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.hci_mrvl_pkt*, align 8
  %6 = alloca %struct.hci_uart*, align 8
  %7 = alloca %struct.mrvl_data*, align 8
  %8 = alloca i32, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to i8*
  %13 = bitcast i8* %12 to %struct.hci_mrvl_pkt*
  store %struct.hci_mrvl_pkt* %13, %struct.hci_mrvl_pkt** %5, align 8
  %14 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %15 = call %struct.hci_uart* @hci_get_drvdata(%struct.hci_dev* %14)
  store %struct.hci_uart* %15, %struct.hci_uart** %6, align 8
  %16 = load %struct.hci_uart*, %struct.hci_uart** %6, align 8
  %17 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %16, i32 0, i32 0
  %18 = load %struct.mrvl_data*, %struct.mrvl_data** %17, align 8
  store %struct.mrvl_data* %18, %struct.mrvl_data** %7, align 8
  store i32 0, i32* %8, align 4
  %19 = load %struct.hci_mrvl_pkt*, %struct.hci_mrvl_pkt** %5, align 8
  %20 = getelementptr inbounds %struct.hci_mrvl_pkt, %struct.hci_mrvl_pkt* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.hci_mrvl_pkt*, %struct.hci_mrvl_pkt** %5, align 8
  %23 = getelementptr inbounds %struct.hci_mrvl_pkt, %struct.hci_mrvl_pkt* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = xor i32 %21, %24
  %26 = icmp ne i32 %25, 65535
  br i1 %26, label %27, label %35

27:                                               ; preds = %2
  %28 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %29 = call i32 @bt_dev_err(%struct.hci_dev* %28, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.hci_uart*, %struct.hci_uart** %6, align 8
  %31 = load i32, i32* @MRVL_NAK, align 4
  %32 = call i32 @mrvl_send_ack(%struct.hci_uart* %30, i32 %31)
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %8, align 4
  br label %65

35:                                               ; preds = %2
  %36 = load %struct.hci_uart*, %struct.hci_uart** %6, align 8
  %37 = load i32, i32* @MRVL_ACK, align 4
  %38 = call i32 @mrvl_send_ack(%struct.hci_uart* %36, i32 %37)
  %39 = load i32, i32* @STATE_FW_REQ_PENDING, align 4
  %40 = load %struct.mrvl_data*, %struct.mrvl_data** %7, align 8
  %41 = getelementptr inbounds %struct.mrvl_data, %struct.mrvl_data* %40, i32 0, i32 0
  %42 = call i32 @test_bit(i32 %39, i32* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %35
  %45 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %46 = call i32 @bt_dev_err(%struct.hci_dev* %45, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %8, align 4
  br label %65

49:                                               ; preds = %35
  %50 = load %struct.hci_mrvl_pkt*, %struct.hci_mrvl_pkt** %5, align 8
  %51 = getelementptr inbounds %struct.hci_mrvl_pkt, %struct.hci_mrvl_pkt* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @le16_to_cpu(i32 %52)
  %54 = load %struct.mrvl_data*, %struct.mrvl_data** %7, align 8
  %55 = getelementptr inbounds %struct.mrvl_data, %struct.mrvl_data* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* @STATE_FW_REQ_PENDING, align 4
  %57 = load %struct.mrvl_data*, %struct.mrvl_data** %7, align 8
  %58 = getelementptr inbounds %struct.mrvl_data, %struct.mrvl_data* %57, i32 0, i32 0
  %59 = call i32 @clear_bit(i32 %56, i32* %58)
  %60 = call i32 (...) @smp_mb__after_atomic()
  %61 = load %struct.mrvl_data*, %struct.mrvl_data** %7, align 8
  %62 = getelementptr inbounds %struct.mrvl_data, %struct.mrvl_data* %61, i32 0, i32 0
  %63 = load i32, i32* @STATE_FW_REQ_PENDING, align 4
  %64 = call i32 @wake_up_bit(i32* %62, i32 %63)
  br label %65

65:                                               ; preds = %49, %44, %27
  %66 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %67 = call i32 @kfree_skb(%struct.sk_buff* %66)
  %68 = load i32, i32* %8, align 4
  ret i32 %68
}

declare dso_local %struct.hci_uart* @hci_get_drvdata(%struct.hci_dev*) #1

declare dso_local i32 @bt_dev_err(%struct.hci_dev*, i8*) #1

declare dso_local i32 @mrvl_send_ack(%struct.hci_uart*, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @smp_mb__after_atomic(...) #1

declare dso_local i32 @wake_up_bit(i32*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
