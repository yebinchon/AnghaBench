; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btmrvl_sdio.c_btmrvl_sdio_download_fw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btmrvl_sdio.c_btmrvl_sdio_download_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btmrvl_sdio_card = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MAX_POLL_TRIES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"card or function is NULL!\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Firmware already downloaded!\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Failed to read FW downloading status!\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [45 x i8] c"BT not the winner (%#x). Skip FW downloading\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Failed to download helper!\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"Failed to download firmware!\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"FW failed to be active in time!\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btmrvl_sdio_card*)* @btmrvl_sdio_download_fw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btmrvl_sdio_download_fw(%struct.btmrvl_sdio_card* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.btmrvl_sdio_card*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.btmrvl_sdio_card* %0, %struct.btmrvl_sdio_card** %3, align 8
  %7 = load i32, i32* @MAX_POLL_TRIES, align 4
  store i32 %7, i32* %6, align 4
  %8 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %3, align 8
  %9 = icmp ne %struct.btmrvl_sdio_card* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %3, align 8
  %12 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %10, %1
  %16 = call i32 @BT_ERR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %97

19:                                               ; preds = %10
  %20 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %3, align 8
  %21 = call i64 @btmrvl_sdio_verify_fw_download(%struct.btmrvl_sdio_card* %20, i32 1)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %97

25:                                               ; preds = %19
  %26 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %3, align 8
  %27 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @sdio_claim_host(i32 %28)
  %30 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %3, align 8
  %31 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %3, align 8
  %34 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %33, i32 0, i32 2
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @sdio_readb(i32 %32, i32 %37, i32* %4)
  store i64 %38, i64* %5, align 8
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %25
  %42 = call i32 @BT_ERR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %43 = load i32, i32* @EIO, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %91

45:                                               ; preds = %25
  %46 = load i64, i64* %5, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %45
  %49 = load i64, i64* %5, align 8
  %50 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i64 %49)
  %51 = load i32, i32* %6, align 4
  %52 = mul nsw i32 %51, 10
  store i32 %52, i32* %6, align 4
  br label %77

53:                                               ; preds = %45
  %54 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %3, align 8
  %55 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %53
  %59 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %3, align 8
  %60 = call i32 @btmrvl_sdio_download_helper(%struct.btmrvl_sdio_card* %59)
  store i32 %60, i32* %4, align 4
  %61 = load i32, i32* %4, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %58
  %64 = call i32 @BT_ERR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %65 = load i32, i32* @EIO, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %4, align 4
  br label %91

67:                                               ; preds = %58
  br label %68

68:                                               ; preds = %67, %53
  %69 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %3, align 8
  %70 = call i64 @btmrvl_sdio_download_fw_w_helper(%struct.btmrvl_sdio_card* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %68
  %73 = call i32 @BT_ERR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  %74 = load i32, i32* @EIO, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %4, align 4
  br label %91

76:                                               ; preds = %68
  br label %77

77:                                               ; preds = %76, %48
  %78 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %3, align 8
  %79 = load i32, i32* %6, align 4
  %80 = call i64 @btmrvl_sdio_verify_fw_download(%struct.btmrvl_sdio_card* %78, i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %77
  %83 = call i32 @BT_ERR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  %84 = load i32, i32* @ETIMEDOUT, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %4, align 4
  br label %91

86:                                               ; preds = %77
  %87 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %3, align 8
  %88 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @sdio_release_host(i32 %89)
  store i32 0, i32* %2, align 4
  br label %97

91:                                               ; preds = %82, %72, %63, %41
  %92 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %3, align 8
  %93 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @sdio_release_host(i32 %94)
  %96 = load i32, i32* %4, align 4
  store i32 %96, i32* %2, align 4
  br label %97

97:                                               ; preds = %91, %86, %23, %15
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local i32 @BT_ERR(i8*) #1

declare dso_local i64 @btmrvl_sdio_verify_fw_download(%struct.btmrvl_sdio_card*, i32) #1

declare dso_local i32 @BT_DBG(i8*, ...) #1

declare dso_local i32 @sdio_claim_host(i32) #1

declare dso_local i64 @sdio_readb(i32, i32, i32*) #1

declare dso_local i32 @btmrvl_sdio_download_helper(%struct.btmrvl_sdio_card*) #1

declare dso_local i64 @btmrvl_sdio_download_fw_w_helper(%struct.btmrvl_sdio_card*) #1

declare dso_local i32 @sdio_release_host(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
