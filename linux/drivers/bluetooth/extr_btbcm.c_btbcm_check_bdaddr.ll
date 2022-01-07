; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btbcm.c_btbcm_check_bdaddr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btbcm.c_btbcm_check_bdaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.hci_rp_read_bd_addr = type { i32 }
%struct.sk_buff = type { i32, i64 }

@HCI_OP_READ_BD_ADDR = common dso_local global i32 0, align 4
@HCI_INIT_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"BCM: Reading device address failed (%d)\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"BCM: Device address length mismatch\00", align 1
@EIO = common dso_local global i32 0, align 4
@BDADDR_BCM20702A0 = common dso_local global i32 0, align 4
@BDADDR_BCM20702A1 = common dso_local global i32 0, align 4
@BDADDR_BCM2076B1 = common dso_local global i32 0, align 4
@BDADDR_BCM4324B3 = common dso_local global i32 0, align 4
@BDADDR_BCM4330B1 = common dso_local global i32 0, align 4
@BDADDR_BCM4345C5 = common dso_local global i32 0, align 4
@BDADDR_BCM43430A0 = common dso_local global i32 0, align 4
@BDADDR_BCM43341B = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"BCM: Using default device address (%pMR)\00", align 1
@HCI_QUIRK_INVALID_BDADDR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btbcm_check_bdaddr(%struct.hci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca %struct.hci_rp_read_bd_addr*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  %7 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %8 = load i32, i32* @HCI_OP_READ_BD_ADDR, align 4
  %9 = load i32, i32* @HCI_INIT_TIMEOUT, align 4
  %10 = call %struct.sk_buff* @__hci_cmd_sync(%struct.hci_dev* %7, i32 %8, i32 0, i32* null, i32 %9)
  store %struct.sk_buff* %10, %struct.sk_buff** %5, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %12 = call i64 @IS_ERR(%struct.sk_buff* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %1
  %15 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %16 = call i32 @PTR_ERR(%struct.sk_buff* %15)
  store i32 %16, i32* %6, align 4
  %17 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 (%struct.hci_dev*, i8*, ...) @bt_dev_err(%struct.hci_dev* %17, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %2, align 4
  br label %98

21:                                               ; preds = %1
  %22 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = icmp ne i64 %25, 4
  br i1 %26, label %27, label %34

27:                                               ; preds = %21
  %28 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %29 = call i32 (%struct.hci_dev*, i8*, ...) @bt_dev_err(%struct.hci_dev* %28, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %30 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %31 = call i32 @kfree_skb(%struct.sk_buff* %30)
  %32 = load i32, i32* @EIO, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %98

34:                                               ; preds = %21
  %35 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %36 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to %struct.hci_rp_read_bd_addr*
  store %struct.hci_rp_read_bd_addr* %38, %struct.hci_rp_read_bd_addr** %4, align 8
  %39 = load %struct.hci_rp_read_bd_addr*, %struct.hci_rp_read_bd_addr** %4, align 8
  %40 = getelementptr inbounds %struct.hci_rp_read_bd_addr, %struct.hci_rp_read_bd_addr* %39, i32 0, i32 0
  %41 = load i32, i32* @BDADDR_BCM20702A0, align 4
  %42 = call i32 @bacmp(i32* %40, i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %86

44:                                               ; preds = %34
  %45 = load %struct.hci_rp_read_bd_addr*, %struct.hci_rp_read_bd_addr** %4, align 8
  %46 = getelementptr inbounds %struct.hci_rp_read_bd_addr, %struct.hci_rp_read_bd_addr* %45, i32 0, i32 0
  %47 = load i32, i32* @BDADDR_BCM20702A1, align 4
  %48 = call i32 @bacmp(i32* %46, i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %86

50:                                               ; preds = %44
  %51 = load %struct.hci_rp_read_bd_addr*, %struct.hci_rp_read_bd_addr** %4, align 8
  %52 = getelementptr inbounds %struct.hci_rp_read_bd_addr, %struct.hci_rp_read_bd_addr* %51, i32 0, i32 0
  %53 = load i32, i32* @BDADDR_BCM2076B1, align 4
  %54 = call i32 @bacmp(i32* %52, i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %86

56:                                               ; preds = %50
  %57 = load %struct.hci_rp_read_bd_addr*, %struct.hci_rp_read_bd_addr** %4, align 8
  %58 = getelementptr inbounds %struct.hci_rp_read_bd_addr, %struct.hci_rp_read_bd_addr* %57, i32 0, i32 0
  %59 = load i32, i32* @BDADDR_BCM4324B3, align 4
  %60 = call i32 @bacmp(i32* %58, i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %86

62:                                               ; preds = %56
  %63 = load %struct.hci_rp_read_bd_addr*, %struct.hci_rp_read_bd_addr** %4, align 8
  %64 = getelementptr inbounds %struct.hci_rp_read_bd_addr, %struct.hci_rp_read_bd_addr* %63, i32 0, i32 0
  %65 = load i32, i32* @BDADDR_BCM4330B1, align 4
  %66 = call i32 @bacmp(i32* %64, i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %86

68:                                               ; preds = %62
  %69 = load %struct.hci_rp_read_bd_addr*, %struct.hci_rp_read_bd_addr** %4, align 8
  %70 = getelementptr inbounds %struct.hci_rp_read_bd_addr, %struct.hci_rp_read_bd_addr* %69, i32 0, i32 0
  %71 = load i32, i32* @BDADDR_BCM4345C5, align 4
  %72 = call i32 @bacmp(i32* %70, i32 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %86

74:                                               ; preds = %68
  %75 = load %struct.hci_rp_read_bd_addr*, %struct.hci_rp_read_bd_addr** %4, align 8
  %76 = getelementptr inbounds %struct.hci_rp_read_bd_addr, %struct.hci_rp_read_bd_addr* %75, i32 0, i32 0
  %77 = load i32, i32* @BDADDR_BCM43430A0, align 4
  %78 = call i32 @bacmp(i32* %76, i32 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %74
  %81 = load %struct.hci_rp_read_bd_addr*, %struct.hci_rp_read_bd_addr** %4, align 8
  %82 = getelementptr inbounds %struct.hci_rp_read_bd_addr, %struct.hci_rp_read_bd_addr* %81, i32 0, i32 0
  %83 = load i32, i32* @BDADDR_BCM43341B, align 4
  %84 = call i32 @bacmp(i32* %82, i32 %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %95, label %86

86:                                               ; preds = %80, %74, %68, %62, %56, %50, %44, %34
  %87 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %88 = load %struct.hci_rp_read_bd_addr*, %struct.hci_rp_read_bd_addr** %4, align 8
  %89 = getelementptr inbounds %struct.hci_rp_read_bd_addr, %struct.hci_rp_read_bd_addr* %88, i32 0, i32 0
  %90 = call i32 @bt_dev_info(%struct.hci_dev* %87, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32* %89)
  %91 = load i32, i32* @HCI_QUIRK_INVALID_BDADDR, align 4
  %92 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %93 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %92, i32 0, i32 0
  %94 = call i32 @set_bit(i32 %91, i32* %93)
  br label %95

95:                                               ; preds = %86, %80
  %96 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %97 = call i32 @kfree_skb(%struct.sk_buff* %96)
  store i32 0, i32* %2, align 4
  br label %98

98:                                               ; preds = %95, %27, %14
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local %struct.sk_buff* @__hci_cmd_sync(%struct.hci_dev*, i32, i32, i32*, i32) #1

declare dso_local i64 @IS_ERR(%struct.sk_buff*) #1

declare dso_local i32 @PTR_ERR(%struct.sk_buff*) #1

declare dso_local i32 @bt_dev_err(%struct.hci_dev*, i8*, ...) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @bacmp(i32*, i32) #1

declare dso_local i32 @bt_dev_info(%struct.hci_dev*, i8*, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
