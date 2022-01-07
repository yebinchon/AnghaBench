; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btmrvl_sdio.c_btmrvl_sdio_rdwr_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btmrvl_sdio.c_btmrvl_sdio_rdwr_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btmrvl_private = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.btmrvl_sdio_card* }
%struct.btmrvl_sdio_card = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }

@FW_DUMP_HOST_READY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"SDIO write err\00", align 1
@RDWR_STATUS_FAILURE = common dso_local global i32 0, align 4
@MAX_POLL_TRIES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"SDIO read err\00", align 1
@FW_DUMP_DONE = common dso_local global i64 0, align 8
@RDWR_STATUS_DONE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"The ctrl reg was changed, re-try again!\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Fail to pull ctrl_data\00", align 1
@RDWR_STATUS_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btmrvl_private*, i64)* @btmrvl_sdio_rdwr_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btmrvl_sdio_rdwr_firmware(%struct.btmrvl_private* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.btmrvl_private*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.btmrvl_sdio_card*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.btmrvl_private* %0, %struct.btmrvl_private** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.btmrvl_private*, %struct.btmrvl_private** %4, align 8
  %11 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %12, align 8
  store %struct.btmrvl_sdio_card* %13, %struct.btmrvl_sdio_card** %6, align 8
  store i64 0, i64* %9, align 8
  %14 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %6, align 8
  %15 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load i64, i64* @FW_DUMP_HOST_READY, align 8
  %18 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %6, align 8
  %19 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @sdio_writeb(i32 %16, i64 %17, i32 %22, i32* %7)
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = call i32 @BT_ERR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @RDWR_STATUS_FAILURE, align 4
  store i32 %28, i32* %3, align 4
  br label %99

29:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %30

30:                                               ; preds = %87, %29
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @MAX_POLL_TRIES, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %90

34:                                               ; preds = %30
  %35 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %6, align 8
  %36 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %6, align 8
  %39 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @sdio_readb(i32 %37, i32 %42, i32* %7)
  store i64 %43, i64* %9, align 8
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %34
  %47 = call i32 @BT_ERR(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %48 = load i32, i32* @RDWR_STATUS_FAILURE, align 4
  store i32 %48, i32* %3, align 4
  br label %99

49:                                               ; preds = %34
  %50 = load i64, i64* %9, align 8
  %51 = load i64, i64* @FW_DUMP_DONE, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  br label %90

54:                                               ; preds = %49
  %55 = load i64, i64* %5, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %54
  %58 = load i64, i64* %9, align 8
  %59 = load i64, i64* %5, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = load i32, i32* @RDWR_STATUS_DONE, align 4
  store i32 %62, i32* %3, align 4
  br label %99

63:                                               ; preds = %57, %54
  %64 = load i64, i64* %9, align 8
  %65 = load i64, i64* @FW_DUMP_HOST_READY, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %85

67:                                               ; preds = %63
  %68 = call i32 @BT_INFO(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %69 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %6, align 8
  %70 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load i64, i64* @FW_DUMP_HOST_READY, align 8
  %73 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %6, align 8
  %74 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %73, i32 0, i32 0
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @sdio_writeb(i32 %71, i64 %72, i32 %77, i32* %7)
  %79 = load i32, i32* %7, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %67
  %82 = call i32 @BT_ERR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %83 = load i32, i32* @RDWR_STATUS_FAILURE, align 4
  store i32 %83, i32* %3, align 4
  br label %99

84:                                               ; preds = %67
  br label %85

85:                                               ; preds = %84, %63
  %86 = call i32 @usleep_range(i32 100, i32 200)
  br label %87

87:                                               ; preds = %85
  %88 = load i32, i32* %8, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %8, align 4
  br label %30

90:                                               ; preds = %53, %30
  %91 = load i64, i64* %9, align 8
  %92 = load i64, i64* @FW_DUMP_HOST_READY, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %90
  %95 = call i32 @BT_ERR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %96 = load i32, i32* @RDWR_STATUS_FAILURE, align 4
  store i32 %96, i32* %3, align 4
  br label %99

97:                                               ; preds = %90
  %98 = load i32, i32* @RDWR_STATUS_SUCCESS, align 4
  store i32 %98, i32* %3, align 4
  br label %99

99:                                               ; preds = %97, %94, %81, %61, %46, %26
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local i32 @sdio_writeb(i32, i64, i32, i32*) #1

declare dso_local i32 @BT_ERR(i8*) #1

declare dso_local i64 @sdio_readb(i32, i32, i32*) #1

declare dso_local i32 @BT_INFO(i8*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
