; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btbcm.c_btbcm_setup_patchram.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btbcm.c_btbcm_setup_patchram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32, i32 }
%struct.firmware = type { i32 }
%struct.sk_buff = type { i64 }

@.str = private unnamed_addr constant [24 x i8] c"BCM: Patch %s not found\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@HCI_QUIRK_STRICT_DUPLICATE_FILTER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btbcm_setup_patchram(%struct.hci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca [64 x i8], align 16
  %5 = alloca %struct.firmware*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  %8 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %9 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %10 = call i32 @btbcm_initialize(%struct.hci_dev* %8, i8* %9, i32 64, i32 0)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %7, align 4
  store i32 %14, i32* %2, align 4
  br label %65

15:                                               ; preds = %1
  %16 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %17 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %18 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %17, i32 0, i32 1
  %19 = call i32 @request_firmware(%struct.firmware** %5, i8* %16, i32* %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %15
  %23 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %24 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %25 = call i32 @bt_dev_info(%struct.hci_dev* %23, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %24)
  br label %58

26:                                               ; preds = %15
  %27 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %28 = load %struct.firmware*, %struct.firmware** %5, align 8
  %29 = call i32 @btbcm_patchram(%struct.hci_dev* %27, %struct.firmware* %28)
  %30 = load %struct.firmware*, %struct.firmware** %5, align 8
  %31 = call i32 @release_firmware(%struct.firmware* %30)
  %32 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %33 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %34 = call i32 @btbcm_initialize(%struct.hci_dev* %32, i8* %33, i32 64, i32 1)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %26
  %38 = load i32, i32* %7, align 4
  store i32 %38, i32* %2, align 4
  br label %65

39:                                               ; preds = %26
  %40 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %41 = call %struct.sk_buff* @btbcm_read_local_name(%struct.hci_dev* %40)
  store %struct.sk_buff* %41, %struct.sk_buff** %6, align 8
  %42 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %43 = call i64 @IS_ERR(%struct.sk_buff* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %47 = call i32 @PTR_ERR(%struct.sk_buff* %46)
  store i32 %47, i32* %2, align 4
  br label %65

48:                                               ; preds = %39
  %49 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %50 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %51 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %52, 1
  %54 = inttoptr i64 %53 to i8*
  %55 = call i32 @bt_dev_info(%struct.hci_dev* %49, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %54)
  %56 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %57 = call i32 @kfree_skb(%struct.sk_buff* %56)
  br label %58

58:                                               ; preds = %48, %22
  %59 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %60 = call i32 @btbcm_check_bdaddr(%struct.hci_dev* %59)
  %61 = load i32, i32* @HCI_QUIRK_STRICT_DUPLICATE_FILTER, align 4
  %62 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %63 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %62, i32 0, i32 0
  %64 = call i32 @set_bit(i32 %61, i32* %63)
  store i32 0, i32* %2, align 4
  br label %65

65:                                               ; preds = %58, %45, %37, %13
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i32 @btbcm_initialize(%struct.hci_dev*, i8*, i32, i32) #1

declare dso_local i32 @request_firmware(%struct.firmware**, i8*, i32*) #1

declare dso_local i32 @bt_dev_info(%struct.hci_dev*, i8*, i8*) #1

declare dso_local i32 @btbcm_patchram(%struct.hci_dev*, %struct.firmware*) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

declare dso_local %struct.sk_buff* @btbcm_read_local_name(%struct.hci_dev*) #1

declare dso_local i64 @IS_ERR(%struct.sk_buff*) #1

declare dso_local i32 @PTR_ERR(%struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @btbcm_check_bdaddr(%struct.hci_dev*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
