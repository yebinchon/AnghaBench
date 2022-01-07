; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btmtkuart.c_btmtkuart_recv_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btmtkuart.c_btmtkuart_recv_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.sk_buff = type { i64 }
%struct.btmtkuart_dev = type { i32*, i32 }
%struct.hci_event_hdr = type { i32 }

@HCI_EV_VENDOR = common dso_local global i32 0, align 4
@BTMTKUART_TX_WAIT_VND_EVT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_dev*, %struct.sk_buff*)* @btmtkuart_recv_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btmtkuart_recv_event(%struct.hci_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hci_dev*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.btmtkuart_dev*, align 8
  %7 = alloca %struct.hci_event_hdr*, align 8
  %8 = alloca i32, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %9 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %10 = call %struct.btmtkuart_dev* @hci_get_drvdata(%struct.hci_dev* %9)
  store %struct.btmtkuart_dev* %10, %struct.btmtkuart_dev** %6, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to i8*
  %15 = bitcast i8* %14 to %struct.hci_event_hdr*
  store %struct.hci_event_hdr* %15, %struct.hci_event_hdr** %7, align 8
  %16 = load %struct.hci_event_hdr*, %struct.hci_event_hdr** %7, align 8
  %17 = getelementptr inbounds %struct.hci_event_hdr, %struct.hci_event_hdr* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, 228
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load i32, i32* @HCI_EV_VENDOR, align 4
  %22 = load %struct.hci_event_hdr*, %struct.hci_event_hdr** %7, align 8
  %23 = getelementptr inbounds %struct.hci_event_hdr, %struct.hci_event_hdr* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  br label %24

24:                                               ; preds = %20, %2
  %25 = load i32, i32* @BTMTKUART_TX_WAIT_VND_EVT, align 4
  %26 = load %struct.btmtkuart_dev*, %struct.btmtkuart_dev** %6, align 8
  %27 = getelementptr inbounds %struct.btmtkuart_dev, %struct.btmtkuart_dev* %26, i32 0, i32 1
  %28 = call i64 @test_bit(i32 %25, i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %44

30:                                               ; preds = %24
  %31 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call i32* @skb_clone(%struct.sk_buff* %31, i32 %32)
  %34 = load %struct.btmtkuart_dev*, %struct.btmtkuart_dev** %6, align 8
  %35 = getelementptr inbounds %struct.btmtkuart_dev, %struct.btmtkuart_dev* %34, i32 0, i32 0
  store i32* %33, i32** %35, align 8
  %36 = load %struct.btmtkuart_dev*, %struct.btmtkuart_dev** %6, align 8
  %37 = getelementptr inbounds %struct.btmtkuart_dev, %struct.btmtkuart_dev* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %30
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %8, align 4
  br label %78

43:                                               ; preds = %30
  br label %44

44:                                               ; preds = %43, %24
  %45 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %47 = call i32 @hci_recv_frame(%struct.hci_dev* %45, %struct.sk_buff* %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  br label %71

51:                                               ; preds = %44
  %52 = load %struct.hci_event_hdr*, %struct.hci_event_hdr** %7, align 8
  %53 = getelementptr inbounds %struct.hci_event_hdr, %struct.hci_event_hdr* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @HCI_EV_VENDOR, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %70

57:                                               ; preds = %51
  %58 = load i32, i32* @BTMTKUART_TX_WAIT_VND_EVT, align 4
  %59 = load %struct.btmtkuart_dev*, %struct.btmtkuart_dev** %6, align 8
  %60 = getelementptr inbounds %struct.btmtkuart_dev, %struct.btmtkuart_dev* %59, i32 0, i32 1
  %61 = call i64 @test_and_clear_bit(i32 %58, i32* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %57
  %64 = call i32 (...) @smp_mb__after_atomic()
  %65 = load %struct.btmtkuart_dev*, %struct.btmtkuart_dev** %6, align 8
  %66 = getelementptr inbounds %struct.btmtkuart_dev, %struct.btmtkuart_dev* %65, i32 0, i32 1
  %67 = load i32, i32* @BTMTKUART_TX_WAIT_VND_EVT, align 4
  %68 = call i32 @wake_up_bit(i32* %66, i32 %67)
  br label %69

69:                                               ; preds = %63, %57
  br label %70

70:                                               ; preds = %69, %51
  store i32 0, i32* %3, align 4
  br label %80

71:                                               ; preds = %50
  %72 = load %struct.btmtkuart_dev*, %struct.btmtkuart_dev** %6, align 8
  %73 = getelementptr inbounds %struct.btmtkuart_dev, %struct.btmtkuart_dev* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = call i32 @kfree_skb(i32* %74)
  %76 = load %struct.btmtkuart_dev*, %struct.btmtkuart_dev** %6, align 8
  %77 = getelementptr inbounds %struct.btmtkuart_dev, %struct.btmtkuart_dev* %76, i32 0, i32 0
  store i32* null, i32** %77, align 8
  br label %78

78:                                               ; preds = %71, %40
  %79 = load i32, i32* %8, align 4
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %78, %70
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local %struct.btmtkuart_dev* @hci_get_drvdata(%struct.hci_dev*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32* @skb_clone(%struct.sk_buff*, i32) #1

declare dso_local i32 @hci_recv_frame(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @smp_mb__after_atomic(...) #1

declare dso_local i32 @wake_up_bit(i32*, i32) #1

declare dso_local i32 @kfree_skb(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
