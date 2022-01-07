; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/xillybus/extr_xillybus_core.c_xilly_obtain_idt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/xillybus/extr_xillybus_core.c_xilly_obtain_idt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xilly_endpoint = type { i64, i32, %struct.TYPE_3__*, i64, i64, %struct.xilly_channel** }
%struct.TYPE_3__ = type { i32 (i32, i32, i32, i32)* }
%struct.xilly_channel = type { i32, %struct.TYPE_4__**, i32, i32, i32 }
%struct.TYPE_4__ = type { i64, i8*, i32 }

@fpga_buf_ctrl_reg = common dso_local global i64 0, align 8
@XILLY_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Failed to obtain IDT. Aborting.\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"IDT length mismatch (%d != %d). Aborting.\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"IDT failed CRC check. Aborting.\0A\00", align 1
@.str.3 = private unnamed_addr constant [90 x i8] c"No support for IDT version 0x%02x. Maybe the xillybus driver needs an upgrade. Aborting.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xilly_endpoint*)* @xilly_obtain_idt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xilly_obtain_idt(%struct.xilly_endpoint* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xilly_endpoint*, align 8
  %4 = alloca %struct.xilly_channel*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.xilly_endpoint* %0, %struct.xilly_endpoint** %3, align 8
  %7 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %3, align 8
  %8 = getelementptr inbounds %struct.xilly_endpoint, %struct.xilly_endpoint* %7, i32 0, i32 5
  %9 = load %struct.xilly_channel**, %struct.xilly_channel*** %8, align 8
  %10 = getelementptr inbounds %struct.xilly_channel*, %struct.xilly_channel** %9, i64 1
  %11 = load %struct.xilly_channel*, %struct.xilly_channel** %10, align 8
  store %struct.xilly_channel* %11, %struct.xilly_channel** %4, align 8
  %12 = load %struct.xilly_channel*, %struct.xilly_channel** %4, align 8
  %13 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %12, i32 0, i32 0
  store i32 1, i32* %13, align 8
  %14 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %3, align 8
  %15 = getelementptr inbounds %struct.xilly_endpoint, %struct.xilly_endpoint* %14, i32 0, i32 4
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @fpga_buf_ctrl_reg, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @iowrite32(i32 50331649, i64 %18)
  %20 = load %struct.xilly_channel*, %struct.xilly_channel** %4, align 8
  %21 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.xilly_channel*, %struct.xilly_channel** %4, align 8
  %24 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = load i32, i32* @XILLY_TIMEOUT, align 4
  %30 = call i64 @wait_event_interruptible_timeout(i32 %22, i32 %28, i32 %29)
  store i64 %30, i64* %6, align 8
  %31 = load i64, i64* %6, align 8
  %32 = icmp sle i64 %31, 0
  br i1 %32, label %33, label %48

33:                                               ; preds = %1
  %34 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %3, align 8
  %35 = getelementptr inbounds %struct.xilly_endpoint, %struct.xilly_endpoint* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 (i32, i8*, ...) @dev_err(i32 %36, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %38 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %3, align 8
  %39 = getelementptr inbounds %struct.xilly_endpoint, %struct.xilly_endpoint* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %33
  %43 = load i32, i32* @EIO, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %141

45:                                               ; preds = %33
  %46 = load i32, i32* @ENODEV, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %141

48:                                               ; preds = %1
  %49 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %3, align 8
  %50 = getelementptr inbounds %struct.xilly_endpoint, %struct.xilly_endpoint* %49, i32 0, i32 2
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %52, align 8
  %54 = load %struct.xilly_channel*, %struct.xilly_channel** %4, align 8
  %55 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.xilly_channel*, %struct.xilly_channel** %4, align 8
  %58 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %57, i32 0, i32 1
  %59 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %59, i64 0
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.xilly_channel*, %struct.xilly_channel** %4, align 8
  %65 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %68 = call i32 %53(i32 %56, i32 %63, i32 %66, i32 %67)
  %69 = load %struct.xilly_channel*, %struct.xilly_channel** %4, align 8
  %70 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %69, i32 0, i32 1
  %71 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %71, i64 0
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %3, align 8
  %77 = getelementptr inbounds %struct.xilly_endpoint, %struct.xilly_endpoint* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %75, %78
  br i1 %79, label %80, label %97

80:                                               ; preds = %48
  %81 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %3, align 8
  %82 = getelementptr inbounds %struct.xilly_endpoint, %struct.xilly_endpoint* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.xilly_channel*, %struct.xilly_channel** %4, align 8
  %85 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %84, i32 0, i32 1
  %86 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %86, i64 0
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %3, align 8
  %92 = getelementptr inbounds %struct.xilly_endpoint, %struct.xilly_endpoint* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = call i32 (i32, i8*, ...) @dev_err(i32 %83, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i64 %90, i64 %93)
  %95 = load i32, i32* @ENODEV, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %2, align 4
  br label %141

97:                                               ; preds = %48
  %98 = load %struct.xilly_channel*, %struct.xilly_channel** %4, align 8
  %99 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %98, i32 0, i32 1
  %100 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %100, i64 0
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 1
  %104 = load i8*, i8** %103, align 8
  %105 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %3, align 8
  %106 = getelementptr inbounds %struct.xilly_endpoint, %struct.xilly_endpoint* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = add nsw i64 %107, 1
  %109 = call i64 @crc32_le(i32 -1, i8* %104, i64 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %118

111:                                              ; preds = %97
  %112 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %3, align 8
  %113 = getelementptr inbounds %struct.xilly_endpoint, %struct.xilly_endpoint* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = call i32 (i32, i8*, ...) @dev_err(i32 %114, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %116 = load i32, i32* @ENODEV, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %2, align 4
  br label %141

118:                                              ; preds = %97
  %119 = load %struct.xilly_channel*, %struct.xilly_channel** %4, align 8
  %120 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %119, i32 0, i32 1
  %121 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %121, i64 0
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 1
  %125 = load i8*, i8** %124, align 8
  store i8* %125, i8** %5, align 8
  %126 = load i8*, i8** %5, align 8
  %127 = load i8, i8* %126, align 1
  %128 = zext i8 %127 to i32
  %129 = icmp sgt i32 %128, 130
  br i1 %129, label %130, label %140

130:                                              ; preds = %118
  %131 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %3, align 8
  %132 = getelementptr inbounds %struct.xilly_endpoint, %struct.xilly_endpoint* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = load i8*, i8** %5, align 8
  %135 = load i8, i8* %134, align 1
  %136 = zext i8 %135 to i32
  %137 = call i32 (i32, i8*, ...) @dev_err(i32 %133, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.3, i64 0, i64 0), i32 %136)
  %138 = load i32, i32* @ENODEV, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %2, align 4
  br label %141

140:                                              ; preds = %118
  store i32 0, i32* %2, align 4
  br label %141

141:                                              ; preds = %140, %130, %111, %80, %45, %42
  %142 = load i32, i32* %2, align 4
  ret i32 %142
}

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i64 @wait_event_interruptible_timeout(i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i64 @crc32_le(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
