; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_skd_main.c_skd_comp_q.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_skd_main.c_skd_comp_q.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skd_device = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"MSIX = 0x%x\0A\00", align 1
@FIT_INT_STATUS_HOST = common dso_local global i32 0, align 4
@FIT_ISH_COMPLETION_POSTED = common dso_local global i32 0, align 4
@skd_isr_comp_limit = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @skd_comp_q to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skd_comp_q(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.skd_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.skd_device*
  store %struct.skd_device* %10, %struct.skd_device** %5, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.skd_device*, %struct.skd_device** %5, align 8
  %12 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %11, i32 0, i32 0
  %13 = load i64, i64* %6, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.skd_device*, %struct.skd_device** %5, align 8
  %16 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %15, i32 0, i32 3
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.skd_device*, %struct.skd_device** %5, align 8
  %20 = load i32, i32* @FIT_INT_STATUS_HOST, align 4
  %21 = call i32 @SKD_READL(%struct.skd_device* %19, i32 %20)
  %22 = call i32 @dev_dbg(i32* %18, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load %struct.skd_device*, %struct.skd_device** %5, align 8
  %24 = load i32, i32* @FIT_ISH_COMPLETION_POSTED, align 4
  %25 = load i32, i32* @FIT_INT_STATUS_HOST, align 4
  %26 = call i32 @SKD_WRITEL(%struct.skd_device* %23, i32 %24, i32 %25)
  %27 = load %struct.skd_device*, %struct.skd_device** %5, align 8
  %28 = load i32, i32* @skd_isr_comp_limit, align 4
  %29 = call i32 @skd_isr_completion_posted(%struct.skd_device* %27, i32 %28, i32* %7)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %2
  %33 = load %struct.skd_device*, %struct.skd_device** %5, align 8
  %34 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %33, i32 0, i32 1
  %35 = call i32 @schedule_work(i32* %34)
  br label %36

36:                                               ; preds = %32, %2
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load %struct.skd_device*, %struct.skd_device** %5, align 8
  %41 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %40, i32 0, i32 2
  %42 = call i32 @schedule_work(i32* %41)
  br label %51

43:                                               ; preds = %36
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %43
  %47 = load %struct.skd_device*, %struct.skd_device** %5, align 8
  %48 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %47, i32 0, i32 1
  %49 = call i32 @schedule_work(i32* %48)
  br label %50

50:                                               ; preds = %46, %43
  br label %51

51:                                               ; preds = %50, %39
  %52 = load %struct.skd_device*, %struct.skd_device** %5, align 8
  %53 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %52, i32 0, i32 0
  %54 = load i64, i64* %6, align 8
  %55 = call i32 @spin_unlock_irqrestore(i32* %53, i64 %54)
  %56 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %56
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @SKD_READL(%struct.skd_device*, i32) #1

declare dso_local i32 @SKD_WRITEL(%struct.skd_device*, i32, i32) #1

declare dso_local i32 @skd_isr_completion_posted(%struct.skd_device*, i32, i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
