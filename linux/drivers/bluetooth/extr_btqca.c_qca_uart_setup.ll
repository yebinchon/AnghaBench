; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btqca.c_qca_uart_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btqca.c_qca_uart_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.rome_config = type { i32, i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"QCA setup on UART\00", align 1
@TLV_TYPE_PATCH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"qca/crbtfw%02x.tlv\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"qca/rampatch_%08x.bin\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"QCA Failed to download patch (%d)\00", align 1
@TLV_TYPE_NVM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"qca/%s\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"qca/crnv%02x.bin\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"qca/nvm_%08x.bin\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"QCA Failed to download NVM (%d)\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"QCA Failed to run HCI_RESET (%d)\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"QCA setup on UART is completed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qca_uart_setup(%struct.hci_dev* %0, i32 %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.hci_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.rome_config, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i32 0, i32* %14, align 4
  %15 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %16 = call i32 @bt_dev_dbg(%struct.hci_dev* %15, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* %8, align 4
  %18 = getelementptr inbounds %struct.rome_config, %struct.rome_config* %12, i32 0, i32 2
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* @TLV_TYPE_PATCH, align 4
  %20 = getelementptr inbounds %struct.rome_config, %struct.rome_config* %12, i32 0, i32 1
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* %9, align 4
  %22 = call i64 @qca_is_wcn399x(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %5
  %25 = load i32, i32* %10, align 4
  %26 = and i32 %25, 3840
  %27 = ashr i32 %26, 4
  %28 = load i32, i32* %10, align 4
  %29 = and i32 %28, 15
  %30 = or i32 %27, %29
  store i32 %30, i32* %14, align 4
  %31 = getelementptr inbounds %struct.rome_config, %struct.rome_config* %12, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %14, align 4
  %34 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %32, i32 4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  br label %40

35:                                               ; preds = %5
  %36 = getelementptr inbounds %struct.rome_config, %struct.rome_config* %12, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %10, align 4
  %39 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %37, i32 4, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %38)
  br label %40

40:                                               ; preds = %35, %24
  %41 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %42 = call i32 @qca_download_firmware(%struct.hci_dev* %41, %struct.rome_config* %12)
  store i32 %42, i32* %13, align 4
  %43 = load i32, i32* %13, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %47 = load i32, i32* %13, align 4
  %48 = call i32 @bt_dev_err(%struct.hci_dev* %46, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* %13, align 4
  store i32 %49, i32* %6, align 4
  br label %99

50:                                               ; preds = %40
  %51 = call i32 @msleep(i32 10)
  %52 = load i32, i32* @TLV_TYPE_NVM, align 4
  %53 = getelementptr inbounds %struct.rome_config, %struct.rome_config* %12, i32 0, i32 1
  store i32 %52, i32* %53, align 4
  %54 = load i8*, i8** %11, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %61

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct.rome_config, %struct.rome_config* %12, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i8*, i8** %11, align 8
  %60 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %58, i32 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* %59)
  br label %76

61:                                               ; preds = %50
  %62 = load i32, i32* %9, align 4
  %63 = call i64 @qca_is_wcn399x(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.rome_config, %struct.rome_config* %12, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %14, align 4
  %69 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %67, i32 4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 %68)
  br label %75

70:                                               ; preds = %61
  %71 = getelementptr inbounds %struct.rome_config, %struct.rome_config* %12, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %10, align 4
  %74 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %72, i32 4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32 %73)
  br label %75

75:                                               ; preds = %70, %65
  br label %76

76:                                               ; preds = %75, %56
  %77 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %78 = call i32 @qca_download_firmware(%struct.hci_dev* %77, %struct.rome_config* %12)
  store i32 %78, i32* %13, align 4
  %79 = load i32, i32* %13, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %76
  %82 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %83 = load i32, i32* %13, align 4
  %84 = call i32 @bt_dev_err(%struct.hci_dev* %82, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* %13, align 4
  store i32 %85, i32* %6, align 4
  br label %99

86:                                               ; preds = %76
  %87 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %88 = call i32 @qca_send_reset(%struct.hci_dev* %87)
  store i32 %88, i32* %13, align 4
  %89 = load i32, i32* %13, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %86
  %92 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %93 = load i32, i32* %13, align 4
  %94 = call i32 @bt_dev_err(%struct.hci_dev* %92, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0), i32 %93)
  %95 = load i32, i32* %13, align 4
  store i32 %95, i32* %6, align 4
  br label %99

96:                                               ; preds = %86
  %97 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %98 = call i32 @bt_dev_info(%struct.hci_dev* %97, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %99

99:                                               ; preds = %96, %91, %81, %45
  %100 = load i32, i32* %6, align 4
  ret i32 %100
}

declare dso_local i32 @bt_dev_dbg(%struct.hci_dev*, i8*) #1

declare dso_local i64 @qca_is_wcn399x(i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, ...) #1

declare dso_local i32 @qca_download_firmware(%struct.hci_dev*, %struct.rome_config*) #1

declare dso_local i32 @bt_dev_err(%struct.hci_dev*, i8*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @qca_send_reset(%struct.hci_dev*) #1

declare dso_local i32 @bt_dev_info(%struct.hci_dev*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
