; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/rsxx/extr_core.c_rsxx_eeh_fifo_flush_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/rsxx/extr_core.c_rsxx_eeh_fifo_flush_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsxx_cardinfo = type { i64 }

@PCI_RECONFIG = common dso_local global i64 0, align 8
@RSXX_FLUSH_BUSY = common dso_local global i32 0, align 4
@RSXX_FLUSH_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"HW: flash controller timeout\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rsxx_cardinfo*)* @rsxx_eeh_fifo_flush_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsxx_eeh_fifo_flush_poll(%struct.rsxx_cardinfo* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rsxx_cardinfo*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.rsxx_cardinfo* %0, %struct.rsxx_cardinfo** %3, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %21, %1
  %7 = load i32, i32* %5, align 4
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* %5, align 4
  %9 = icmp slt i32 %7, 10
  br i1 %9, label %10, label %33

10:                                               ; preds = %6
  %11 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %12 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @PCI_RECONFIG, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @ioread32(i64 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @RSXX_FLUSH_BUSY, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %10
  %22 = call i32 @ssleep(i32 1)
  br label %6

23:                                               ; preds = %10
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @RSXX_FLUSH_TIMEOUT, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %30 = call i32 @CARD_TO_DEV(%struct.rsxx_cardinfo* %29)
  %31 = call i32 @dev_warn(i32 %30, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %32

32:                                               ; preds = %28, %23
  store i32 0, i32* %2, align 4
  br label %34

33:                                               ; preds = %6
  store i32 -1, i32* %2, align 4
  br label %34

34:                                               ; preds = %33, %32
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @ioread32(i64) #1

declare dso_local i32 @ssleep(i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @CARD_TO_DEV(%struct.rsxx_cardinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
