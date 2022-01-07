; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_xsysace.c_ace_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_xsysace.c_ace_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gendisk = type { %struct.ace_device* }
%struct.ace_device = type { i64, i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"ace_release() users=%i\0A\00", align 1
@xsysace_mutex = common dso_local global i32 0, align 4
@ACE_CTRL = common dso_local global i32 0, align 4
@ACE_CTRL_LOCKREQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gendisk*, i32)* @ace_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ace_release(%struct.gendisk* %0, i32 %1) #0 {
  %3 = alloca %struct.gendisk*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ace_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.gendisk* %0, %struct.gendisk** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %9 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %8, i32 0, i32 0
  %10 = load %struct.ace_device*, %struct.ace_device** %9, align 8
  store %struct.ace_device* %10, %struct.ace_device** %5, align 8
  %11 = load %struct.ace_device*, %struct.ace_device** %5, align 8
  %12 = getelementptr inbounds %struct.ace_device, %struct.ace_device* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.ace_device*, %struct.ace_device** %5, align 8
  %15 = getelementptr inbounds %struct.ace_device, %struct.ace_device* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = sub nsw i64 %16, 1
  %18 = call i32 @dev_dbg(i32 %13, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %17)
  %19 = call i32 @mutex_lock(i32* @xsysace_mutex)
  %20 = load %struct.ace_device*, %struct.ace_device** %5, align 8
  %21 = getelementptr inbounds %struct.ace_device, %struct.ace_device* %20, i32 0, i32 1
  %22 = load i64, i64* %6, align 8
  %23 = call i32 @spin_lock_irqsave(i32* %21, i64 %22)
  %24 = load %struct.ace_device*, %struct.ace_device** %5, align 8
  %25 = getelementptr inbounds %struct.ace_device, %struct.ace_device* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %26, -1
  store i64 %27, i64* %25, align 8
  %28 = load %struct.ace_device*, %struct.ace_device** %5, align 8
  %29 = getelementptr inbounds %struct.ace_device, %struct.ace_device* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %2
  %33 = load %struct.ace_device*, %struct.ace_device** %5, align 8
  %34 = load i32, i32* @ACE_CTRL, align 4
  %35 = call i32 @ace_in(%struct.ace_device* %33, i32 %34)
  store i32 %35, i32* %7, align 4
  %36 = load %struct.ace_device*, %struct.ace_device** %5, align 8
  %37 = load i32, i32* @ACE_CTRL, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @ACE_CTRL_LOCKREQ, align 4
  %40 = xor i32 %39, -1
  %41 = and i32 %38, %40
  %42 = call i32 @ace_out(%struct.ace_device* %36, i32 %37, i32 %41)
  br label %43

43:                                               ; preds = %32, %2
  %44 = load %struct.ace_device*, %struct.ace_device** %5, align 8
  %45 = getelementptr inbounds %struct.ace_device, %struct.ace_device* %44, i32 0, i32 1
  %46 = load i64, i64* %6, align 8
  %47 = call i32 @spin_unlock_irqrestore(i32* %45, i64 %46)
  %48 = call i32 @mutex_unlock(i32* @xsysace_mutex)
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*, i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ace_in(%struct.ace_device*, i32) #1

declare dso_local i32 @ace_out(%struct.ace_device*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
