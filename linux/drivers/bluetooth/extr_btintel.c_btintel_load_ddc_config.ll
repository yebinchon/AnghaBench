; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btintel.c_btintel_load_ddc_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btintel.c_btintel_load_ddc_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.firmware = type { i32, i64* }
%struct.sk_buff = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"Failed to load Intel DDC file %s (%d)\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Found Intel DDC parameters: %s\00", align 1
@HCI_INIT_TIMEOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"Failed to send Intel_Write_DDC (%ld)\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"Applying Intel DDC parameters completed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btintel_load_ddc_config(%struct.hci_dev* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hci_dev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.firmware*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %13 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %12, i32 0, i32 0
  %14 = call i32 @request_firmware_direct(%struct.firmware** %6, i8* %11, i32* %13)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %2
  %18 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = load i32, i32* %9, align 4
  %21 = call i32 (%struct.hci_dev*, i8*, ...) @bt_dev_err(%struct.hci_dev* %18, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8* %19, i32 %20)
  %22 = load i32, i32* %9, align 4
  store i32 %22, i32* %3, align 4
  br label %77

23:                                               ; preds = %2
  %24 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = call i32 (%struct.hci_dev*, i8*, ...) @bt_dev_info(%struct.hci_dev* %24, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %25)
  %27 = load %struct.firmware*, %struct.firmware** %6, align 8
  %28 = getelementptr inbounds %struct.firmware, %struct.firmware* %27, i32 0, i32 1
  %29 = load i64*, i64** %28, align 8
  store i64* %29, i64** %8, align 8
  br label %30

30:                                               ; preds = %66, %23
  %31 = load %struct.firmware*, %struct.firmware** %6, align 8
  %32 = getelementptr inbounds %struct.firmware, %struct.firmware* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sext i32 %33 to i64
  %35 = load i64*, i64** %8, align 8
  %36 = load %struct.firmware*, %struct.firmware** %6, align 8
  %37 = getelementptr inbounds %struct.firmware, %struct.firmware* %36, i32 0, i32 1
  %38 = load i64*, i64** %37, align 8
  %39 = ptrtoint i64* %35 to i64
  %40 = ptrtoint i64* %38 to i64
  %41 = sub i64 %39, %40
  %42 = sdiv exact i64 %41, 8
  %43 = icmp sgt i64 %34, %42
  br i1 %43, label %44, label %72

44:                                               ; preds = %30
  %45 = load i64*, i64** %8, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 0
  %47 = load i64, i64* %46, align 8
  %48 = add i64 %47, 8
  store i64 %48, i64* %10, align 8
  %49 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %50 = load i64, i64* %10, align 8
  %51 = load i64*, i64** %8, align 8
  %52 = load i32, i32* @HCI_INIT_TIMEOUT, align 4
  %53 = call %struct.sk_buff* @__hci_cmd_sync(%struct.hci_dev* %49, i32 64651, i64 %50, i64* %51, i32 %52)
  store %struct.sk_buff* %53, %struct.sk_buff** %7, align 8
  %54 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %55 = call i64 @IS_ERR(%struct.sk_buff* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %44
  %58 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %59 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %60 = call i32 @PTR_ERR(%struct.sk_buff* %59)
  %61 = call i32 (%struct.hci_dev*, i8*, ...) @bt_dev_err(%struct.hci_dev* %58, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  %62 = load %struct.firmware*, %struct.firmware** %6, align 8
  %63 = call i32 @release_firmware(%struct.firmware* %62)
  %64 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %65 = call i32 @PTR_ERR(%struct.sk_buff* %64)
  store i32 %65, i32* %3, align 4
  br label %77

66:                                               ; preds = %44
  %67 = load i64, i64* %10, align 8
  %68 = load i64*, i64** %8, align 8
  %69 = getelementptr inbounds i64, i64* %68, i64 %67
  store i64* %69, i64** %8, align 8
  %70 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %71 = call i32 @kfree_skb(%struct.sk_buff* %70)
  br label %30

72:                                               ; preds = %30
  %73 = load %struct.firmware*, %struct.firmware** %6, align 8
  %74 = call i32 @release_firmware(%struct.firmware* %73)
  %75 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %76 = call i32 (%struct.hci_dev*, i8*, ...) @bt_dev_info(%struct.hci_dev* %75, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %77

77:                                               ; preds = %72, %57, %17
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32 @request_firmware_direct(%struct.firmware**, i8*, i32*) #1

declare dso_local i32 @bt_dev_err(%struct.hci_dev*, i8*, ...) #1

declare dso_local i32 @bt_dev_info(%struct.hci_dev*, i8*, ...) #1

declare dso_local %struct.sk_buff* @__hci_cmd_sync(%struct.hci_dev*, i32, i64, i64*, i32) #1

declare dso_local i64 @IS_ERR(%struct.sk_buff*) #1

declare dso_local i32 @PTR_ERR(%struct.sk_buff*) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
