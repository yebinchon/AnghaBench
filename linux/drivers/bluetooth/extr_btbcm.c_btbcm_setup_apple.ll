; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btbcm.c_btbcm_setup_apple.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btbcm.c_btbcm_setup_apple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.sk_buff = type { i8** }

@.str = private unnamed_addr constant [28 x i8] c"BCM: chip id %u build %4.4u\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"BCM: product %4.4x:%4.4x\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"BCM: features 0x%2.2x\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@HCI_QUIRK_STRICT_DUPLICATE_FILTER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btbcm_setup_apple(%struct.hci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  %6 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %7 = call i32 @btbcm_reset(%struct.hci_dev* %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %5, align 4
  store i32 %11, i32* %2, align 4
  br label %93

12:                                               ; preds = %1
  %13 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %14 = call %struct.sk_buff* @btbcm_read_verbose_config(%struct.hci_dev* %13)
  store %struct.sk_buff* %14, %struct.sk_buff** %4, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %16 = call i32 @IS_ERR(%struct.sk_buff* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %33, label %18

18:                                               ; preds = %12
  %19 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 0
  %22 = load i8**, i8*** %21, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 1
  %24 = load i8*, i8** %23, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %26 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %25, i32 0, i32 0
  %27 = load i8**, i8*** %26, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 5
  %29 = call i32 @get_unaligned_le16(i8** %28)
  %30 = call i32 (%struct.hci_dev*, i8*, i8*, ...) @bt_dev_info(%struct.hci_dev* %19, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %24, i32 %29)
  %31 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %32 = call i32 @kfree_skb(%struct.sk_buff* %31)
  br label %33

33:                                               ; preds = %18, %12
  %34 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %35 = call %struct.sk_buff* @btbcm_read_usb_product(%struct.hci_dev* %34)
  store %struct.sk_buff* %35, %struct.sk_buff** %4, align 8
  %36 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %37 = call i32 @IS_ERR(%struct.sk_buff* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %56, label %39

39:                                               ; preds = %33
  %40 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %41 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %42 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %41, i32 0, i32 0
  %43 = load i8**, i8*** %42, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i64 1
  %45 = call i32 @get_unaligned_le16(i8** %44)
  %46 = sext i32 %45 to i64
  %47 = inttoptr i64 %46 to i8*
  %48 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %49 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %48, i32 0, i32 0
  %50 = load i8**, i8*** %49, align 8
  %51 = getelementptr inbounds i8*, i8** %50, i64 3
  %52 = call i32 @get_unaligned_le16(i8** %51)
  %53 = call i32 (%struct.hci_dev*, i8*, i8*, ...) @bt_dev_info(%struct.hci_dev* %40, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %47, i32 %52)
  %54 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %55 = call i32 @kfree_skb(%struct.sk_buff* %54)
  br label %56

56:                                               ; preds = %39, %33
  %57 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %58 = call %struct.sk_buff* @btbcm_read_controller_features(%struct.hci_dev* %57)
  store %struct.sk_buff* %58, %struct.sk_buff** %4, align 8
  %59 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %60 = call i32 @IS_ERR(%struct.sk_buff* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %72, label %62

62:                                               ; preds = %56
  %63 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %64 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %65 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %64, i32 0, i32 0
  %66 = load i8**, i8*** %65, align 8
  %67 = getelementptr inbounds i8*, i8** %66, i64 1
  %68 = load i8*, i8** %67, align 8
  %69 = call i32 (%struct.hci_dev*, i8*, i8*, ...) @bt_dev_info(%struct.hci_dev* %63, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* %68)
  %70 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %71 = call i32 @kfree_skb(%struct.sk_buff* %70)
  br label %72

72:                                               ; preds = %62, %56
  %73 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %74 = call %struct.sk_buff* @btbcm_read_local_name(%struct.hci_dev* %73)
  store %struct.sk_buff* %74, %struct.sk_buff** %4, align 8
  %75 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %76 = call i32 @IS_ERR(%struct.sk_buff* %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %88, label %78

78:                                               ; preds = %72
  %79 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %80 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %81 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %80, i32 0, i32 0
  %82 = load i8**, i8*** %81, align 8
  %83 = getelementptr inbounds i8*, i8** %82, i64 1
  %84 = bitcast i8** %83 to i8*
  %85 = call i32 (%struct.hci_dev*, i8*, i8*, ...) @bt_dev_info(%struct.hci_dev* %79, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %84)
  %86 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %87 = call i32 @kfree_skb(%struct.sk_buff* %86)
  br label %88

88:                                               ; preds = %78, %72
  %89 = load i32, i32* @HCI_QUIRK_STRICT_DUPLICATE_FILTER, align 4
  %90 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %91 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %90, i32 0, i32 0
  %92 = call i32 @set_bit(i32 %89, i32* %91)
  store i32 0, i32* %2, align 4
  br label %93

93:                                               ; preds = %88, %10
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local i32 @btbcm_reset(%struct.hci_dev*) #1

declare dso_local %struct.sk_buff* @btbcm_read_verbose_config(%struct.hci_dev*) #1

declare dso_local i32 @IS_ERR(%struct.sk_buff*) #1

declare dso_local i32 @bt_dev_info(%struct.hci_dev*, i8*, i8*, ...) #1

declare dso_local i32 @get_unaligned_le16(i8**) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @btbcm_read_usb_product(%struct.hci_dev*) #1

declare dso_local %struct.sk_buff* @btbcm_read_controller_features(%struct.hci_dev*) #1

declare dso_local %struct.sk_buff* @btbcm_read_local_name(%struct.hci_dev*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
