; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btbcm.c_btbcm_patchram.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btbcm.c_btbcm_patchram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.firmware = type { i64, i32* }
%struct.hci_command_hdr = type { i64, i32 }
%struct.sk_buff = type { i32 }

@HCI_INIT_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"BCM: Download Minidrv command failed (%d)\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"BCM: Patch is corrupted\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"BCM: Patch command %04x failed (%d)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btbcm_patchram(%struct.hci_dev* %0, %struct.firmware* %1) #0 {
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca %struct.firmware*, align 8
  %5 = alloca %struct.hci_command_hdr*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  store %struct.firmware* %1, %struct.firmware** %4, align 8
  store i32 0, i32* %10, align 4
  %12 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %13 = load i32, i32* @HCI_INIT_TIMEOUT, align 4
  %14 = call %struct.sk_buff* @__hci_cmd_sync(%struct.hci_dev* %12, i32 64558, i64 0, i32* null, i32 %13)
  store %struct.sk_buff* %14, %struct.sk_buff** %8, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %16 = call i64 @IS_ERR(%struct.sk_buff* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %20 = call i32 @PTR_ERR(%struct.sk_buff* %19)
  store i32 %20, i32* %10, align 4
  %21 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %22 = load i32, i32* %10, align 4
  %23 = call i32 (%struct.hci_dev*, i8*, ...) @bt_dev_err(%struct.hci_dev* %21, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %93

24:                                               ; preds = %2
  %25 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %26 = call i32 @kfree_skb(%struct.sk_buff* %25)
  %27 = call i32 @msleep(i32 50)
  %28 = load %struct.firmware*, %struct.firmware** %4, align 8
  %29 = getelementptr inbounds %struct.firmware, %struct.firmware* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  store i32* %30, i32** %6, align 8
  %31 = load %struct.firmware*, %struct.firmware** %4, align 8
  %32 = getelementptr inbounds %struct.firmware, %struct.firmware* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %7, align 8
  br label %34

34:                                               ; preds = %88, %24
  %35 = load i64, i64* %7, align 8
  %36 = icmp uge i64 %35, 16
  br i1 %36, label %37, label %91

37:                                               ; preds = %34
  %38 = load i32*, i32** %6, align 8
  %39 = bitcast i32* %38 to %struct.hci_command_hdr*
  store %struct.hci_command_hdr* %39, %struct.hci_command_hdr** %5, align 8
  %40 = load i32*, i32** %6, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 16
  store i32* %41, i32** %6, align 8
  %42 = load i64, i64* %7, align 8
  %43 = sub i64 %42, 16
  store i64 %43, i64* %7, align 8
  %44 = load i64, i64* %7, align 8
  %45 = load %struct.hci_command_hdr*, %struct.hci_command_hdr** %5, align 8
  %46 = getelementptr inbounds %struct.hci_command_hdr, %struct.hci_command_hdr* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ult i64 %44, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %37
  %50 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %51 = call i32 (%struct.hci_dev*, i8*, ...) @bt_dev_err(%struct.hci_dev* %50, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %10, align 4
  br label %93

54:                                               ; preds = %37
  %55 = load i32*, i32** %6, align 8
  store i32* %55, i32** %11, align 8
  %56 = load %struct.hci_command_hdr*, %struct.hci_command_hdr** %5, align 8
  %57 = getelementptr inbounds %struct.hci_command_hdr, %struct.hci_command_hdr* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i32*, i32** %6, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 %58
  store i32* %60, i32** %6, align 8
  %61 = load %struct.hci_command_hdr*, %struct.hci_command_hdr** %5, align 8
  %62 = getelementptr inbounds %struct.hci_command_hdr, %struct.hci_command_hdr* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* %7, align 8
  %65 = sub i64 %64, %63
  store i64 %65, i64* %7, align 8
  %66 = load %struct.hci_command_hdr*, %struct.hci_command_hdr** %5, align 8
  %67 = getelementptr inbounds %struct.hci_command_hdr, %struct.hci_command_hdr* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @le16_to_cpu(i32 %68)
  store i32 %69, i32* %9, align 4
  %70 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %71 = load i32, i32* %9, align 4
  %72 = load %struct.hci_command_hdr*, %struct.hci_command_hdr** %5, align 8
  %73 = getelementptr inbounds %struct.hci_command_hdr, %struct.hci_command_hdr* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i32*, i32** %11, align 8
  %76 = load i32, i32* @HCI_INIT_TIMEOUT, align 4
  %77 = call %struct.sk_buff* @__hci_cmd_sync(%struct.hci_dev* %70, i32 %71, i64 %74, i32* %75, i32 %76)
  store %struct.sk_buff* %77, %struct.sk_buff** %8, align 8
  %78 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %79 = call i64 @IS_ERR(%struct.sk_buff* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %54
  %82 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %83 = call i32 @PTR_ERR(%struct.sk_buff* %82)
  store i32 %83, i32* %10, align 4
  %84 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* %10, align 4
  %87 = call i32 (%struct.hci_dev*, i8*, ...) @bt_dev_err(%struct.hci_dev* %84, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %85, i32 %86)
  br label %93

88:                                               ; preds = %54
  %89 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %90 = call i32 @kfree_skb(%struct.sk_buff* %89)
  br label %34

91:                                               ; preds = %34
  %92 = call i32 @msleep(i32 250)
  br label %93

93:                                               ; preds = %91, %81, %49, %18
  %94 = load i32, i32* %10, align 4
  ret i32 %94
}

declare dso_local %struct.sk_buff* @__hci_cmd_sync(%struct.hci_dev*, i32, i64, i32*, i32) #1

declare dso_local i64 @IS_ERR(%struct.sk_buff*) #1

declare dso_local i32 @PTR_ERR(%struct.sk_buff*) #1

declare dso_local i32 @bt_dev_err(%struct.hci_dev*, i8*, ...) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
