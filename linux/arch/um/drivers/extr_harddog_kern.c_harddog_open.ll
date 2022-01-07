; ModuleID = '/home/carl/AnghaBench/linux/arch/um/drivers/extr_harddog_kern.c_harddog_open.c'
source_filename = "/home/carl/AnghaBench/linux/arch/um/drivers/extr_harddog_kern.c_harddog_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@harddog_mutex = common dso_local global i32 0, align 4
@lock = common dso_local global i32 0, align 4
@timer_alive = common dso_local global i32 0, align 4
@harddog_in_fd = common dso_local global i32 0, align 4
@harddog_out_fd = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @harddog_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @harddog_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %8 = load i32, i32* @EBUSY, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %6, align 4
  store i8* null, i8** %7, align 8
  %10 = call i32 @mutex_lock(i32* @harddog_mutex)
  %11 = call i32 @spin_lock(i32* @lock)
  %12 = load i32, i32* @timer_alive, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %27

15:                                               ; preds = %2
  %16 = load i8*, i8** %7, align 8
  %17 = call i32 @start_watchdog(i32* @harddog_in_fd, i32* @harddog_out_fd, i8* %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  br label %27

21:                                               ; preds = %15
  store i32 1, i32* @timer_alive, align 4
  %22 = call i32 @spin_unlock(i32* @lock)
  %23 = call i32 @mutex_unlock(i32* @harddog_mutex)
  %24 = load %struct.inode*, %struct.inode** %4, align 8
  %25 = load %struct.file*, %struct.file** %5, align 8
  %26 = call i32 @stream_open(%struct.inode* %24, %struct.file* %25)
  store i32 %26, i32* %3, align 4
  br label %31

27:                                               ; preds = %20, %14
  %28 = call i32 @spin_unlock(i32* @lock)
  %29 = call i32 @mutex_unlock(i32* @harddog_mutex)
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %27, %21
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @start_watchdog(i32*, i32*, i8*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @stream_open(%struct.inode*, %struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
