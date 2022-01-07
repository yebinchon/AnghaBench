; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_floppy.c_motor_off_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_floppy.c_motor_off_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timer_list = type { i32 }

@motor_off_timer = common dso_local global %struct.timer_list* null, align 8
@N_DRIVE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @motor_off_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @motor_off_callback(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8, align 1
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %5 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %6 = load %struct.timer_list*, %struct.timer_list** @motor_off_timer, align 8
  %7 = ptrtoint %struct.timer_list* %5 to i64
  %8 = ptrtoint %struct.timer_list* %6 to i64
  %9 = sub i64 %7, %8
  %10 = sdiv exact i64 %9, 4
  store i64 %10, i64* %3, align 8
  %11 = load i64, i64* %3, align 8
  %12 = call i32 @UNIT(i64 %11)
  %13 = shl i32 16, %12
  %14 = xor i32 %13, -1
  %15 = trunc i32 %14 to i8
  store i8 %15, i8* %4, align 1
  %16 = load i64, i64* %3, align 8
  %17 = load i64, i64* @N_DRIVE, align 8
  %18 = icmp uge i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i64 @WARN_ON_ONCE(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  br label %28

23:                                               ; preds = %1
  %24 = load i64, i64* %3, align 8
  %25 = call i32 @FDC(i64 %24)
  %26 = load i8, i8* %4, align 1
  %27 = call i32 @set_dor(i32 %25, i8 zeroext %26, i32 0)
  br label %28

28:                                               ; preds = %23, %22
  ret void
}

declare dso_local i32 @UNIT(i64) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @set_dor(i32, i8 zeroext, i32) #1

declare dso_local i32 @FDC(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
