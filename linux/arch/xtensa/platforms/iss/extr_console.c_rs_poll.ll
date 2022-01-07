; ModuleID = '/home/carl/AnghaBench/linux/arch/xtensa/platforms/iss/extr_console.c_rs_poll.c'
source_filename = "/home/carl/AnghaBench/linux/arch/xtensa/platforms/iss/extr_console.c_rs_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_port = type { i32 }
%struct.timer_list = type { i32 }

@serial_port = common dso_local global %struct.tty_port zeroinitializer, align 4
@timer_lock = common dso_local global i32 0, align 4
@TTY_NORMAL = common dso_local global i32 0, align 4
@serial_timer = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@SERIAL_TIMER_VALUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @rs_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rs_poll(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.tty_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  store %struct.tty_port* @serial_port, %struct.tty_port** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 1, i32* %5, align 4
  %7 = call i32 @spin_lock(i32* @timer_lock)
  br label %8

8:                                                ; preds = %16, %1
  %9 = call i64 @simc_poll(i32 0)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %23

11:                                               ; preds = %8
  %12 = call i32 @simc_read(i32 0, i8* %6, i32 1)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp sle i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  br label %23

16:                                               ; preds = %11
  %17 = load %struct.tty_port*, %struct.tty_port** %3, align 8
  %18 = load i8, i8* %6, align 1
  %19 = load i32, i32* @TTY_NORMAL, align 4
  %20 = call i32 @tty_insert_flip_char(%struct.tty_port* %17, i8 zeroext %18, i32 %19)
  %21 = load i32, i32* %4, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %4, align 4
  br label %8

23:                                               ; preds = %15, %8
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load %struct.tty_port*, %struct.tty_port** %3, align 8
  %28 = call i32 @tty_flip_buffer_push(%struct.tty_port* %27)
  br label %29

29:                                               ; preds = %26, %23
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = load i64, i64* @jiffies, align 8
  %34 = load i64, i64* @SERIAL_TIMER_VALUE, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @mod_timer(i32* @serial_timer, i64 %35)
  br label %37

37:                                               ; preds = %32, %29
  %38 = call i32 @spin_unlock(i32* @timer_lock)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @simc_poll(i32) #1

declare dso_local i32 @simc_read(i32, i8*, i32) #1

declare dso_local i32 @tty_insert_flip_char(%struct.tty_port*, i8 zeroext, i32) #1

declare dso_local i32 @tty_flip_buffer_push(%struct.tty_port*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
