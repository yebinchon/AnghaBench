; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_swim3.c_fd_eject.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_swim3.c_fd_eject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.floppy_state = type { i32 }

@ejecting = common dso_local global i32 0, align 4
@EJECT = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@RELAX = common dso_local global i32 0, align 4
@DISK_IN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.floppy_state*)* @fd_eject to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fd_eject(%struct.floppy_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.floppy_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.floppy_state* %0, %struct.floppy_state** %3, align 8
  %6 = load %struct.floppy_state*, %struct.floppy_state** %3, align 8
  %7 = load i32, i32* @ejecting, align 4
  %8 = call i32 @grab_drive(%struct.floppy_state* %6, i32 %7, i32 1)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  store i32 %12, i32* %2, align 4
  br label %51

13:                                               ; preds = %1
  %14 = load %struct.floppy_state*, %struct.floppy_state** %3, align 8
  %15 = load i32, i32* @EJECT, align 4
  %16 = call i32 @swim3_action(%struct.floppy_state* %14, i32 %15)
  store i32 20, i32* %5, align 4
  br label %17

17:                                               ; preds = %38, %13
  %18 = load i32, i32* %5, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %41

20:                                               ; preds = %17
  %21 = load i32, i32* @current, align 4
  %22 = call i64 @signal_pending(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i32, i32* @EINTR, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %41

27:                                               ; preds = %20
  %28 = load %struct.floppy_state*, %struct.floppy_state** %3, align 8
  %29 = load i32, i32* @RELAX, align 4
  %30 = call i32 @swim3_select(%struct.floppy_state* %28, i32 %29)
  %31 = call i32 @schedule_timeout_interruptible(i32 1)
  %32 = load %struct.floppy_state*, %struct.floppy_state** %3, align 8
  %33 = load i32, i32* @DISK_IN, align 4
  %34 = call i64 @swim3_readbit(%struct.floppy_state* %32, i32 %33)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  br label %41

37:                                               ; preds = %27
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* %5, align 4
  br label %17

41:                                               ; preds = %36, %24, %17
  %42 = load %struct.floppy_state*, %struct.floppy_state** %3, align 8
  %43 = load i32, i32* @RELAX, align 4
  %44 = call i32 @swim3_select(%struct.floppy_state* %42, i32 %43)
  %45 = call i32 @udelay(i32 150)
  %46 = load %struct.floppy_state*, %struct.floppy_state** %3, align 8
  %47 = getelementptr inbounds %struct.floppy_state, %struct.floppy_state* %46, i32 0, i32 0
  store i32 1, i32* %47, align 4
  %48 = load %struct.floppy_state*, %struct.floppy_state** %3, align 8
  %49 = call i32 @release_drive(%struct.floppy_state* %48)
  %50 = load i32, i32* %4, align 4
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %41, %11
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @grab_drive(%struct.floppy_state*, i32, i32) #1

declare dso_local i32 @swim3_action(%struct.floppy_state*, i32) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @swim3_select(%struct.floppy_state*, i32) #1

declare dso_local i32 @schedule_timeout_interruptible(i32) #1

declare dso_local i64 @swim3_readbit(%struct.floppy_state*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @release_drive(%struct.floppy_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
