; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_floppy.c_wait_til_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_floppy.c_wait_til_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@command_done = common dso_local global i32 0, align 4
@command_status = common dso_local global i32 0, align 4
@intr_cont = common dso_local global i32 0, align 4
@cont = common dso_local global i32* null, align 8
@EINTR = common dso_local global i32 0, align 4
@FDCS = common dso_local global %struct.TYPE_2__* null, align 8
@FD_COMMAND_ERROR = common dso_local global i32 0, align 4
@FD_COMMAND_OKAY = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@FD_COMMAND_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (void ()*, i32)* @wait_til_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_til_done(void ()* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca void ()*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store void ()* %0, void ()** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load void ()*, void ()** %4, align 8
  %8 = bitcast void ()* %7 to void (...)*
  %9 = call i32 @schedule_bh(void (...)* %8)
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load i32, i32* @command_done, align 4
  %14 = load i32, i32* @command_status, align 4
  %15 = icmp sge i32 %14, 2
  %16 = zext i1 %15 to i32
  %17 = call i32 @wait_event_interruptible(i32 %13, i32 %16)
  br label %24

18:                                               ; preds = %2
  %19 = load i32, i32* @command_done, align 4
  %20 = load i32, i32* @command_status, align 4
  %21 = icmp sge i32 %20, 2
  %22 = zext i1 %21 to i32
  %23 = call i32 @wait_event(i32 %19, i32 %22)
  br label %24

24:                                               ; preds = %18, %12
  %25 = load i32, i32* @command_status, align 4
  %26 = icmp slt i32 %25, 2
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  %28 = call i32 (...) @cancel_activity()
  store i32* @intr_cont, i32** @cont, align 8
  %29 = call i32 (...) @reset_fdc()
  %30 = load i32, i32* @EINTR, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %50

32:                                               ; preds = %24
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @FDCS, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i32, i32* @FD_COMMAND_ERROR, align 4
  store i32 %38, i32* @command_status, align 4
  br label %39

39:                                               ; preds = %37, %32
  %40 = load i32, i32* @command_status, align 4
  %41 = load i32, i32* @FD_COMMAND_OKAY, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store i32 0, i32* %6, align 4
  br label %47

44:                                               ; preds = %39
  %45 = load i32, i32* @EIO, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %6, align 4
  br label %47

47:                                               ; preds = %44, %43
  %48 = load i32, i32* @FD_COMMAND_NONE, align 4
  store i32 %48, i32* @command_status, align 4
  %49 = load i32, i32* %6, align 4
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %47, %27
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @schedule_bh(void (...)*) #1

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @cancel_activity(...) #1

declare dso_local i32 @reset_fdc(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
