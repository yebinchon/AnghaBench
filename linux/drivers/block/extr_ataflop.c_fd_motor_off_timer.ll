; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_ataflop.c_fd_motor_off_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_ataflop.c_fd_motor_off_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timer_list = type { i32 }

@SelectedDrive = common dso_local global i64 0, align 8
@FDCREG_STATUS = common dso_local global i32 0, align 4
@MotorOn = common dso_local global i64 0, align 8
@motor_off_timer = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@MotorOffTrys = common dso_local global i32 0, align 4
@FD_MOTOR_OFF_MAXTRY = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @fd_motor_off_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fd_motor_off_timer(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca i8, align 1
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %4 = load i64, i64* @SelectedDrive, align 8
  %5 = icmp slt i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %39

7:                                                ; preds = %1
  %8 = call i64 (...) @stdma_islocked()
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  br label %21

11:                                               ; preds = %7
  %12 = load i32, i32* @FDCREG_STATUS, align 4
  %13 = call zeroext i8 @FDC_READ(i32 %12)
  store i8 %13, i8* %3, align 1
  %14 = load i8, i8* %3, align 1
  %15 = zext i8 %14 to i32
  %16 = and i32 %15, 128
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %11
  store i64 0, i64* @MotorOn, align 8
  %19 = call i32 (...) @fd_deselect()
  br label %39

20:                                               ; preds = %11
  br label %21

21:                                               ; preds = %20, %10
  %22 = load i64, i64* @jiffies, align 8
  %23 = load i32, i32* @MotorOffTrys, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* @MotorOffTrys, align 4
  %25 = sext i32 %23 to i64
  %26 = load i64, i64* @FD_MOTOR_OFF_MAXTRY, align 8
  %27 = icmp slt i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = load i32, i32* @HZ, align 4
  %30 = sdiv i32 %29, 20
  br label %34

31:                                               ; preds = %21
  %32 = load i32, i32* @HZ, align 4
  %33 = sdiv i32 %32, 2
  br label %34

34:                                               ; preds = %31, %28
  %35 = phi i32 [ %30, %28 ], [ %33, %31 ]
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %22, %36
  %38 = call i32 @mod_timer(i32* @motor_off_timer, i64 %37)
  br label %39

39:                                               ; preds = %34, %18, %6
  ret void
}

declare dso_local i64 @stdma_islocked(...) #1

declare dso_local zeroext i8 @FDC_READ(i32) #1

declare dso_local i32 @fd_deselect(...) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
