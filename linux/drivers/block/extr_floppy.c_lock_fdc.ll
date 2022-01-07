; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_floppy.c_lock_fdc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_floppy.c_lock_fdc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@usage_count = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Trying to lock fdc while usage count=0\0A\00", align 1
@fdc_wait = common dso_local global i32 0, align 4
@fdc_busy = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@FD_COMMAND_NONE = common dso_local global i32 0, align 4
@command_status = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"lock fdc\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @lock_fdc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lock_fdc(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = call i64 @atomic_read(i32* @usage_count)
  %5 = icmp eq i64 %4, 0
  %6 = zext i1 %5 to i32
  %7 = call i64 @WARN(i32 %6, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %27

10:                                               ; preds = %1
  %11 = load i32, i32* @fdc_wait, align 4
  %12 = call i32 @test_and_set_bit(i32 0, i32* @fdc_busy)
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i64 @wait_event_interruptible(i32 %11, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %10
  %19 = load i32, i32* @EINTR, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %27

21:                                               ; preds = %10
  %22 = load i32, i32* @FD_COMMAND_NONE, align 4
  store i32 %22, i32* @command_status, align 4
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @reschedule_timeout(i32 %23, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @set_fdc(i32 %25)
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %21, %18, %9
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i64 @WARN(i32, i8*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i64 @wait_event_interruptible(i32, i32) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @reschedule_timeout(i32, i8*) #1

declare dso_local i32 @set_fdc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
