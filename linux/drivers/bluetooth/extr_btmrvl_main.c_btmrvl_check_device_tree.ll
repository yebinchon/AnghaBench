; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btmrvl_main.c_btmrvl_check_device_tree.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btmrvl_main.c_btmrvl_check_device_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btmrvl_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.btmrvl_sdio_card* }
%struct.btmrvl_sdio_card = type { %struct.device_node* }
%struct.device_node = type { i32 }

@BT_CAL_HDR_LEN = common dso_local global i32 0, align 4
@BT_CAL_DATA_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"marvell,wakeup-pin\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"marvell,wakeup-gap-ms\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"marvell,cal-data\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Use cal data from device tree\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Fail to download calibrate data\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btmrvl_private*)* @btmrvl_check_device_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btmrvl_check_device_tree(%struct.btmrvl_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.btmrvl_private*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.btmrvl_sdio_card*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.btmrvl_private* %0, %struct.btmrvl_private** %3, align 8
  %12 = load %struct.btmrvl_private*, %struct.btmrvl_private** %3, align 8
  %13 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %14, align 8
  store %struct.btmrvl_sdio_card* %15, %struct.btmrvl_sdio_card** %5, align 8
  %16 = load i32, i32* @BT_CAL_HDR_LEN, align 4
  %17 = load i32, i32* @BT_CAL_DATA_SIZE, align 4
  %18 = add nsw i32 %16, %17
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %6, align 8
  %21 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %22 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %5, align 8
  %23 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %22, i32 0, i32 0
  %24 = load %struct.device_node*, %struct.device_node** %23, align 8
  %25 = icmp ne %struct.device_node* %24, null
  br i1 %25, label %26, label %80

26:                                               ; preds = %1
  %27 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %5, align 8
  %28 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %27, i32 0, i32 0
  %29 = load %struct.device_node*, %struct.device_node** %28, align 8
  store %struct.device_node* %29, %struct.device_node** %4, align 8
  %30 = load %struct.device_node*, %struct.device_node** %4, align 8
  %31 = call i32 @of_property_read_u16(%struct.device_node* %30, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32* %9)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %26
  %35 = load %struct.btmrvl_private*, %struct.btmrvl_private** %3, align 8
  %36 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = and i32 %38, 65280
  %40 = ashr i32 %39, 8
  store i32 %40, i32* %9, align 4
  br label %41

41:                                               ; preds = %34, %26
  %42 = load %struct.device_node*, %struct.device_node** %4, align 8
  %43 = call i32 @of_property_read_u16(%struct.device_node* %42, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32* %10)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %41
  %47 = load %struct.btmrvl_private*, %struct.btmrvl_private** %3, align 8
  %48 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = and i32 %50, 255
  store i32 %51, i32* %10, align 4
  br label %52

52:                                               ; preds = %46, %41
  %53 = load i32, i32* %9, align 4
  %54 = shl i32 %53, 8
  %55 = load i32, i32* %10, align 4
  %56 = add nsw i32 %54, %55
  %57 = load %struct.btmrvl_private*, %struct.btmrvl_private** %3, align 8
  %58 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  store i32 %56, i32* %59, align 8
  %60 = load %struct.device_node*, %struct.device_node** %4, align 8
  %61 = load i32, i32* @BT_CAL_HDR_LEN, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %21, i64 %62
  %64 = load i32, i32* @BT_CAL_DATA_SIZE, align 4
  %65 = call i32 @of_property_read_u8_array(%struct.device_node* %60, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32* %63, i32 %64)
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %52
  %69 = load i32, i32* %8, align 4
  store i32 %69, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %82

70:                                               ; preds = %52
  %71 = call i32 @BT_DBG(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %72 = load %struct.btmrvl_private*, %struct.btmrvl_private** %3, align 8
  %73 = load i32, i32* @BT_CAL_DATA_SIZE, align 4
  %74 = call i32 @btmrvl_download_cal_data(%struct.btmrvl_private* %72, i32* %21, i32 %73)
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* %8, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %70
  %78 = call i32 @BT_ERR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  br label %79

79:                                               ; preds = %77, %70
  br label %80

80:                                               ; preds = %79, %1
  %81 = load i32, i32* %8, align 4
  store i32 %81, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %82

82:                                               ; preds = %80, %68
  %83 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %83)
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @of_property_read_u16(%struct.device_node*, i8*, i32*) #2

declare dso_local i32 @of_property_read_u8_array(%struct.device_node*, i8*, i32*, i32) #2

declare dso_local i32 @BT_DBG(i8*) #2

declare dso_local i32 @btmrvl_download_cal_data(%struct.btmrvl_private*, i32*, i32) #2

declare dso_local i32 @BT_ERR(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
