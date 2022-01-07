; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_mrvl.c_mrvl_recv_chip_ver.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_mrvl.c_mrvl_recv_chip_ver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.sk_buff = type { i64 }
%struct.hci_mrvl_pkt = type { i32, i32 }
%struct.hci_uart = type { %struct.mrvl_data* }
%struct.mrvl_data = type { i32, i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"Corrupted mrvl header\00", align 1
@MRVL_NAK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MRVL_ACK = common dso_local global i32 0, align 4
@STATE_CHIP_VER_PENDING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Received unexpected chip version\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Controller id = %x, rev = %x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_dev*, %struct.sk_buff*)* @mrvl_recv_chip_ver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrvl_recv_chip_ver(%struct.hci_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.hci_mrvl_pkt*, align 8
  %6 = alloca %struct.hci_uart*, align 8
  %7 = alloca %struct.mrvl_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %11 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to i8*
  %14 = bitcast i8* %13 to %struct.hci_mrvl_pkt*
  store %struct.hci_mrvl_pkt* %14, %struct.hci_mrvl_pkt** %5, align 8
  %15 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %16 = call %struct.hci_uart* @hci_get_drvdata(%struct.hci_dev* %15)
  store %struct.hci_uart* %16, %struct.hci_uart** %6, align 8
  %17 = load %struct.hci_uart*, %struct.hci_uart** %6, align 8
  %18 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %17, i32 0, i32 0
  %19 = load %struct.mrvl_data*, %struct.mrvl_data** %18, align 8
  store %struct.mrvl_data* %19, %struct.mrvl_data** %7, align 8
  %20 = load %struct.hci_mrvl_pkt*, %struct.hci_mrvl_pkt** %5, align 8
  %21 = getelementptr inbounds %struct.hci_mrvl_pkt, %struct.hci_mrvl_pkt* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @le16_to_cpu(i32 %22)
  store i32 %23, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %24 = load %struct.hci_mrvl_pkt*, %struct.hci_mrvl_pkt** %5, align 8
  %25 = getelementptr inbounds %struct.hci_mrvl_pkt, %struct.hci_mrvl_pkt* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.hci_mrvl_pkt*, %struct.hci_mrvl_pkt** %5, align 8
  %28 = getelementptr inbounds %struct.hci_mrvl_pkt, %struct.hci_mrvl_pkt* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = xor i32 %26, %29
  %31 = icmp ne i32 %30, 65535
  br i1 %31, label %32, label %40

32:                                               ; preds = %2
  %33 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %34 = call i32 @bt_dev_err(%struct.hci_dev* %33, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %35 = load %struct.hci_uart*, %struct.hci_uart** %6, align 8
  %36 = load i32, i32* @MRVL_NAK, align 4
  %37 = call i32 @mrvl_send_ack(%struct.hci_uart* %35, i32 %36)
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %9, align 4
  br label %77

40:                                               ; preds = %2
  %41 = load %struct.hci_uart*, %struct.hci_uart** %6, align 8
  %42 = load i32, i32* @MRVL_ACK, align 4
  %43 = call i32 @mrvl_send_ack(%struct.hci_uart* %41, i32 %42)
  %44 = load i32, i32* @STATE_CHIP_VER_PENDING, align 4
  %45 = load %struct.mrvl_data*, %struct.mrvl_data** %7, align 8
  %46 = getelementptr inbounds %struct.mrvl_data, %struct.mrvl_data* %45, i32 0, i32 2
  %47 = call i32 @test_bit(i32 %44, i32* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %40
  %50 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %51 = call i32 @bt_dev_err(%struct.hci_dev* %50, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %77

52:                                               ; preds = %40
  %53 = load i32, i32* %8, align 4
  %54 = load %struct.mrvl_data*, %struct.mrvl_data** %7, align 8
  %55 = getelementptr inbounds %struct.mrvl_data, %struct.mrvl_data* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* %8, align 4
  %57 = ashr i32 %56, 8
  %58 = load %struct.mrvl_data*, %struct.mrvl_data** %7, align 8
  %59 = getelementptr inbounds %struct.mrvl_data, %struct.mrvl_data* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %61 = load %struct.mrvl_data*, %struct.mrvl_data** %7, align 8
  %62 = getelementptr inbounds %struct.mrvl_data, %struct.mrvl_data* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.mrvl_data*, %struct.mrvl_data** %7, align 8
  %65 = getelementptr inbounds %struct.mrvl_data, %struct.mrvl_data* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @bt_dev_info(%struct.hci_dev* %60, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %63, i32 %66)
  %68 = load i32, i32* @STATE_CHIP_VER_PENDING, align 4
  %69 = load %struct.mrvl_data*, %struct.mrvl_data** %7, align 8
  %70 = getelementptr inbounds %struct.mrvl_data, %struct.mrvl_data* %69, i32 0, i32 2
  %71 = call i32 @clear_bit(i32 %68, i32* %70)
  %72 = call i32 (...) @smp_mb__after_atomic()
  %73 = load %struct.mrvl_data*, %struct.mrvl_data** %7, align 8
  %74 = getelementptr inbounds %struct.mrvl_data, %struct.mrvl_data* %73, i32 0, i32 2
  %75 = load i32, i32* @STATE_CHIP_VER_PENDING, align 4
  %76 = call i32 @wake_up_bit(i32* %74, i32 %75)
  br label %77

77:                                               ; preds = %52, %49, %32
  %78 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %79 = call i32 @kfree_skb(%struct.sk_buff* %78)
  %80 = load i32, i32* %9, align 4
  ret i32 %80
}

declare dso_local %struct.hci_uart* @hci_get_drvdata(%struct.hci_dev*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @bt_dev_err(%struct.hci_dev*, i8*) #1

declare dso_local i32 @mrvl_send_ack(%struct.hci_uart*, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @bt_dev_info(%struct.hci_dev*, i8*, i32, i32) #1

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
