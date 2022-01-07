; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/xillybus/extr_xillybus_core.c_xilly_quiesce.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/xillybus/extr_xillybus_core.c_xilly_quiesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xilly_endpoint = type { i32, i32, i32, i32, i64 }

@fpga_dma_control_reg = common dso_local global i64 0, align 8
@XILLY_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Failed to quiesce the device on exit.\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xilly_endpoint*)* @xilly_quiesce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xilly_quiesce(%struct.xilly_endpoint* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xilly_endpoint*, align 8
  %4 = alloca i64, align 8
  store %struct.xilly_endpoint* %0, %struct.xilly_endpoint** %3, align 8
  %5 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %3, align 8
  %6 = getelementptr inbounds %struct.xilly_endpoint, %struct.xilly_endpoint* %5, i32 0, i32 0
  store i32 -1, i32* %6, align 8
  %7 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %3, align 8
  %8 = getelementptr inbounds %struct.xilly_endpoint, %struct.xilly_endpoint* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = and i32 %9, 1
  %11 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %3, align 8
  %12 = getelementptr inbounds %struct.xilly_endpoint, %struct.xilly_endpoint* %11, i32 0, i32 4
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @fpga_dma_control_reg, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @iowrite32(i32 %10, i64 %15)
  %17 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %3, align 8
  %18 = getelementptr inbounds %struct.xilly_endpoint, %struct.xilly_endpoint* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %3, align 8
  %21 = getelementptr inbounds %struct.xilly_endpoint, %struct.xilly_endpoint* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp sge i32 %22, 0
  %24 = zext i1 %23 to i32
  %25 = load i32, i32* @XILLY_TIMEOUT, align 4
  %26 = call i64 @wait_event_interruptible_timeout(i32 %19, i32 %24, i32 %25)
  store i64 %26, i64* %4, align 8
  %27 = load i64, i64* %4, align 8
  %28 = icmp sle i64 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %1
  %30 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %3, align 8
  %31 = getelementptr inbounds %struct.xilly_endpoint, %struct.xilly_endpoint* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @dev_err(i32 %32, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @ENODEV, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %37

36:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %36, %29
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i64 @wait_event_interruptible_timeout(i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
