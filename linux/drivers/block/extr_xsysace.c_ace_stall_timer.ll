; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_xsysace.c_ace_stall_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_xsysace.c_ace_stall_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ace_device = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.timer_list = type { i32 }

@stall_timer = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"kicking stalled fsm; state=%i task=%i iter=%i dc=%i\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@ace = common dso_local global %struct.ace_device* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @ace_stall_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ace_stall_timer(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.ace_device*, align 8
  %4 = alloca i64, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %5 = load %struct.ace_device*, %struct.ace_device** %3, align 8
  %6 = ptrtoint %struct.ace_device* %5 to i32
  %7 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %8 = load i32, i32* @stall_timer, align 4
  %9 = call %struct.ace_device* @from_timer(i32 %6, %struct.timer_list* %7, i32 %8)
  store %struct.ace_device* %9, %struct.ace_device** %3, align 8
  %10 = load %struct.ace_device*, %struct.ace_device** %3, align 8
  %11 = getelementptr inbounds %struct.ace_device, %struct.ace_device* %10, i32 0, i32 7
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.ace_device*, %struct.ace_device** %3, align 8
  %14 = getelementptr inbounds %struct.ace_device, %struct.ace_device* %13, i32 0, i32 6
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.ace_device*, %struct.ace_device** %3, align 8
  %17 = getelementptr inbounds %struct.ace_device, %struct.ace_device* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.ace_device*, %struct.ace_device** %3, align 8
  %20 = getelementptr inbounds %struct.ace_device, %struct.ace_device* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.ace_device*, %struct.ace_device** %3, align 8
  %23 = getelementptr inbounds %struct.ace_device, %struct.ace_device* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @dev_warn(i32 %12, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %18, i32 %21, i32 %24)
  %26 = load %struct.ace_device*, %struct.ace_device** %3, align 8
  %27 = getelementptr inbounds %struct.ace_device, %struct.ace_device* %26, i32 0, i32 1
  %28 = load i64, i64* %4, align 8
  %29 = call i32 @spin_lock_irqsave(i32* %27, i64 %28)
  %30 = load %struct.ace_device*, %struct.ace_device** %3, align 8
  %31 = getelementptr inbounds %struct.ace_device, %struct.ace_device* %30, i32 0, i32 2
  %32 = load i64, i64* @jiffies, align 8
  %33 = load i64, i64* @HZ, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @mod_timer(i32* %31, i64 %34)
  %36 = load %struct.ace_device*, %struct.ace_device** %3, align 8
  %37 = getelementptr inbounds %struct.ace_device, %struct.ace_device* %36, i32 0, i32 0
  store i32 1, i32* %37, align 4
  br label %38

38:                                               ; preds = %43, %1
  %39 = load %struct.ace_device*, %struct.ace_device** %3, align 8
  %40 = getelementptr inbounds %struct.ace_device, %struct.ace_device* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load %struct.ace_device*, %struct.ace_device** %3, align 8
  %45 = call i32 @ace_fsm_dostate(%struct.ace_device* %44)
  br label %38

46:                                               ; preds = %38
  %47 = load %struct.ace_device*, %struct.ace_device** %3, align 8
  %48 = getelementptr inbounds %struct.ace_device, %struct.ace_device* %47, i32 0, i32 1
  %49 = load i64, i64* %4, align 8
  %50 = call i32 @spin_unlock_irqrestore(i32* %48, i64 %49)
  ret void
}

declare dso_local %struct.ace_device* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @ace_fsm_dostate(%struct.ace_device*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
