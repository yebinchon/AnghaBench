; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_xsysace.c_ace_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_xsysace.c_ace_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ace_device* }
%struct.ace_device = type { i32, i64, i32 }

@.str = private unnamed_addr constant [21 x i8] c"ace_open() users=%i\0A\00", align 1
@xsysace_mutex = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.block_device*, i32)* @ace_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ace_open(%struct.block_device* %0, i32 %1) #0 {
  %3 = alloca %struct.block_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ace_device*, align 8
  %6 = alloca i64, align 8
  store %struct.block_device* %0, %struct.block_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.block_device*, %struct.block_device** %3, align 8
  %8 = getelementptr inbounds %struct.block_device, %struct.block_device* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.ace_device*, %struct.ace_device** %10, align 8
  store %struct.ace_device* %11, %struct.ace_device** %5, align 8
  %12 = load %struct.ace_device*, %struct.ace_device** %5, align 8
  %13 = getelementptr inbounds %struct.ace_device, %struct.ace_device* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.ace_device*, %struct.ace_device** %5, align 8
  %16 = getelementptr inbounds %struct.ace_device, %struct.ace_device* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %17, 1
  %19 = call i32 @dev_dbg(i32 %14, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 %18)
  %20 = call i32 @mutex_lock(i32* @xsysace_mutex)
  %21 = load %struct.ace_device*, %struct.ace_device** %5, align 8
  %22 = getelementptr inbounds %struct.ace_device, %struct.ace_device* %21, i32 0, i32 0
  %23 = load i64, i64* %6, align 8
  %24 = call i32 @spin_lock_irqsave(i32* %22, i64 %23)
  %25 = load %struct.ace_device*, %struct.ace_device** %5, align 8
  %26 = getelementptr inbounds %struct.ace_device, %struct.ace_device* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %27, 1
  store i64 %28, i64* %26, align 8
  %29 = load %struct.ace_device*, %struct.ace_device** %5, align 8
  %30 = getelementptr inbounds %struct.ace_device, %struct.ace_device* %29, i32 0, i32 0
  %31 = load i64, i64* %6, align 8
  %32 = call i32 @spin_unlock_irqrestore(i32* %30, i64 %31)
  %33 = load %struct.block_device*, %struct.block_device** %3, align 8
  %34 = call i32 @check_disk_change(%struct.block_device* %33)
  %35 = call i32 @mutex_unlock(i32* @xsysace_mutex)
  ret i32 0
}

declare dso_local i32 @dev_dbg(i32, i8*, i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @check_disk_change(%struct.block_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
