; ModuleID = '/home/carl/AnghaBench/linux/arch/openrisc/kernel/extr_sync-timer.c_synchronise_count_slave.c'
source_filename = "/home/carl/AnghaBench/linux/arch/openrisc/kernel/extr_sync-timer.c_synchronise_count_slave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NR_LOOPS = common dso_local global i32 0, align 4
@count_count_start = common dso_local global i32 0, align 4
@initcount = common dso_local global i32 0, align 4
@count_count_stop = common dso_local global i32 0, align 4
@COUNTON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @synchronise_count_slave(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %31, %1
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @NR_LOOPS, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %34

8:                                                ; preds = %4
  %9 = call i32 @atomic_inc(i32* @count_count_start)
  br label %10

10:                                               ; preds = %13, %8
  %11 = call i32 @atomic_read(i32* @count_count_start)
  %12 = icmp ne i32 %11, 2
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = call i32 (...) @mb()
  br label %10

15:                                               ; preds = %10
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @NR_LOOPS, align 4
  %18 = sub nsw i32 %17, 1
  %19 = icmp eq i32 %16, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load i32, i32* @initcount, align 4
  %22 = call i32 @openrisc_timer_set(i32 %21)
  br label %23

23:                                               ; preds = %20, %15
  %24 = call i32 @atomic_inc(i32* @count_count_stop)
  br label %25

25:                                               ; preds = %28, %23
  %26 = call i32 @atomic_read(i32* @count_count_stop)
  %27 = icmp ne i32 %26, 2
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = call i32 (...) @mb()
  br label %25

30:                                               ; preds = %25
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %3, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %3, align 4
  br label %4

34:                                               ; preds = %4
  %35 = load i32, i32* @COUNTON, align 4
  %36 = call i32 @openrisc_timer_set_next(i32 %35)
  ret void
}

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @openrisc_timer_set(i32) #1

declare dso_local i32 @openrisc_timer_set_next(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
